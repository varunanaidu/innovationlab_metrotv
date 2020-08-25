<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Article extends MY_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('Knowledge_model');
	}

	public function index()
	{
		if (!$this->hasLogin()) {
			redirect('idea/add');
		}
		
		$this->fragment['data_article'] = $this->sitemodel->view('vw_knowledge', '*', NULL, NULL, 'created_date DESC');

		$this->fragment['js'] = base_url('assets/js/pages/article.js');
		$this->fragment['pagename'] = 'pages/view-article';
		$this->load->view('layout/main-site', $this->fragment);
	}

	public function details($knowledge_id)
	{
		if (!$this->hasLogin()) {
			redirect('idea/add');
		}

		$q = $this->sitemodel->view('vw_knowledge', '*', ['knowledge_id'=>$knowledge_id]);
		$this->fragment['data_article'] = $q;
		$this->fragment['js'] = base_url('assets/js/pages/article.js');
		$this->fragment['pagename']	= 'pages/view-detail-article';
		$this->load->view('layout/main-site', $this->fragment);
	}

}
