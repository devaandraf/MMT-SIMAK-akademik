<?php defined('BASEPATH') OR exit('No direct script access allowed');

if (!function_exists('getPertanyaan')) 
{
    function getPertanyaan($idKategori) {
        // Logika untuk mengambil data dari tabel pengguna (users)
        // ...

        $helper =& get_instance();

        $helper->load->model("Jnt_PertanyaanKategoriHabit_model", "data_jntPertanyaanKategori");
        $data = $helper->data_jntPertanyaanKategori->getPertanyaanKategori($idKategori);
        
        return $data;

    }
}