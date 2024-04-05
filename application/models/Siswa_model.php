<?php

class Siswa_model extends CI_Model
{
    public function getAll()
    {
        $data_nilai_siswa = $this->db->get("siswa")->result_array();

        return $data_nilai_siswa;
    }
}
