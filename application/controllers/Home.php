<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller {

	public function index()
	{
		if (!$this->hasLogin()) {
			redirect('idea/add');
		}
		
		$q = "SELECT * FROM vw_nav";
		if ($this->log_auth == 0) {
			$q.=" WHERE is_admin = 0";
		}
		$q.=" ORDER BY nav_order ASC";
		$temp_menu = $this->sitemodel->custom_query($q);

		$this->fragment['data_menu'] = $temp_menu;
		$this->fragment['data_challenge'] = $this->sitemodel->view('vw_challenge', '*', NULL, NULL, 'created_date DESC');
		// echo json_encode($this->fragment['data_challenge']);die;
		$this->fragment['pagename'] = 'pages/view-home';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function login()
	{
		$this->load->view('front/home_page');
	}

	public function signin()
	{
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}

		$user_email = trim($this->input->post('user_email'));
		$user_pass = md5($this->input->post('user_pass'));

		if ( empty($user_email) ) {$this->response['type'] = "Failed";$this->response['msg'] = "Please input a valid username";echo json_encode($this->response);exit;}
		if ( empty($user_pass) ) {$this->response['type'] = "Failed";$this->response['msg'] = "Please input a valid password";echo json_encode($this->response);exit;}

		$res = $this->sitemodel->view('vw_user', '*', ['user_email'=>$user_email]);

		if ($res) {
			$pwd = '';
			$data_sess = array();

			foreach ($res as $row) {
				$data_sess['log_id'] 	= $row->user_id;
				$data_sess['log_email'] = $row->user_email;
				$data_sess['log_name'] 	= $row->user_fname;
				$data_sess['log_auth'] 	= $row->user_auth;
				$data_sess['log_div'] 	= $row->div_id;
				$data_sess['log_dept'] 	= $row->dept_id;
				$pwd = $row->user_pass;
			}

			if ($user_pass !== $pwd) {
				$this->response['type'] = "Failed";
				$this->response['msg'] = "Wrong Password";
				echo json_encode($this->response);
				exit;
			}

			$this->session->set_userdata(SESS, (object)$data_sess);
			
			$this->response['type'] = 'done';
			$this->response['url'] = base_url('home');
			$this->response['msg'] = "Successfully login.";
			echo json_encode($this->response);

		}else{
			$this->response['type'] = "Failed";
			$this->response['msg'] = "No Data Found";
			echo json_encode($this->response);
			exit;
		}
	}

	public function signup()
	{
		if ( !$_POST ){$this->response['msg'] = "Invalid parameters.";echo json_encode($this->response);exit;}

		$user_email 	= trim($this->input->post('reg_user_email'));
		$user_fname		= trim($this->input->post('user_fname'));
		$user_pass		= $this->input->post('reg_user_pass');
		$user_cPass		= $this->input->post('reg_confirm_pass');

		if ( empty($user_email) ) {$this->response['type'] = "Failed";$this->response['msg'] = "Please input a valid email";echo json_encode($this->response);exit;}
		if ( empty($user_fname) ) {$this->response['type'] = "Failed";$this->response['msg'] = "Please input a valid full name";echo json_encode($this->response);exit;}
		if ( empty($user_pass) ) {$this->response['type'] = "Failed";$this->response['msg'] = "Please input a valid password";echo json_encode($this->response);exit;}
		if ( empty($user_cPass) ) {$this->response['type'] = "Failed";$this->response['msg'] = "Please input a valid password confirmation";echo json_encode($this->response);exit;}

		if ($user_pass != $user_cPass) {
			$this->response['type'] = "Failed";
			$this->response['msg']	= "Password not match";
			echo json_encode($this->response);
			exit;
		}

		$res = $this->sitemodel->view('vw_user', '*', ['user_email'=>$user_email]);

		if ($res) {
			foreach ($res as $row) {
				$this->response['type'] = "Failed";
				$this->response['msg'] = "Has been registered with email : " . $row->user_email;
				echo json_encode($this->response);
				exit;
			}
		}

		$data_user = [
			'user_email'  	=> $user_email,
			'user_pass'  	=> md5($user_pass),
			'user_fname' 	=> $user_fname,
			'user_auth'	 	=> 0,
			'user_phone'	=> '',
			'user_instagram'=> '',
			'div_id'		=> '',
			'dept_id'		=> '',
			'created_date'	=> date('Y-m-d H:i:s')
		];

		$q = $this->sitemodel->insert('tab_user', $data_user);
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully create account.";
		$this->response['url'] = base_url('home/login');
		echo json_encode($this->response);

	}

	public function signout()
	{
		$this->session->sess_destroy();
		redirect('home/login');
	}

}
