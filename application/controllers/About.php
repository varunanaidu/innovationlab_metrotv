<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class About extends MY_Controller {

	public function index()
	{
		if (!$this->hasLogin()) {
			redirect('idea/add');
		}
		$this->fragment['pagename'] = 'pages/view-about';
		$this->load->view('layout/main-site', $this->fragment);
	}
	
}
