<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends MX_Controller {
   

    function __construct() {
        parent::__construct();

        $this->load->library('hybridauth');
        $logged_in = $this->session->userdata('logged_in');
        if ($logged_in) {
            redirect('dashboard/dashboard', 'refresh');
        }
    }

    public function index() {
        $data['siteinfo'] = $this->getBasicInfo();
        $this->load->view('header', $data);
        $this->load->view('login', $data);
        $this->load->view('footer', $data);
    }

    public function getBasicInfo() {
        $query = $this->db->get('websitebasic');
        return $query->result();
    }

    public function checking() {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'required');

        if ($this->form_validation->run()) {
            $email = $this->input->post('email');
            $password = md5($this->input->post('password'));

            $this->db->where('email', $email);
            $this->db->where('password', $password);

            $query = $this->db->get('users');

            if ($query->num_rows() > 0) {

                foreach ($query->result() as $rows) {
                    $newdata = array(
                        'user_id' => $rows->userid,
                        'user_email' => $rows->email,
                        'user_position' => $rows->position,
                        'logged_in' => TRUE,
                    );

                    $this->session->set_userdata($newdata);
                }

                if ($this->session->userdata('logged_in')) {
                    redirect('dashboard/dashboard', 'refresh');
                }
            } else {

                $session_msg = array();
                $session_msg['login_error'] = "Email Or Password is not valid";
                $this->session->set_flashdata($session_msg);

                $data['siteinfo'] = $this->getBasicInfo();
                $this->load->view('header', $data);
                $this->load->view('login', $data);
                $this->load->view('footer', $data);
            }
        } else {

            $session_msg = array();
            $session_msg['register_error'] = validation_errors();
            $this->session->set_userdata($session_msg);

            $data['siteinfo'] = $this->getBasicInfo();
            $this->load->view('header', $data);
            $this->load->view('login', $data);
            $this->load->view('footer', $data);
        }
    }

    public function media($provider_id) {
        $params = array(
            'hauth_return_to' => site_url("access/login/media/{$provider_id}"),
        );
        if (isset($_REQUEST['openid_identifier'])) {
            $params['openid_identifier'] = $_REQUEST['openid_identifier'];
        }
        try {
            $adapter = $this->hybridauth->HA->authenticate($provider_id, $params);
            $profile = $adapter->getUserProfile();
            $media = $this->uri->segment(4);
            if ($media == "Facebook") {
                $accessKey = $profile->email;
            } elseif ($media == "Google") {
                $accessKey = $profile->email;
            } elseif ($media == "Twitter") {
                $accessKey = $profile->identifier;
            }

            if (!empty($accessKey)) {
                
                if ($media == "Facebook") {
                    $this->db->where('email', $accessKey);
                } elseif ($media == "Google") {
                    $this->db->where('email', $accessKey);
                } elseif ($media == "Twitter") {
                    $this->db->where('mediaIdentifier', $accessKey);
                }
                
                $query = $this->db->get('users');
                if ($query->num_rows() > 0) {
                    foreach ($query->result() as $rows) {
                        $newdata = array(
                            'user_id' => $rows->userid,
                            'user_email' => $rows->email,
                            'user_position' => $rows->position,
                            'logged_in' => TRUE,
                        );
                        $this->session->set_userdata($newdata);
                    }
                    if ($this->session->userdata('logged_in')) {
                        redirect('dashboard', 'refresh');
                    }
                } else {

                    $session_msg = array();
                    $session_msg['login_error'] = "No Accound Found, Please Signup First With This Social Media";
                    $this->session->set_flashdata($session_msg);

                    $data['siteinfo'] = $this->getBasicInfo();
                    $this->load->view('header', $data);
                    $this->load->view('login', $data);
                    $this->load->view('footer', $data);
                }
            } else {

                $session_msg = array();
                $session_msg['login_error'] = "Sorry! Something Went Wrong, Please Try Another Media";
                $this->session->set_flashdata($session_msg);

                $data['siteinfo'] = $this->getBasicInfo();
                $this->load->view('header', $data);
                $this->load->view('login', $data);
                $this->load->view('footer', $data);
            }
        } catch (Exception $e) {
            show_error($e->getMessage());
        }
    }

    /**
     * Handle the OpenID and OAuth endpoint
     * 	http://localhost/cms/access/login/endpoint?hauth_done=Twitter
     */
    public function endpoint() {
        $this->hybridauth->process();
    }

}
