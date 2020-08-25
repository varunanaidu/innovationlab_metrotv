<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends MY_Controller {

	public function index()
	{
		if (!$this->hasLogin()) {
			redirect('home/login');
		}
		$data_idea = [];
		$q1 = $this->sitemodel->view('vw_idea', '*', ['created_by'=>$this->log_id]);
		if($q1){
			for ( $i = 0; $i < sizeof($q1); $i++) { 
				array_push($data_idea, $q1[$i]);
			}
		}
		$q2 = $this->sitemodel->custom_query('
			SELECT *
			FROM vw_last_idea
			WHERE tr_status = 2 AND idea_id IN (
			SELECT idea_id FROM vw_idea WHERE created_by = '.$this->log_id.'
		)');
		if($q2){
			for ( $i = 0; $i < sizeof($q2); $i++) { 
				array_push($data_idea, $q2[$i]);
			}
		}
		$q3 = $this->sitemodel->custom_query('
			SELECT *
			FROM vw_last_idea
			WHERE tr_status = 2 AND idea_id IN (
			SELECT idea_id FROM vw_team WHERE user_id = '.$this->log_id.'
		)');
		if($q3){
			for ( $i = 0; $i < sizeof($q3); $i++) { 
				array_push($data_idea, $q3[$i]);
			}
		}

		$score = 0;
		$q4 = $this->sitemodel->view('vw_tr_score', '*', ['user_id'=>$this->log_id]);
		if ($q4) {
			foreach ($q4 as $row) {
				$score+=$row->score_count;
			}
		}else{
			$score = 0;
		}
		$this->fragment['data_score'] = $score;
		$this->fragment['data_idea'] = $data_idea;
		$this->fragment['data_user'] = $this->sitemodel->view('vw_user', '*', ['user_id'=>$this->log_id]);
		$this->fragment['data_div'] = $this->sitemodel->view('tab_div', '*');
		$this->fragment['data_dept'] = $this->sitemodel->view('tab_dept', '*');
		$this->fragment['js'] = base_url('assets/js/pages/profile.js');
		$this->fragment['pagename'] = 'pages/view-profile';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function update()
	{
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		// PARAMS
		$user_id 			= $this->input->post('user_id');
		$user_fname 		= $this->input->post('user_fname');
		$user_phone 		= $this->input->post('user_phone');
		$user_instagram 	= $this->input->post('user_instagram');
		$div_id 			= $this->input->post('div_id');
		$dept_id 			= $this->input->post('dept_id');

		$data = [
			'user_fname' 		=> $user_fname,
			'user_phone' 		=> $user_phone,
			'user_instagram' 	=> $user_instagram,
			'div_id' 			=> $div_id,
			'dept_id' 			=> $dept_id,
		];
		
		$this->sitemodel->update('tab_user', $data, ['user_id'=>$user_id]);

		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully update profile.";
		echo json_encode($this->response);
		exit;
	}

	public function update_photo()
	{
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}

		if ( isset($_FILES['user_photo']['name']) ) {
			$file = $_FILES['user_photo']['name'];
			$exp = explode(".", $file);
			$end = strtolower(end($exp));

			$fileUpload = md5($file.date("YmdHis")).".".$end;
			$user_photo = $fileUpload;

			$this->compress_image($_FILES['user_photo']['tmp_name'], "assets/images/user/".$fileUpload, 75);
			$data = [
				'user_photo' => $user_photo
			];
			$this->sitemodel->update('tab_user', $data, ['user_id'=>$this->log_id]);
		}

		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully update profile picture.";
		echo json_encode($this->response);
		exit;
	}

	public function track()
	{
		$data = [];
		$status = '';
		/*** Check Session ***/
		if ( !$this->hasLogin() ){$this->response['msg'] = "Session expired, Please refresh your browser.";echo json_encode($this->response);exit;}
		/*** Check POST or GET ***/
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}
		// PARAMS
		$temp_idea_id = $this->input->post('idea_id');
		/*** Validate Area ***/
		if ( empty($temp_idea_id) ){$this->response['msg'] = "Invalid parameter.";echo json_encode($this->response);exit;}

		$temp = explode('#', $temp_idea_id);
		$idea_id = end($temp);

		$check = $this->sitemodel->view('vw_last_idea', '*', ['idea_id'=>$idea_id]);
		if ( empty($check) ){$this->response['msg'] = "No Data Found.";echo json_encode($this->response);exit;}

		foreach ($check as $row) {
			$subdata = array();
			$subdata['idea_id'] = '#'.$row->idea_id;
			$subdata['idea_subject'] = $row->idea_subject;
			switch ($row->tr_status) {
				case '0':
					$status = 'Menunggu Verifikasi';
					break;
				case '1':
					$status = 'Menunggu Proses Persetujuan';
					break;
				case '2':
					$status = 'Dalam pengerjaan';
					break;
				case '3':
					$status = 'Ditolak';
					break;
			}
			$subdata['status'] = $status;
			$data[] = $subdata;
		}


		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = $data;
		echo json_encode($this->response);
		exit;
	}
	
}
