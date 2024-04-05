<?php

class Jnt_PertanyaanNilaiHabit_model extends CI_Model
{
    public function getPertanyaanNilai($id_pertanyaan)
    {
        $this->db->select('mst_nilai.nama_nilai, mst_nilai.nilai_angka, mst_nilai.id');
        $this->db->from('jnt_pertanyaan_nilai');
        $this->db->join('mst_nilai', 'jnt_pertanyaan_nilai.nilai_id = mst_nilai.id');
        $this->db->where("jnt_pertanyaan_nilai.pertanyaan_id", $id_pertanyaan);
        $query = $this->db->get()->result_array();
        return $query;
    }
}