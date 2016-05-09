<?php defined('BASEPATH') OR exit('No direct script access allowed');
class User extends MY_Controller {
    public function index(){
        $this->listuser();
    }

    public function listuser(){
        $sql = "SELECT `email`, `username`, `first_name`, `last_name` FROM cms_users";
        $query = $this->db->query($sql);
        $data_modules['listuser'] = $query->result_array();
        /*echo '<pre>';
        print_r($data_modules);*/
    	$this->load->view('admin/listuser.tpl', $data_modules);
    }

    public function admin_group($data_modules = array()){
    	$this->load->view('admin/admin_group.tpl', $data_modules);
    }

    public function listadmin($data_modules = array()){
    	$this->load->view('admin/listadmin.tpl', $data_modules);
    }
}