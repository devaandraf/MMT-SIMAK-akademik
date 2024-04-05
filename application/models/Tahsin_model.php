<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tahsin_model extends CI_Model 
{

    public function getTahsin()
    {
        $tahsin = $this->db->get("tahsin")->result_array();

        return $tahsin;
    }

    public function tambahData($data) 
    {
        $this->db->insert("tahsin", $data);
        return $this->db->affected_rows();
    }

}
