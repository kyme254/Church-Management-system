<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Logout extends MX_Controller {
    

    
	
	function __construct() {
		parent::__construct();
		
		$logged_in = $this->session->userdata('logged_in');			
		if(!$logged_in){
			redirect('access/login', 'refresh');
		}
		
	}
	
	public function index(){
	
		$this->session->unset_userdata('user_id');
		$this->session->unset_userdata('user_email');
		$this->session->unset_userdata('user_position');
		$this->session->unset_userdata('logged_in', FALSE);
		$this->session->sess_destroy();
		
		$session_msg = array();
		$session_msg['logout_msg'] = 'You are successfully logout';
		//$this->session->set_userdata($session_msg);
		$this->session->set_flashdata($session_msg);
                $data['siteinfo'] = $this->getBasicInfo();
		$this->load->view('header', $data);
		$this->load->view('login', $data);
		$this->load->view('footer', $data);
		
	}
        
        /*****************************/
        /***** Get Basic Info ********/
        /*****************************/
        public function getBasicInfo(){
            $query = $this->db->get('websitebasic');
            return $query->result();
        }
        
	
}