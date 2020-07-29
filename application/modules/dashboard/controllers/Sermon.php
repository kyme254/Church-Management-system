<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Sermon extends MX_Controller {
    


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
    /*     * ******* Index Of Sermon ************ */
    /*     * ************************************* */

    public function index() {
        $this->load->view('Dashboard/header');
        $this->load->view('Sermon/addsermon');
        $this->load->view('Dashboard/footer');
    }

    /*     * ************************************* */
    /*     * *********** Add Sermon **************** */
    /*     * ************************************* */

    public function addsermon() {
        $this->load->view('Dashboard/header');
        $this->load->view('Sermon/addsermon');
        $this->load->view('Dashboard/footer');
    }

    /*     * ************************************* */
    /*     * ******* Add New Sermons ************ */
    /*     * ************************************* */

    public function addnewsermon() {

        $errors = array();
        $success = array();
        $data = array();

        $this->form_validation->set_rules('sermontitle', 'Title', 'trim|required');
        $this->form_validation->set_rules('sermondate', 'Date', 'trim|required');
        $this->form_validation->set_rules('sermontime', 'Time', 'trim|required');
        $this->form_validation->set_rules('sermonauthor', 'Author/Writer/Speaker', 'trim|required');
        if ($this->form_validation->run() == FALSE) {
            $errors['errorFormValidation'] = validation_errors();
            echo json_encode($errors);
        } else {

            $data['sermontitle'] = $this->input->post('sermontitle');
            $data['sermondate'] = $this->input->post('sermondate');
            $data['sermontime'] = $this->input->post('sermontime');
            $data['sermonauthor'] = $this->input->post('sermonauthor');
            $data['sermonyoutube'] = $this->input->post('sermonyoutube');
            $data['sermonsoundcloud'] = $this->input->post('sermonsoundcloud');
            $data['sermonlocation'] = $this->input->post('sermonlocation');
            $data['sermondescription'] = $this->input->post('sermondescription');
            $data['cdate'] = date("j F Y");

            /*             * ****** Uploading Profile Images ****** */
            /*             * ************************************** */
            $imagePath = realpath(APPPATH . '../images/sermon');
            $profileimage = $_FILES['profileimage']['tmp_name'];
            if ($profileimage !== "") {
                $config['upload_path'] = $imagePath;
                $config['allowed_types'] = 'jpg|png|jpeg|gif';
                $config['file_name'] = date('Ymd_his_') . rand(10, 99) . rand(10, 99) . rand(10, 99);
                $this->load->library('upload', $config);
                if ($this->upload->do_upload('profileimage')) {
                    $uploaded_data = $this->upload->data();
                    $data['sermonbanner'] = $uploaded_data['file_name'];
                } else {
                    $data['sermonbanner'] = '';
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

                /*                 * ****** Resizing Sermon Banner ****** */
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

            $inserted = $this->db->insert('sermon', $data);
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
    /*     * ******* View All Sermons ************ */
    /*     * ************************************* */

    public function allsermons() {        
        $table = "sermon";
        $data['sermon'] = $this->getTotal($table);
        $this->load->view('Dashboard/header');
        $this->load->view('Sermon/allsermons', $data);
        $this->load->view('Dashboard/footer');
    }

    /*     * ************************************* */
    /*     * ************* View Sermon ************* */
    /*     * ************************************* */

    public function view() {
        $data['individual'] = $this->getIndividual();
        $this->load->view('Dashboard/header');
        $this->load->view('Sermon/view', $data);
        $this->load->view('Dashboard/footer');
    }

    /*     * ************************************* */
    /*     * ************ Edit Sermon ************ */
    /*     * ************************************* */

    public function edit() {
        $data['individual'] = $this->getIndividual();
        $this->load->view('Dashboard/header');
        $this->load->view('Sermon/edit', $data);
        $this->load->view('Dashboard/footer');
    }

    /*     * ************************************* */
    /*     * ******* Update Sermons ************ */
    /*     * ************************************* */

    public function update() {

        $errors = array();
        $success = array();
        $data = array();
        $sermonid = $this->input->post('sermonid');
        $this->form_validation->set_rules('sermontitle', 'Title', 'trim|required');
        $this->form_validation->set_rules('sermondate', 'Date', 'trim|required');
        $this->form_validation->set_rules('sermontime', 'Time', 'trim|required');
        $this->form_validation->set_rules('sermonauthor', 'Author/Writer/Speaker', 'trim|required');
        if ($this->form_validation->run() == FALSE) {
            $errors['errorFormValidation'] = validation_errors();
            echo json_encode($errors);
        } else {

            $data['sermontitle'] = $this->input->post('sermontitle');
            $data['sermondate'] = $this->input->post('sermondate');
            $data['sermontime'] = $this->input->post('sermontime');
            $data['sermonauthor'] = $this->input->post('sermonauthor');
            $data['sermonyoutube'] = $this->input->post('sermonyoutube');
            $data['sermonsoundcloud'] = $this->input->post('sermonsoundcloud');
            $data['sermonlocation'] = $this->input->post('sermonlocation');
            $data['sermondescription'] = $this->input->post('sermondescription');
            $data['cdate'] = date("j F Y");

            /*             * ****** Uploading Profile Images ****** */
            /*             * ************************************** */
            $imagePath = realpath(APPPATH . '../images/sermon');
            $profileimage = $_FILES['profileimage']['tmp_name'];
            if ($profileimage !== "") {
                $config['upload_path'] = $imagePath;
                $config['allowed_types'] = 'jpg|png|jpeg|gif';
                $config['file_name'] = date('Ymd_his_') . rand(10, 99) . rand(10, 99) . rand(10, 99);
                $this->load->library('upload', $config);
                if ($this->upload->do_upload('profileimage')) {
                    $uploaded_data = $this->upload->data();
                    $data['sermonbanner'] = $uploaded_data['file_name'];
                } else {
                    $data['sermonbanner'] = '';
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

                /*                 * ****** Resizing Sermon Banner ****** */
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

            $this->db->where('sermonid', $sermonid);
            $updated = $this->db->update('sermon', $data);
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
    /*     * ******* Delete Individual Sermon ******* */
    /*     * ************************************* */

    public function delete($sermonid) {
        $this->db->where('sermonid', $sermonid);
        $deleted = $this->db->delete('sermon');
        if ($deleted == TRUE) {
            $this->session->set_flashdata('success', 'Successfully Deleted');
            redirect('dashboard/sermon/allsermons', 'refresh');
        } else {
            $this->session->set_flashdata('notsuccess', 'Opps! Something Went Wrong');
            redirect('dashboard/sermon/allsermons', 'refresh');
        }
    }

    /*     * ************************************* */
    /*     * ******* Get Individual Sermon ******* */
    /*     * ************************************* */

    public function getIndividual() {
        $sermonid = $this->uri->segment(4);
        $query = $this->db->get_where('sermon', array('sermonid' => $sermonid));
        return $query->result();
    }

    /*     * ************************************* */
    /*     * ******* Get Pagination Sermons ************ */
    /*     * ************************************* */

    public function getPagiData($limit, $start) {
        $this->db->order_by("sermonid", "desc");
        $this->db->limit($limit, $start);
        $query = $this->db->get('sermon');
        return $query->result();
    }
    
    
    /*     * ************************************* */
    /*     * ******* Get Pagination Sermons ************ */
    /*     * ************************************* */
    public function getTotal($table) {        
        $query = $this->db->get($table);
        return $query->result();
    }

}
