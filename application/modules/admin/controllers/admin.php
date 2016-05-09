<?php defined('BASEPATH') OR exit('No direct script access allowed');

  class Admin extends MY_Controller {
  	public $data = array();

  	public function __construct(){
  		parent::__construct();
  	}

    public function index(){
      $data['title'] = "Trang chủ";
      $this->load->view('main.layout.php',$data);
    }

    public function loadviews($data = array()){
      $this->load->view('admin/main.layout.php',$data);
    }
  }