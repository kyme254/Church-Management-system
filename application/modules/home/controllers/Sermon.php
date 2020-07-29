<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Sermon extends MX_Controller {
    

    

    function __construct() {
        parent::__construct();
        
    }
    
    /*****************************/
    /***** Sermon Index  ********/
    /*****************************/
    public function index(){
        $baselink = "home/sermon/index";
        $database = "sermon";
        $perpage = 10;
        $start = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $limit = iniPagination($baselink, $database, $perpage);	
        $data['sermon'] = $this->getPagiData($limit, $start);  
        $data['pagination'] = $this->pagination->create_links();
        $data['basicinfo'] = $this->getBasicInfo();   
        $this->load->view('header');
        $this->load->view('sermon/sermon', $data);
        $this->load->view('footer', $data);
    }
    
    /*****************************/
    /***** Sermon View  ********/
    /*****************************/
    public function view(){        
        $data['basicinfo'] = $this->getBasicInfo();        
        $data['sermon'] = $this->getIndividual();
        $this->load->view('header');
        $this->load->view('sermon/view', $data);
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
    /***** Get Sermon Info ********/
    /*****************************/
    public function getSermon(){ 
        $query = $this->db->get('sermon');
        return $query->result();
    }
    
    /*****************************/
    /***** Get Sermon Individual ********/
    /*****************************/
    public function getIndividual(){ 
        $sermonid = $this->uri->segment(4);
        $query = $this->db->get_where('sermon', array('sermonid' => $sermonid));
        return $query->result();
    }
    
    /****************************************/
    /********* Get Pagination Sermon *************/
    /****************************************/
    public function getPagiData($limit, $start){
            $this->db->limit($limit, $start);
            $query = $this->db->get('sermon');
            return $query->result();
    }
        
}