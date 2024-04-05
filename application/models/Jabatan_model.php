<?php

class Jabatan_model extends CI_Model
{
    public function ambilSemuaJabatan()
    {
        $query = $this->db->get("tbl_jabatan");

        return $query->result_array();
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
