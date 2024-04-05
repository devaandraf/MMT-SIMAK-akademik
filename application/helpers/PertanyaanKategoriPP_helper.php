<?php defined('BASEPATH') OR exit('No direct script access allowed');

if (!function_exists('getPertanyaanPP')) 
{
    function getPertanyaanPP($idKategori) {
        // Logika untuk mengambil data dari tabel pengguna (users)
        // ...

        $helper =& get_instance();

        $helper->load->model("Jnt_PertanyaanKategoriProfil_model", "data_pp_jntPertanyaanKategori");
        $data = $helper->data_pp_jntPertanyaanKategori->getPertanyaanKategoriPP($idKategori);
        
        return $data;

    }
}