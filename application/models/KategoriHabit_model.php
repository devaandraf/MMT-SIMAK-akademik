<?php

class KategoriHabit_model extends CI_Model
{
    public function getAllKategori()
    {
        $kategori = $this->db->get("mst_kategori")->result_array();

        return $kategori;
    }
}
