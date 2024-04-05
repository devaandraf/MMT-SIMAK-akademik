<?php

class Jnt_PertanyaanNilaiProfil_model extends CI_Model
{
    public function getPertanyaanNilaiPP($id_pertanyaan)
    {
        $this->db->select('mst_pp_nilai.nama_nilai, mst_pp_nilai.id');
        $this->db->from('jnt_pp_pertanyaan_nilai');
        $this->db->join('mst_pp_nilai', 'jnt_pp_pertanyaan_nilai.id_nilai = mst_pp_nilai.id');
        $this->db->where("jnt_pp_pertanyaan_nilai.id_pertanyaan", $id_pertanyaan);
        $query = $this->db->get()->result_array();
        return $query;
    }
}