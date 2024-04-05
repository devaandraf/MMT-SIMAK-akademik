<?php

class Jnt_PertanyaanKategoriHabit_model extends CI_Model
{
    public function getPertanyaanKategori($id_kategori)
    {
        $this->db->select('mst_pertanyaan.pertanyaan, mst_pertanyaan.id, mst_pertanyaan.sts_berhalangan');
        $this->db->from('jnt_pertanyaan_kategori');
        $this->db->join('mst_pertanyaan', 'jnt_pertanyaan_kategori.pertanyaan_id = mst_pertanyaan.id');
        $this->db->where("jnt_pertanyaan_kategori.kategori_id", $id_kategori);
        $query = $this->db->get()->result_array();
        return $query;
    }
}