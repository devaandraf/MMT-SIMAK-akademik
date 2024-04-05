<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tahfidz_model extends CI_Model 
{

    public function getTahfidz()
    {
        $tahfidz = $this->db->get("tahfidz")->result_array();

        return $tahfidz;
    }

    public function tambahData($data) 
    {
        $this->db->insert("tahfidz", $data);
        return $this->db->affected_rows();
    }

}
