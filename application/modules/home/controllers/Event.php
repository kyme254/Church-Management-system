<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Event extends MX_Controller {
    

    

    function __construct() {
        parent::__construct();
        
    }
    
    /*****************************/
    /***** Event Index  ********/
    /*****************************/
    public function index(){
        $baselink = "home/event/index";
        $database = "event";
        $perpage = 6;
        $start = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $limit = iniPagination($baselink, $database, $perpage);	
        $data['event'] = $this->getPagiData($limit, $start);  
        $data['pagination'] = $this->pagination->create_links();
        $data['basicinfo'] = $this->getBasicInfo();   
        $this->load->view('header');
        $this->load->view('event/event', $data);
        $this->load->view('footer', $data);
    }
    
    /*****************************/
    /***** Event View  ********/
    /*****************************/
    public function view(){        
        $data['basicinfo'] = $this->getBasicInfo();        
        $data['event'] = $this->getIndividual();
        $this->load->view('header');
        $this->load->view('event/view', $data);
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
    /***** Get Event Info ********/
    /*****************************/
    public function getEvent(){ 
        $query = $this->db->get('event');
        return $query->result();
    }
    
    /*****************************/
    /***** Get Event Individual ********/
    /*****************************/
    public function getIndividual(){ 
        $eventid = $this->uri->segment(4);
        $query = $this->db->get_where('event', array('eventid' => $eventid));
        return $query->result();
    }
    
    /****************************************/
    /********* Get Pagination Event *************/
    /****************************************/
    public function getPagiData($limit, $start){
            $this->db->limit($limit, $start);
            $query = $this->db->get('event');
            return $query->result();
    }
        
}