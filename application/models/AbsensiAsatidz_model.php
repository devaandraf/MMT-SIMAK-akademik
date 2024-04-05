<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Absensi_model extends CI_Model {

    public function get_absensi()
    {
        // Gantilah 'nama_tabel' dengan nama tabel yang sesuai di basis data Anda
        return $this->db->get('nama_tabel')->result_array();
    }

    public function simpan_absensi($data)
    {
        // Gantilah 'nama_tabel' dengan nama tabel yang sesuai di basis data Anda
        return $this->db->insert('nama_tabel', $data);
    }

}