	<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Navigation extends MY_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('Nav_model');
	}

	public function index()
	{
		if (!$this->hasLogin()) {
			redirect('home/login');
		}

		$this->fragment['title'] = 'Navigation';
		$this->fragment['js']		= base_url('assets/js/pages/navigation.js');
		$this->fragment['pagename'] = 'pages/view-nav';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function view_nav()
	{
		$data = array();
		$res = $this->Nav_model->get_applicant();
		$temp = $this->db->last_query();
		// echo $temp;die;

		foreach ($res as $row) {
			$col = array();
			$col[] = $row->nav_name;
			$col[] = $row->nav_ctr;
			$col[] = '<button class="btn btn-sm btn-warning btn-edit" title="Edit" data-id="'.$row->nav_id.'>"><i class="fa fa-pencil"></i></button>&nbsp;<button class="btn btn-sm btn-danger btn-delete" title="Delete" data-id="'.$row->nav_id.'>" data-name="'.$row->nav_name.'"><i class="fa fa-trash"></i></button>';
			$data[] = $col;
		}
		$output = array(
			"draw" 				=> $_POST['draw'],
			"recordsTotal" 		=> $this->Nav_model->get_applicant_count_all(),
			"recordsFiltered" 	=> $this->Nav_model->get_applicant_count_filtered(),
			"data" 				=> $data,
			"q"					=> $temp //temp for tracing db query

		);
		echo json_encode($output);
		exit;
	}

	public function find(){
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
		$check = $this->Nav_model->find($key);
		if (!$check) {$this->response['msg'] = "No data found.";echo json_encode($this->response);exit;}
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = $check;
		echo json_encode($this->response);
		exit;
	}

	public function save()
	{
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		// PARAMS
		$nav_name 	= $this->input->post('nav_name');
		$nav_ctr 	= $this->input->post('nav_ctr');
		$nav_desc 	= $this->input->post('nav_desc');
		$nav_thumb	= '';
		$is_admin	= ( $this->input->post('is_admin') == 'NO' ? 0 : 1 );
		$type 		= $this->input->post('type');
		$id 		= $this->input->post('id');

		$type = ($type == 'update') ? 'update' : 'new';

		$data = [
			'nav_name' 		=> $nav_name,
			'nav_ctr'		=> $nav_ctr,
			'nav_desc'		=> $nav_desc,
			'is_admin'		=> $is_admin,
			'edited_date'	=> date('Y-m-d H:i:s'),
			'edited_by'		=> $this->log_id, 
		];

		if ( isset($_FILES['nav_thumb']['name']) ) {
			$file = $_FILES['nav_thumb']['name'];
			$exp = explode(".", $file);
			$end = strtolower(end($exp));

			$fileUpload = md5($file.date("YmdHis")).".".$end;
			$nav_thumb = $fileUpload;

			$this->compress_image($_FILES['nav_thumb']['tmp_name'], "assets/images/navigation/".$fileUpload, 75);
			$data['nav_thumb'] = $nav_thumb;
		}

		if ($type == 'new') {
			$data['created_date'] = date('Y-m-d H:i:s');
			$data['created_by'] = $this->log_id;
		}

		if ($type == 'update') {
			$this->sitemodel->update("tab_nav", $data, ["nav_id"=>$id]);
		}else{
			$result = $this->sitemodel->insert("tab_nav", $data);
		}
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = ($type == "update") ? "Successfully modified data." : "Successfully insert data.";
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
		$check = $this->Nav_model->find($key);
		if (!$check) {$this->response['msg'] = "No data found.";echo json_encode($this->response);exit;}
		foreach ($check as $row) {
			$this->load->helper('file');
			if ($row->nav_thumb != '') {
				$link = 'assets/images/navigation/' . $row->nav_thumb;
				unlink( $link );
			}
		}
		// Delete 
		$this->sitemodel->delete("tab_nav", ["nav_id"=>$key]);
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully remove data.";
		echo json_encode($this->response);
		exit;
	}
}