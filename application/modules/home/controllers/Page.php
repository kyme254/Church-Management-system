<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Page extends MX_Controller {
    

    

    function __construct() {
        parent::__construct();
        
    }
    
    /*****************************/
    /***** Page Index  ********/
    /*****************************/
    public function index(){        
        $data['basicinfo'] = $this->getBasicInfo();   
        $data['page'] = $this->getPage();   
        $this->load->view('header');
        $this->load->view('page/view', $data);
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
    /***** Get Page Info ********/
    /*****************************/
    public function getPage(){ 
        $pagekey = $this->uri->segment(3);
        if(is_numeric($pagekey)){ 
            $this->db->where('pageid', $pagekey);
            $query = $this->db->get('page');
        }else{
            $this->db->where('pageslug', $pagekey);
            $query = $this->db->get('page');
        }
        
        return $query->result();
    }
    
    
}