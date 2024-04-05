<?php

class Asatidz_model extends CI_Model
{
    public function ambilSemuaAsatidz()
    {
        $this->db->select('*')
                        ->from('tbl_pegawai')
                        ->join('tbl_user', 'tbl_pegawai.id_harga = tbl_pegawai.harga_id', "right")
                        ->join('tbl_toko', 'tbl_toko.id_toko = tbl_harga.toko_id', "right")
                        ->join('tbl_barang', 'tbl_harga.barang_id = tbl_barang.id_barang', "right")
                        ->join('tbl_kategori', 'tbl_kategori.id_kategori = tbl_barang.kategori_id')
                        ->join('tbl_satuan', 'tbl_satuan.id_satuan = tbl_barang.satuan_id')
                        ->where('tbl_pegawai.is_active', 1);
        return $this->db->get()->result_array();
    }

    public function tambahData($data)
    {
        $this->db->insert("tbl_jabatan", $data);
        return $this->db->affected_rows();
    }

    public function detail_data($where)
    {
        return $this->db->get_where('tbl_jabatan', $where);
    }

    public function ubahData($data)
    {
        $this->db->where("id", $data["id"]);
        unset($data["id"]);
        $this->db->update("tbl_jabatan", $data);
        return $this->db->affected_rows();
    }

    public function hapusData($id)
    {
        $this->db->where("id", $id);
        $this->db->delete("tbl_jabatan");
        return $this->db->affected_rows();
    }
}
