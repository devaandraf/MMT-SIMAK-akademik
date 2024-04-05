<?php defined('BASEPATH') OR exit('No direct script access allowed');

if (!function_exists('getNilaiPP')) 
{
    function getNilaiPP($idPertanyaan) {
        // Logika untuk mengambil data dari tabel pengguna (users)
        // ...

        $helper =& get_instance();

        $helper->load->model("Jnt_PertanyaanNilaiProfil_model", "data_jnt_pp_PertanyaanNilai");
        $data = $helper->data_jnt_pp_PertanyaanNilai->getPertanyaanNilaiPP($idPertanyaan);
        
        return $data;

    }
}