<?php

class PertanyaanHabit_model extends CI_Model
{
    public function getAllPertanyaan()
    {
        $pertanyaan = $this->db->get("mst_pertanyaan")->result_array();

        return $pertanyaan;
    }
}
