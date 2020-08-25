<?php defined('BASEPATH') OR exit("No direct script access allowed");

class Idea_model extends CI_Model{
    
	function find($key=""){
		$this->db->select("*");
		if ( empty($key) == FALSE )
			$this->db->where("idea_id", $key);
		$q = $this->db->get("vw_idea");
		if ( $q->num_rows() == 0 )
			return FALSE;
		return $q->result();
	}
}