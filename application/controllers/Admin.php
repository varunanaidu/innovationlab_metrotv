<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends MY_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_model');
	}

	public function index()
	{
		if (!$this->hasLogin()) {
			redirect('home/login');
		}
		$this->fragment['data_user'] = $this->sitemodel->view('vw_user', '*', ['user_auth'=>0]);
		$this->fragment['title'] = 'Admin';
		$this->fragment['js']		= base_url('assets/js/pages/admin.js');
		$this->fragment['pagename'] = 'pages/view-admin';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function view_admin()
	{
		$data = array();
		$res = $this->Admin_model->get_applicant();
		$temp = $this->db->last_query();
		// echo $temp;die;

		foreach ($res as $row) {
			$col = array();
			$col[] = $row->user_fname;
			$col[] = '<button class="btn btn-sm btn-danger btn-delete" title="Remove from admin" data-id="'.$row->user_id.'>" data-name="'.$row->user_fname.'"><i class="fa fa-trash"></i></button>';
			$data[] = $col;
		}
		$output = array(
			"draw" 				=> $_POST['draw'],
			"recordsTotal" 		=> $this->Admin_model->get_applicant_count_all(),
			"recordsFiltered" 	=> $this->Admin_model->get_applicant_count_filtered(),
			"data" 				=> $data,
			"q"					=> $temp //temp for tracing db query

		);
		echo json_encode($output);
		exit;
	}

	public function save()
	{
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		// PARAMS
		$user_id 	= $this->input->post('user_id');

		$data = [
			'user_auth' => 1
		];

		$this->sitemodel->update("tab_user", $data, ["user_id"=>$user_id]);
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully set admin";
		echo json_encode($this->response);
		exit;

	}

	public function delete(){
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		/*** Params ***/
		/*** Required Area ***/
		$key = $this->input->post("key");
		/*** Optional Area ***/
		/*** Validate Area ***/
		if ( empty($key) ){$this->response['msg'] = "Invalid parameter.";echo json_encode($this->response);exit;}
		/*** Accessing DB Area ***/
		$check = $this->Admin_model->find($key);
		if (!$check) {$this->response['msg'] = "No data found.";echo json_encode($this->response);exit;}
		
		$data = [
			'user_auth' => 0
		];

		$this->sitemodel->update("tab_user", $data, ["user_id"=>$key]);
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully remove admin.";
		echo json_encode($this->response);
		exit;
	}
	
}
