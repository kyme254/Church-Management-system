<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Event extends MX_Controller {
    


    function __construct() {
        parent::__construct();

        $logged_in = $this->session->userdata('logged_in');
        $user_position = $this->session->userdata('user_position');
        if (!$logged_in) {
            redirect('access/login', 'refresh');
        } elseif ($user_position !== "Admin") {
            redirect('dashboard/index', 'refresh');
        }

        $language = $this->session->userdata('lang');
        $this->lang->load('dashboard', $language);
    }

    /*     * ************************************* */
    /*     * ******* Index Of Event ************ */
    /*     * ************************************* */

    public function index() {
        $this->load->view('Dashboard/header');
        $this->load->view('Event/addevent');
        $this->load->view('Dashboard/footer');
    }

    /*     * ************************************* */
    /*     * *********** Add Event **************** */
    /*     * ************************************* */

    public function addevent() {
        $this->load->view('Dashboard/header');
        $this->load->view('Event/addevent');
        $this->load->view('Dashboard/footer');
    }

    /*     * ************************************* */
    /*     * ******* Add New Events ************ */
    /*     * ************************************* */

    public function addnewevent() {

        $errors = array();
        $success = array();
        $data = array();

        $this->form_validation->set_rules('eventtitle', 'Title', 'trim|required');
        $this->form_validation->set_rules('eventdate', 'Date', 'trim|required');
        $this->form_validation->set_rules('eventtime', 'Time', 'trim|required');
        $this->form_validation->set_rules('eventlocation', 'Location', 'trim|required');
        if ($this->form_validation->run() == FALSE) {
            $errors['errorFormValidation'] = validation_errors();
            echo json_encode($errors);
        } else {

            $data['eventtitle'] = $this->input->post('eventtitle');
            $data['eventdate'] = $this->input->post('eventdate');
            $data['eventtime'] = $this->input->post('eventtime');
            $data['eventlocation'] = $this->input->post('eventlocation');
            $data['eventdescription'] = $this->input->post('eventdescription');
            $data['cdate'] = date("j F Y");

            /*             * ****** Uploading Profile Images ****** */
            /*             * ************************************** */
            $imagePath = realpath(APPPATH . '../images/event');
            $profileimage = $_FILES['profileimage']['tmp_name'];
            if ($profileimage !== "") {
                $config['upload_path'] = $imagePath;
                $config['allowed_types'] = 'jpg|png|jpeg|gif';
                $config['file_name'] = date('Ymd_his_') . rand(10, 99) . rand(10, 99) . rand(10, 99);
                $this->load->library('upload', $config);
                if ($this->upload->do_upload('profileimage')) {
                    $uploaded_data = $this->upload->data();
                    $data['eventimage'] = $uploaded_data['file_name'];
                } else {
                    $data['eventimage'] = '';
                    $errors['profileimage_error'] = strip_tags($this->upload->display_errors());
                    echo json_encode($succcess);
                }

                $config['image_library'] = 'gd2';
                $config['source_image'] = $uploaded_data['full_path'];
                $config['new_image'] = $imagePath . '/crop';
                $config['quality'] = '100%';
                $config['maintain_ratio'] = FALSE;
                $config['width'] = round($this->input->post('width'));
                $config['height'] = round($this->input->post('height'));
                $config['x_axis'] = $this->input->post('x');
                $config['y_axis'] = $this->input->post('y');

                $this->image_lib->clear();
                $this->image_lib->initialize($config);
                $this->image_lib->crop();

                /*                 * ****** Resizing Event Banner ****** */
                /*                 * ************************************** */
                $config['source_image'] = $imagePath . '/crop/' . $uploaded_data['file_name'];
                $config['new_image'] = $imagePath . '/feature';
                $config['maintain_ratio'] = TRUE;
                $config['width'] = 500;
                $config['height'] = 300;

                $this->image_lib->clear();
                $this->image_lib->initialize($config);
                $this->image_lib->resize();

                /* Deleting Uploaded Image After Cropping and Resizing */
                /* Why Deleting because it's saving space */
                unlink($imagePath . '/crop/' . $uploaded_data['file_name']);
                unlink($uploaded_data['full_path']);
            }

            $inserted = $this->db->insert('event', $data);
            if ($inserted == TRUE) {
                $succcess['success'] = "Successfully Inserted";
                echo json_encode($succcess);
            } else {
                $errors['notsuccess'] = 'Opps! Something Wrong';
                echo json_encode($errors);
            }
        }
    }

    /*     * ************************************* */
    /*     * ******* View All Events ************ */
    /*     * ************************************* */

    public function allevents() {        
        $table = "event";
        $data['event'] = $this->getTotal($table);
        $this->load->view('Dashboard/header');
        $this->load->view('Event/allevents', $data);
        $this->load->view('Dashboard/footer');
    }

    /*     * ************************************* */
    /*     * ************* View Event ************* */
    /*     * ************************************* */

    public function view() {
        $data['individual'] = $this->getIndividual();
        $this->load->view('Dashboard/header');
        $this->load->view('Event/view', $data);
        $this->load->view('Dashboard/footer');
    }

    /*     * ************************************* */
    /*     * ************ Edit Event ************ */
    /*     * ************************************* */

    public function edit() {
        $data['individual'] = $this->getIndividual();
        $this->load->view('Dashboard/header');
        $this->load->view('Event/edit', $data);
        $this->load->view('Dashboard/footer');
    }

    /*     * ************************************* */
    /*     * ******* Update Events ************ */
    /*     * ************************************* */

    public function update() {

        $errors = array();
        $success = array();
        $data = array();
        $eventid = $this->input->post('eventid');
        $this->form_validation->set_rules('eventtitle', 'Title', 'trim|required');
        $this->form_validation->set_rules('eventdate', 'Date', 'trim|required');
        $this->form_validation->set_rules('eventtime', 'Time', 'trim|required');
        $this->form_validation->set_rules('eventlocation', 'Location', 'trim|required');
        if ($this->form_validation->run() == FALSE) {
            $errors['errorFormValidation'] = validation_errors();
            echo json_encode($errors);
        } else {

            $data['eventtitle'] = $this->input->post('eventtitle');
            $data['eventdate'] = $this->input->post('eventdate');
            $data['eventtime'] = $this->input->post('eventtime');
            $data['eventlocation'] = $this->input->post('eventlocation');
            $data['eventdescription'] = $this->input->post('eventdescription');
            $data['cdate'] = date("j F Y");

            /*             * ****** Uploading Profile Images ****** */
            /*             * ************************************** */
            $imagePath = realpath(APPPATH . '../images/event');
            $profileimage = $_FILES['profileimage']['tmp_name'];
            if ($profileimage !== "") {
                $config['upload_path'] = $imagePath;
                $config['allowed_types'] = 'jpg|png|jpeg|gif';
                $config['file_name'] = date('Ymd_his_') . rand(10, 99) . rand(10, 99) . rand(10, 99);
                $this->load->library('upload', $config);
                if ($this->upload->do_upload('profileimage')) {
                    $uploaded_data = $this->upload->data();
                    $data['eventimage'] = $uploaded_data['file_name'];
                } else {
                    $data['eventimage'] = '';
                    $errors['profileimage_error'] = strip_tags($this->upload->display_errors());
                    echo json_encode($succcess);
                }

                $config['image_library'] = 'gd2';
                $config['source_image'] = $uploaded_data['full_path'];
                $config['new_image'] = $imagePath . '/crop';
                $config['quality'] = '100%';
                $config['maintain_ratio'] = FALSE;
                $config['width'] = round($this->input->post('width'));
                $config['height'] = round($this->input->post('height'));
                $config['x_axis'] = $this->input->post('x');
                $config['y_axis'] = $this->input->post('y');

                $this->image_lib->clear();
                $this->image_lib->initialize($config);
                $this->image_lib->crop();

                /*                 * ****** Resizing Event Banner ****** */
                /*                 * ************************************** */
                $config['source_image'] = $imagePath . '/crop/' . $uploaded_data['file_name'];
                $config['new_image'] = $imagePath . '/feature';
                $config['maintain_ratio'] = TRUE;
                $config['width'] = 500;
                $config['height'] = 300;

                $this->image_lib->clear();
                $this->image_lib->initialize($config);
                $this->image_lib->resize();

                /* Deleting Uploaded Image After Cropping and Resizing */
                /* Why Deleting because it's saving space */
                unlink($imagePath . '/crop/' . $uploaded_data['file_name']);
                unlink($uploaded_data['full_path']);
            }

            $this->db->where('eventid', $eventid);
            $updated = $this->db->update('event', $data);
            if ($updated == TRUE) {
                $succcess['success'] = "Successfully Updated";
                echo json_encode($succcess);
            } else {
                $errors['notsuccess'] = 'Opps! Something Wrong';
                echo json_encode($errors);
            }
        }
    }

    /*     * ************************************* */
    /*     * ******* Delete Individual Event ******* */
    /*     * ************************************* */

    public function delete($eventid) {
        $this->db->where('eventid', $eventid);
        $deleted = $this->db->delete('event');
        if ($deleted == TRUE) {
            $this->session->set_flashdata('success', 'Successfully Deleted');
            redirect('dashboard/event/allevents', 'refresh');
        } else {
            $this->session->set_flashdata('notsuccess', 'Opps! Something Went Wrong');
            redirect('dashboard/event/allevents', 'refresh');
        }
    }

    /*     * ************************************* */
    /*     * ******* Get Individual Event ******* */
    /*     * ************************************* */

    public function getIndividual() {
        $eventid = $this->uri->segment(4);
        $query = $this->db->get_where('event', array('eventid' => $eventid));
        return $query->result();
    }

    /*     * ************************************* */
    /*     * ******* Get Pagination Events ************ */
    /*     * ************************************* */

    public function getPagiData($limit, $start) {
        $this->db->order_by("eventid", "desc");
        $this->db->limit($limit, $start);
        $query = $this->db->get('event');
        return $query->result();
    }
    
    
    /*     * ************************************* */
    /*     * ******* Get Pagination Events ************ */
    /*     * ************************************* */
    public function getTotal($table) {        
        $query = $this->db->get($table);
        return $query->result();
    }

}
