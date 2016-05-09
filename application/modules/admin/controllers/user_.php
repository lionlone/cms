<?php defined('BASEPATH') OR exit('No direct script access allowed');

  class User_ extends MY_Controller {
    //public $data = array();
  	public function __construct(){
  		parent::__construct();
  	}

    public function index(){
      $this->listuser();
    }

    public function listuser(){
      $data['title'] = "Danh Sách Tài khoản";
      $data['main_module'] = "user/listuser";
      $data['data_modules'] = array();
      $this->load->view('main.layout.php', $data);
    }

    public function admin_group(){
      $data['title'] = "Danh Sách Tài khoản";
      $data['main_module'] = "user/admin_group";
      //$data['data_modules'] = array();
      $this->load->view('main.layout.php',$data);
    }

    public function listadmin(){
      $data['title'] = "Danh Sách Tài khoản";
      $data['main_module'] = "user/listadmin";
      $data['data_modules'] = array('email' => "nguyentrongtuan.st@gmail.com");
      $this->load->view('main.layout.php',$data);
    }

    /*public function loadviews($data = array()){
      $this->load->view('admin/main.layout.php',$data);
    }*/
  }