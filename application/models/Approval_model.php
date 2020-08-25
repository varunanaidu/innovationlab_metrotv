<?php defined('BASEPATH') OR exit("No direct script access allowed");

class Approval_model extends CI_Model{
    
	function find($key=""){
		$this->db->select("*");
		if ( empty($key) == FALSE )
			$this->db->where("idea_id", $key);
		$this->db->where('tr_status', 0);
		$q = $this->db->get("vw_last_idea");
		if ( $q->num_rows() == 0 )
			return FALSE;
		return $q->result();
	}
}