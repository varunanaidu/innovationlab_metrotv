<?php if ( !defined('BASEPATH') )exit('No direct script access allowed');
	
class MY_Controller extends CI_Controller{

	protected $log_id		= '';
	protected $log_email	= '';
	protected $log_name		= '';
	protected $log_auth		= '';
	protected $log_div		= '';
	protected $log_dept		= '';
	protected $response		= [];
	protected $fragment		= [];
	
	function __construct(){
		parent::__construct();
		date_default_timezone_set('Asia/Jakarta');
		
		if ($this->hasLogin()) {
			$this->log_id 		= $this->session->userdata(SESS)->log_id;
			$this->log_email 	= $this->session->userdata(SESS)->log_email;
			$this->log_name 	= $this->session->userdata(SESS)->log_name;
			$this->log_auth 	= $this->session->userdata(SESS)->log_auth;
			$this->log_div 		= $this->session->userdata(SESS)->log_div;
			$this->log_dept 	= $this->session->userdata(SESS)->log_dept;
		}
	}
	
	function hasLogin() {
		return $this->session->userdata(SESS);
	}

	function compress_image($source_url, $destination_url, $quality) {
		$info = getimagesize($source_url);

		if ($info['mime'] == 'image/jpeg')
			$image = imagecreatefromjpeg($source_url);
		elseif ($info['mime'] == 'image/gif')
			$image = imagecreatefromgif($source_url);
		elseif ($info['mime'] == 'image/png')
			$image = imagecreatefrompng($source_url);
		imagejpeg($image, $destination_url, $quality);

		return true;
	}
}