<?php

class KategoriProfil_model extends CI_Model
{
    public function getAllKategori()
    {
        $kategori = $this->db->get("mst_pp_kategori")->result_array();

        return $kategori;
    }
}
