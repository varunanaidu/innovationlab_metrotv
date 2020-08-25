<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Knowledge extends MY_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('Knowledge_model');
	}

	public function index()
	{
		if (!$this->hasLogin()) {
			redirect('home/login');
		}

		$this->fragment['title'] = 'Knowledge';
		$this->fragment['js']		= base_url('assets/js/pages/knowledge.js');
		$this->fragment['pagename'] = 'pages/view-knowledge';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function view_knowledge()
	{
		$data = array();
		$res = $this->Knowledge_model->get_applicant();
		$temp = $this->db->last_query();
		// echo $temp;die;

		foreach ($res as $row) {
			$col = array();
			$col[] = $row->knowledge_subject;
			$col[] = '<button class="btn btn-sm btn-warning btn-edit" title="Edit" data-id="'.$row->knowledge_id.'>"><i class="fa fa-pencil"></i></button>&nbsp;<button class="btn btn-sm btn-danger btn-delete" title="Delete" data-id="'.$row->knowledge_id.'>" data-name="'.$row->knowledge_subject.'"><i class="fa fa-trash"></i></button>';
			$data[] = $col;
		}
		$output = array(
			"draw" 				=> $_POST['draw'],
			"recordsTotal" 		=> $this->Knowledge_model->get_applicant_count_all(),
			"recordsFiltered" 	=> $this->Knowledge_model->get_applicant_count_filtered(),
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
		$check = $this->Knowledge_model->find($key);
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
		$knowledge_subject 	= $this->input->post('knowledge_subject');
		$knowledge_desc 	= $this->input->post('knowledge_desc');
		$type 				= $this->input->post('type');
		$id 				= $this->input->post('id');

		$type = ($type == 'update') ? 'update' : 'new';

		$data = [
			'knowledge_subject' 	=> $knowledge_subject,
			'knowledge_desc'		=> $knowledge_desc,
			'edited_date'			=> date('Y-m-d H:i:s'),
			'edited_by'				=> $this->log_id, 
		];

		
		if (isset($_FILES['knowledge_photo']['name'])) {
			$file = $_FILES['knowledge_photo']['name'];
			$exp = explode(".", $file);
			$end = strtolower(end($exp));

			$fileUpload = md5($file.date("YmdHis")).".".$end;
			$knowledge_photo = $fileUpload;
			move_uploaded_file($_FILES['knowledge_photo']['tmp_name'], "assets/images/knowledge/".$fileUpload);
			$data['knowledge_photo'] = $knowledge_photo;
		}

		if ($type == 'new') {
			$data['created_date'] = date('Y-m-d H:i:s');
			$data['created_by'] = $this->log_id;
		}

		if ($type == 'update') {
			$this->sitemodel->update("tab_knowledge", $data, ["knowledge_id"=>$id]);
		}else{
			$result = $this->sitemodel->insert("tab_knowledge", $data);
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
		$check = $this->Knowledge_model->find($key);
		if (!$check) {$this->response['msg'] = "No data found.";echo json_encode($this->response);exit;}
		foreach ($check as $row) {
			$this->load->helper('file');
			if ($row->knowledge_photo != '') {
				$link = 'assets/images/knowledge/' . $row->knowledge_photo;
				unlink( $link );
			}
		}
		// Delete 
		$this->sitemodel->delete("tab_knowledge", ["knowledge_id"=>$key]);
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully remove data.";
		echo json_encode($this->response);
		exit;
	}
	
}
