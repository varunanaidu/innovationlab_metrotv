<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Approval extends MY_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('Approval_model');
	}

	public function index()
	{
		if (!$this->hasLogin()) {
			redirect('home/login');
		}

		$this->fragment['title'] = 'Approval';
		$q1 = $this->sitemodel->view('vw_last_idea', '*', ['tr_status'=>1]);
		if ($q1) {
			$this->fragment['new_idea'] = sizeof($q1);
		}else{
			$this->fragment['new_idea'] = 0;
		}
		$q2 = $this->sitemodel->view('vw_last_idea', '*', ['tr_status'=>2]);
		if ($q2) {
			$this->fragment['approved'] = sizeof($q2);
		}else{
			$this->fragment['approved'] = 0;
		}
		$q3 = $this->sitemodel->view('vw_last_idea', '*', ['tr_status'=>3]);
		if ($q3) {
			$this->fragment['rejected'] = sizeof($q3);
		}else{
			$this->fragment['rejected'] = 0;
		}

		$q4 = $this->sitemodel->view('vw_last_idea', '*', ['tr_status'=>0]);
		if ($q4) {
			$this->fragment['verification'] = sizeof($q4);
		}else{
			$this->fragment['verification'] = 0;
		}

		$q5 = $this->sitemodel->view('vw_last_idea', '*', ['tr_status'=>2]);
		$this->fragment['data_ongoing_project'] = $q5;
		$this->fragment['js'] = base_url('assets/js/pages/approval.js');
		$this->fragment['pagename'] = 'pages/view-approval';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function verification_idea()
	{
		if (!$this->hasLogin()) {
			redirect('home/login');
		}

		$this->fragment['data_idea'] = $this->sitemodel->view('vw_last_idea', '*', ['tr_status'=>0], NULL, 'created_date DESC');
		$this->fragment['css'] = base_url('assets/design/css/table/main.css');
		$this->fragment['js'] = base_url('assets/js/pages/approval.js');
		$this->fragment['pagename'] = 'pages/view-verification-idea';
		$this->load->view('layout/main-site', $this->fragment);
	}	

	public function new_idea()
	{
		if (!$this->hasLogin()) {
			redirect('home/login');
		}

		$this->fragment['data_idea'] = $this->sitemodel->view('vw_last_idea', '*', ['tr_status'=>1], NULL, 'created_date DESC');
		$this->fragment['css'] = base_url('assets/design/css/table/main.css');
		$this->fragment['js'] = base_url('assets/js/pages/approval.js');
		$this->fragment['pagename'] = 'pages/view-approval-idea';
		$this->load->view('layout/main-site', $this->fragment);
	}	

	public function details($idea_id)
	{
		if (!$this->hasLogin()) {
			redirect('home/login');
		}

		$this->fragment['data_user'] = $this->sitemodel->view('vw_user', '*', ['user_auth !='=>2], NULL, 'user_fname ASC');
		$this->fragment['data_attachment'] = $this->sitemodel->view('vw_attachment', '*', ['idea_id'=>$idea_id]);
		$this->fragment['data_idea'] = $this->sitemodel->view('vw_idea', '*', ['idea_id'=>$idea_id]);
		$this->fragment['data_post'] = $this->sitemodel->view('vw_post', '*', ['idea_id'=>$idea_id, 'post_type'=> 0], NULL, 'created_date DESC');
		$this->fragment['js'] = base_url('assets/js/pages/approval.js');
		$this->fragment['pagename']	= 'pages/view-detail-idea-2';
		$this->load->view('layout/main-site', $this->fragment);
	}	

	public function details_verification($idea_id)
	{
		if (!$this->hasLogin()) {
			redirect('home/login');
		}

		$this->fragment['data_attachment'] = $this->sitemodel->view('vw_attachment', '*', ['idea_id'=>$idea_id]);
		$this->fragment['data_idea'] = $this->sitemodel->view('vw_idea', '*', ['idea_id'=>$idea_id]);
		$this->fragment['data_post'] = $this->sitemodel->view('vw_post', '*', ['idea_id'=>$idea_id, 'post_type'=> 0], NULL, 'created_date DESC');
		$this->fragment['js'] = base_url('assets/js/pages/approval.js');
		$this->fragment['pagename']	= 'pages/view-detail-idea-3';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function approved_idea()
	{
		if (!$this->hasLogin()) {
			redirect('home/login');
		}

		$this->fragment['data_idea'] = $this->sitemodel->view('vw_last_idea', '*', ['tr_status'=>2]);
		$this->fragment['css'] = base_url('assets/design/css/styleproject.css');
		$this->fragment['js'] = base_url('assets/js/pages/approved_idea.js');
		$this->fragment['pagename'] = 'pages/view-approved-idea';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function get_user()
	{
		$check = $this->sitemodel->view('vw_user', '*', ['user_auth !='=>2], NULL, 'user_fname ASC');
		if (!$check) {$this->response['msg'] = "No data found.";echo json_encode($this->response);exit;}
		$this->response['type'] = 'done';
		$this->response['msg'] = $check;
		echo json_encode($this->response);
		exit;

	}

	public function next_tr()
	{
		// echo json_encode($this->input->post());die;
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		// PARAMS
		$idea_id 		= $this->input->post('idea_id2');
		$key 			= $this->input->post('key');
		$reject_reason	= '';
		
		if ($this->input->post('reject_reason')) {
			$reject_reason = $this->input->post('reject_reason');
		}

		$data_tr = [
			'idea_id' 		=> $idea_id,
			'tr_status'		=> $key,
			'reject_reason'	=> $reject_reason,
			'created_by'	=> $this->log_id, 
			'created_date'	=> date('Y-m-d H:i:s'),
			'edited_by'		=> $this->log_id, 
			'edited_date'	=> date('Y-m-d H:i:s'),
		];
		
		$tr_id = $this->sitemodel->insert('tr_idea', $data_tr);

		$check = $this->sitemodel->view('vw_idea', '*', ['idea_id'=>$idea_id]);
		foreach ($check as $row) {
			$data_score = [];
			if ($this->input->post('key') == 1) {
				$data_score['score_count'] = 10;
				$data_score['user_id'] = $row->created_by;
			}else if ($this->input->post('key') == 2) {
				$data_score['score_count'] = 50;
				$data_score['user_id'] = $row->created_by;
			}
			$score = $this->sitemodel->insert('tr_score', $data_score);
		}

		/*** Result Area ***/
		$this->response['url'] = site_url('approval');
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully insert data.";
		echo json_encode($this->response);
		exit;
	}

	public function save_team()
	{
		// echo json_encode($this->input->post());die;
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}

		$user = $this->input->post('user_id');

		for ( $i = 0; $i < sizeof($user); $i++) {
			$data = [
				'user_id' => $this->input->post('user_id')[$i],
				'position' => $this->input->post('position')[$i],
				'idea_id' => $this->input->post('idea_id3'),
			];

			$team_id = $this->sitemodel->insert('tab_team', $data);

			$data_score = [
				'score_count' => 50,
				'user_id'	  => $user[$i]
			];
			$score = $this->sitemodel->insert('tr_score', $data_score);
		}

		/*** Result Area ***/
		$this->response['url'] = site_url('approval/new_idea');
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully insert data.";
		echo json_encode($this->response);
		exit;
	}

	public function get_excel()
	{
		$result = array();
		$data = array();

		$q1 = $this->sitemodel->view('vw_last_idea', '*', ['tr_status'=>1]);
		if (!$q1) {$this->response['msg'] = "Data tidak ditemukan.";echo json_encode($this->response);exit;}
		$data = $q1;


		$result['data'] = $data;
		// echo json_encode($result);die;
		$this->load->view('pages/view-excel', $result);

	}

}