<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Site extends MY_Controller {

	public function index()
	{
		$this->load->view('front/index');
	}
	
}
