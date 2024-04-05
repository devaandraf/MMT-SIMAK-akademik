<?php defined('BASEPATH') OR exit('No direct script access allowed');

if (!function_exists('getNilai')) 
{
    function getNilai($idPertanyaan) {
        // Logika untuk mengambil data dari tabel pengguna (users)
        // ...

        $helper =& get_instance();

        $helper->load->model("Jnt_PertanyaanNilaiHabit_model", "data_jntPertanyaanNilai");
        $data = $helper->data_jntPertanyaanNilai->getPertanyaanNilai($idPertanyaan);
        
        return $data;

    }
}