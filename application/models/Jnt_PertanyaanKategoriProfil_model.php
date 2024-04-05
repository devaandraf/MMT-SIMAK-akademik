<?php

class Jnt_PertanyaanKategoriProfil_model extends CI_Model
{
    public function getPertanyaanKategoriPP($id_kategori)
    {
        $this->db->select('mst_pp_pertanyaan.nama_pertanyaan, mst_pp_pertanyaan.id');
        $this->db->from('jnt_pp_kategori_pertanyaan');
        $this->db->join('mst_pp_pertanyaan', 'jnt_pp_kategori_pertanyaan.pertanyaan_id = mst_pp_pertanyaan.id');
        $this->db->where("jnt_pp_kategori_pertanyaan.kategori_id", $id_kategori);
        $query = $this->db->get()->result_array();
        return $query;
    }
}