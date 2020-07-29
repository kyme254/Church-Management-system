<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Member extends MX_Controller {
    

    

    function __construct() {
        parent::__construct();
        
    }
    
    /*****************************/
    /***** Member Index  ********/
    /*****************************/
    public function index(){
        $baselink = "home/member/index";
        $database = "member";
        $perpage = 12;
        $start = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $limit = iniPagination($baselink, $database, $perpage);	
        $data['member'] = $this->getPagiData($limit, $start);  
        $data['pagination'] = $this->pagination->create_links();
        $data['basicinfo'] = $this->getBasicInfo();  
        $this->load->view('header');
        $this->load->view('member/member', $data);
        $this->load->view('footer', $data);
    }
    
    /*****************************/
    /***** Member View  ********/
    /*****************************/
    public function view(){
        $data['basicinfo'] = $this->getBasicInfo();        
        $data['member'] = $this->getIndividual();
        $this->load->view('header');
        $this->load->view('member/view', $data);
        $this->load->view('footer', $data);
    }
    
    /*****************************/
    /***** Get Basic Info ********/
    /*****************************/
    public function getBasicInfo(){
        $query = $this->db->get('websitebasic');
        return $query->result();
    }
    
    /*****************************/
    /***** Get Member Info ********/
    /*****************************/
    public function getMember(){ 
        $query = $this->db->get('member');
        return $query->result();
    }
    
    /*****************************/
    /***** Get Commitee Individual ********/
    /*****************************/
    public function getIndividual(){ 
        $memberid = $this->uri->segment(4);
        $query = $this->db->get_where('member', array('memberid' => $memberid));
        return $query->result();
    }
    
    /****************************************/
    /********* Get Pagination Member *************/
    /****************************************/
    public function getPagiData($limit, $start){
            $this->db->limit($limit, $start);
            $query = $this->db->get('member');
            return $query->result();
    }
}