<?php defined('BASEPATH') OR exit('No direct script access allowed');
class User extends MY_Controller {
    public function index(){
        $this->listuser();
    }

    public function listuser($data_modules = array()){
        $sql = "SELECT `email`, `username`, `first_name`, `last_name` FROM cms_users";
        $query = $this->db->query($sql);
        $data_modules['listuser'] = $query->result_array();
    	$this->load->view('admin/listuser.tpl', $data_modules);
    }

    public function admin_groups($data_modules = array()){
        $sql = "SELECT * FROM `cms_groups_users` ORDER BY `group_id` ASC";
        $query = $this->db->query($sql);
        $data_modules['admin_groups'] = $query->result_array();
    	$this->load->view('admin/admin_groups.tpl', $data_modules);
    }

    public function admin_groups_edit($data_modules = array()){
        $sql = "SELECT * FROM `cms_groups_users` ORDER BY `group_id` ASC";
        $query = $this->db->query($sql);
        $data_modules['admin_groups'] = $query->result_array();
        $this->load->view('admin/admin_groups_edit.tpl', $data_modules);
    }

    public function listadmin($data_modules = array()){
    	$this->load->view('admin/listadmin.tpl', $data_modules);
    }
}