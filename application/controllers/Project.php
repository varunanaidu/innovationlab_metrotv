<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Project extends MY_Controller {

	function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		if (!$this->hasLogin()) {
			redirect('idea/add');
		}

		$this->fragment['data_idea'] = $this->sitemodel->view('vw_last_idea', '*', ['tr_status'=>2]);
		$this->fragment['css'] = base_url('assets/design/css/styleproject.css');
		$this->fragment['js'] = base_url('assets/js/pages/project.js');
		$this->fragment['pagename'] = 'pages/view-project';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function detail_project($tr_id)
	{
		if (!$this->hasLogin()) {
			redirect('idea/add');
		}
		
		$q1 = $this->sitemodel->view('vw_last_idea', '*', ['tr_id'=>$tr_id]);
		$this->fragment['data_idea'] = $q1;

		foreach ($q1 as $row) {

			$q2 = $this->sitemodel->view('vw_attachment', '*', ['idea_id'=>$row->idea_id]);
			if ($q2) {
				$this->fragment['idea_attachment'] = $q2;
			}else{
				$this->fragment['idea_attachment'] = 0;
			}

			$this->fragment['data_task'] = $this->sitemodel->view('vw_task', '*', ['idea_id'=>$row->idea_id]);

			$q3 = $this->sitemodel->view('vw_team', '*', ['idea_id'=>$row->idea_id, 'user_id'=>$this->log_id]);
			if ($q3) {
				$this->fragment['data_team'] = 'Eligible';
			}else{
				if ($this->log_auth == 1 || $this->log_auth == 2) {
					$this->fragment['data_team'] = 'Eligible';
				}else{
					$this->fragment['data_team'] = 'Not Eligible';
				}
			}

			$q4 = $this->sitemodel->view('vw_team', '*', ['idea_id'=>$row->idea_id]);
			if ($q4) {
				$this->fragment['data_member'] = $q4;
			}

			$q5 = $this->sitemodel->custom_query('
				SELECT * FROM vw_user WHERE user_auth != 2 AND user_id NOT IN(
				SELECT user_id FROM vw_team WHERE idea_id = '.$row->idea_id.'
				)
				');
			if ($q5) {
				$this->fragment['data_user'] = $q5;
			}

		}

		$this->fragment['log_auth'] = $this->log_auth;
		// $this->fragment['data_user'] = $this->sitemodel->view('vw_user', '*', ['user_auth !='=>2], NULL, 'user_fname ASC');
		$this->fragment['css'] = 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css';
		$this->fragment['js'] = 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js';
		$this->fragment['js2'] = [ base_url('assets/js/pages/detail_project.js') ];
		$this->fragment['pagename'] = 'pages/view-detail-project';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function move_task()
	{
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		$task_id = $this->input->post('task_id');
		$idea_id = $this->input->post('idea_id');
		$task_position = $this->input->post('task_position');

		$check = $this->sitemodel->view('vw_task', '*', ['task_id'=>$task_id]);
		foreach ($check as $row) {

			if ( $task_position < $row->task_position ) {
				$this->response['msg'] = 'Gagal memindahkan';
				echo json_encode($this->response);
				exit;
			}

			$data = [
				'task_position' => $task_position,
				'edited_by' 	=> $this->log_id,
				'edited_date' 	=> date('Y-m-d H:i:s'),
			];

			$result = $this->sitemodel->update('tr_task', $data, ['task_id'=>$task_id]);

		}

		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully modified data.";
		echo json_encode($this->response);
		exit;
	}

	public function add_team()
	{
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		// PARAMS
		$idea_id	= $this->input->post('idea_id');
		$user_id 	= $this->input->post('user_id');
		$position 	= $this->input->post('position');

		$data = [
			'idea_id' => $idea_id,
			'user_id' => $user_id,
			'position'=> $position
		];

		$team_id = $this->sitemodel->insert('tab_team', $data);
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully add team member.";
		echo json_encode($this->response);
		exit;
	}

	public function save_task()
	{
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		// PARAMS
		$task_name 	= $this->input->post('task_name');
		$task_desc 	= $this->input->post('task_desc');
		$idea_id 	= $this->input->post('idea_id');

		$data = [
			'idea_id'		=> $idea_id,
			'task_name' 	=> $task_name,
			'task_desc'		=> $task_desc,
			'task_position'	=> 0,
			'created_by'	=> $this->log_id, 
			'created_date'	=> date('Y-m-d H:i:s'),
			'edited_by'		=> $this->log_id, 
			'edited_date'	=> date('Y-m-d H:i:s'),
		];
		$result = $this->sitemodel->insert("tr_task", $data);

		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully insert data.";
		echo json_encode($this->response);
		exit;

	}

}