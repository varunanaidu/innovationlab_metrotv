<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Idea extends MY_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('Idea_model');
	}

	public function index()
	{
		if (!$this->hasLogin()) {
			redirect('idea/add');
		}
		$this->fragment['data_idea'] = $this->sitemodel->view('vw_idea', '*', NULL, NULL, 'created_date DESC');

		$this->fragment['css'] = base_url('assets/design/css/table/main.css');
		$this->fragment['js'] = base_url('assets/js/pages/idea.js');
		$this->fragment['pagename'] = 'pages/view-idea';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function add()
	{

		if ( $this->input->get('i') ) {
			$this->fragment['data_challenge'] = $this->sitemodel->view('vw_challenge', '*', ['challenge_id'=> $this->input->get('i')]);
		}

		// $this->fragment['js'] = base_url('assets/js/pages/add_idea.js');
		$this->fragment['js2'] = [ base_url('assets/js/rangeslider.js'), base_url('assets/js/pages/add_idea.js')];
		$this->fragment['pagename'] = 'pages/view-add-idea';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function thanks($idea_id)
	{
		if (!$this->hasLogin()) {
			$this->fragment['next_url'] = base_url('home/login');
		}else{
			$this->fragment['next_url'] = base_url('idea');
		}
		$this->fragment['idea_id'] = $idea_id;
		$this->fragment['pagename'] = 'pages/view-applause';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function details($idea_id)
	{
		$q = $this->sitemodel->view('vw_idea', '*', ['idea_id'=>$idea_id]);
		$this->fragment['data_idea'] = $q;
		$this->fragment['data_post'] = $this->sitemodel->view('vw_post', '*', ['idea_id'=>$idea_id, 'post_type'=> 0], NULL, 'created_date DESC');
		$this->fragment['js'] = base_url('assets/js/pages/idea.js');
		$this->fragment['pagename']	= 'pages/view-detail-idea';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function find()
	{
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		/*** Params ***/
		/*** Required Area ***/
		$key = $this->input->post("key");
		/*** Optional Area ***/
		/*** Accessing DB Area ***/
		$check = $this->Idea_model->find($key);
		if (!$check) {$this->response['msg'] = "No data found.";echo json_encode($this->response);exit;}
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = $check;
		echo json_encode($this->response);
		exit;
	}

	public function get_idea()
	{
		$data = [];
		$q = $this->sitemodel->view('vw_idea', '*');
		if (!$q) {$this->response['msg'] = "No data found.";echo json_encode($this->response);exit;}
		foreach ($q as $row) {
			$subdata = array();
			$subdata['idea_id'] = $row->idea_id;
			$subdata['idea_subject'] = $row->idea_subject;
			$subdata['created_name'] = ( is_null($row->created_name) ? 'Guest' : $row->created_name );
			$subdata['idea_views'] = $row->idea_views;

			$q2 = $this->sitemodel->view('vw_post', '*', ['idea_id'=>$row->idea_id, 'post_type'=>0]);
			if ($q2) {
				$subdata['total_replies'] = sprintf("%02d", sizeof($q2));
			}else{
				$subdata['total_replies'] = 0;
			}

			$q3 = $this->sitemodel->view('vw_last_post', '*', ['idea_id'=>$row->idea_id]);
			if ($q3) {
				foreach ($q3 as $row3) {
					$subdata['last_post'] = ( is_null($row3->created_post_name) ? 'Guest' : $row3->created_post_name );
				}
			}else{
				$subdata['last_post'] = 'No Post';
			}
			$data[] = $subdata;
		}
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = $data;
		echo json_encode($this->response);
		exit;
	}

	public function view_idea()
	{
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		/*** Params ***/
		/*** Required Area ***/
		$idea_id = $this->input->post("idea_id");
		$q = $this->sitemodel->view('vw_idea', '*', ['idea_id'=>$idea_id]);
		if ($q) {
			foreach ($q as $row) {
				if ($row->created_by != $this->log_id) {
					$data = [
						'idea_views' => $row->idea_views + 1,
					];
					$this->sitemodel->update('tab_idea', $data, ['idea_id'=>$idea_id]);
				}
			}
		}

		/*** Result Area ***/
		$this->response['url'] = base_url('idea/details/') . $idea_id;
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully insert data.";
		echo json_encode($this->response);
		exit;
	}

	public function save()
	{
		// echo json_encode($this->input->post());die;
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		// PARAMS
		$idea_subject 	= $this->input->post('idea_subject');
		$idea_type 		= $this->input->post('idea_type');
		$idea_desc 		= $this->input->post('idea_desc');
		$idea_detail 	= $this->input->post('idea_detail');
		$idea_budget	= $this->input->post('idea_budget');
		$idea_start_date= $this->input->post('idea_start_date');
		$idea_end_date	= $this->input->post('idea_end_date');

		$data = [
			'idea_subject' 		=> $idea_subject,
			'idea_budget' 		=> $idea_budget,
			'idea_start_date' 	=> $idea_start_date,
			'idea_end_date' 	=> $idea_end_date,
			'idea_type' 		=> $idea_type,
			'idea_desc'			=> $idea_desc,
			'idea_detail'		=> $idea_detail,
			'created_date'		=> date('Y-m-d H:i:s'),
			'edited_date'		=> date('Y-m-d H:i:s'),
		];

		if ($this->input->post('challenge_id')) {
			$data['challenge_id'] = $this->input->post('challenge_id');
		}

		if ($this->hasLogin()) {
			$data['created_by'] = $this->log_id;
			$data['edited_by'] = $this->log_id;
		}

		if ( isset($_FILES['idea_photo']['name']) ) {
			$file = $_FILES['idea_photo']['name'];
			$exp = explode(".", $file);
			$end = strtolower(end($exp));

			$fileUpload = md5($file.date("YmdHis")).".".$end;
			$idea_photo = $fileUpload;

			$this->compress_image($_FILES['idea_photo']['tmp_name'], "assets/images/idea/".$fileUpload, 75);
			$data['idea_photo'] = $idea_photo;
		}
		
		$idea_id = $this->sitemodel->insert("tab_idea", $data);


		if (isset($_FILES['attachment']['name'])) {

			for ( $i = 0; $i < sizeof($_FILES['attachment']['name']); $i++) { 
				$file = $_FILES['attachment']['name'][$i];
				$exp = explode(".", $file);
				$end = strtolower(end($exp));

				$fileUpload = md5($file.date("YmdHis")).".".$end;
				$attachment_name = $fileUpload;
				move_uploaded_file($_FILES['attachment']['tmp_name'][$i], "assets/files/idea/".$fileUpload);

				$data_attachment = [
					'idea_id'			=> $idea_id,
					'attachment_name' 	=> $attachment_name
				];
				$attachment_id = $this->sitemodel->insert('tab_attachment', $data_attachment);
			}

		}

		$data_tr = [
			'idea_id' 		=> $idea_id,
			'tr_status'		=> 0,
			'created_date'	=> date('Y-m-d H:i:s'),
			'edited_date'	=> date('Y-m-d H:i:s'),
		];

		if ($this->hasLogin()) {
			$data_tr['created_by'] = $this->log_id;
			$data_tr['edited_by'] = $this->log_id;
		}

		$tr_id = $this->sitemodel->insert('tr_idea', $data_tr);

		/*** Result Area ***/
		$this->response['url'] = base_url('idea/thanks/').$idea_id;
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully insert data.";
		echo json_encode($this->response);
		exit;
	}

	public function save_post()
	{
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		// PARAMS
		$post_message 	= $this->input->post('post_message');
		$idea_id 		= $this->input->post('idea_id');

		$data = [
			'idea_id' 		=> $idea_id,
			'post_type'		=> 0,
			'post_like'		=> 0,
			'post_message'	=> $post_message,
			'created_date'	=> date('Y-m-d H:i:s'), 
		];

		if ($this->hasLogin()) {
			$data['created_by'] = $this->log_id;
		}

		$post_id = $this->sitemodel->insert('tr_post', $data);

		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully insert data.";
		echo json_encode($this->response);
		exit;
	}

}
