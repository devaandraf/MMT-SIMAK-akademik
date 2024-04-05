<?php

class PertanyaanProfil_model extends CI_Model
{
    public function getAllPertanyaan()
    {
        $pertanyaan = $this->db->get("mst_pp_pertanyaan")->result_array();

        return $pertanyaan;
    }
}
