<?php

class DataSiswa_model extends CI_Model
{

    public function getAllDataSiswa()
    {
        $query = $this->db->get('siswa');

        return $query->result();
    }

    public function tambahData($data)
    {
        $this->db->insert("siswa", $data);
        return $this->db->affected_rows();
    }

    public function detail_data_siswa($where)
    {
        return $this->db->get_where("siswa", $where);
    }

    public function getSiswaById($id)
    {
        $query = $this->db->get_where('siswa', array('id' => $id));
        return $query->row();
    }

    // public function updateSiswa($id, $data) {
    //     // $this->db->where('id', $id);
    //     // $this->db->update('siswa', $data);

    //     $this->db->where("id", $data["id"]);
    //     unset($data["id"]);
    //     $this->db->update("siswa", $data);

    //     return $this->db->affected_rows();
    // }

    public function deleteSiswa($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('siswa');

        return $this->db->affected_rows();
    }

    public function detail_data($where)
    {
        return $this->db->get_where('siswa', $where);
    }

    public function ubahData($data)
    {
        $this->db->where("id", $data["id"]);
        unset($data["id"]);
        $this->db->update("siswa", $data);
        return $this->db->affected_rows();
    }

    public function listTahfidz()
    {

        $this->db->select('siswa.nama,tahfidz.nama_surat, tahfidz.nama_surat, 
                            tahfidz.id, tahfidz.deskripsi, tahfidz.ayat_awal,
                            tahfidz.ayat_akhir,tahfidz.pendamping,tahfidz.catatan,
                            tahfidz.created_at
            ');
        $this->db->from('tahfidz');
        $this->db->join('siswa', 'tahfidz.siswa_id = siswa.id');
        $query = $this->db->get()->result_array();

        return $query;
    }

    public function listJumlahTahfidz($id_siswa)
    {

        $this->db->select('siswa.nama,tahfidz.nama_surat, tahfidz.nama_surat, 
                            tahfidz.id, tahfidz.deskripsi, tahfidz.ayat_awal,
                            tahfidz.ayat_akhir,tahfidz.pendamping,tahfidz.catatan,
                            tahfidz.created_at,
        (SELECT COUNT(siswa_id) FROM tahfidz WHERE siswa_id = siswa.id) AS count_baca,
        (SELECT COUNT(DISTINCT nama_surat) FROM tahfidz WHERE siswa_id = siswa.id) AS count_surat,
        (SELECT SUM(ayat_akhir - ayat_awal) FROM tahfidz WHERE siswa_id = siswa.id) AS selisih_ayat,
        (SELECT nama_surat FROM tahfidz WHERE siswa_id = siswa.id ORDER BY created_at DESC LIMIT 1) AS surat_terbaru,
        (SELECT ayat_akhir FROM tahfidz WHERE siswa_id = siswa.id ORDER BY created_at DESC LIMIT 1) AS ayat_terakhir
        ');

        $this->db->from('tahfidz');
        $this->db->join('siswa', 'tahfidz.siswa_id = siswa.id');
        $this->db->where('tahfidz.siswa_id', $id_siswa);
        $this->db->order_by('(SELECT MAX(nama_surat) FROM tahfidz WHERE siswa_id = siswa.id)', 'DESC'); // Menambahkan ORDER BY
        $query = $this->db->get()->result_array();

        return $query;
    }

    public function listJumlahTahsin($id_siswa)
    {

        $this->db->select('siswa.nama,tahsin.nama_surat, tahsin.nama_surat, 
                            tahsin.id, tahsin.deskripsi, tahsin.ayat_awal,
                            tahsin.ayat_akhir,tahsin.pendamping,tahsin.catatan,
                            tahsin.created_at,
        (SELECT COUNT(siswa_id) FROM tahsin WHERE siswa_id = siswa.id) AS count_baca,
        (SELECT COUNT(DISTINCT nama_surat) FROM tahsin WHERE siswa_id = siswa.id) AS count_surat,
        (SELECT SUM(ayat_akhir - ayat_awal) FROM tahsin WHERE siswa_id = siswa.id) AS selisih_ayat,
        (SELECT nama_surat FROM tahsin WHERE siswa_id = siswa.id ORDER BY created_at DESC LIMIT 1) AS surat_terbaru,
        (SELECT ayat_akhir FROM tahsin WHERE siswa_id = siswa.id ORDER BY created_at DESC LIMIT 1) AS ayat_terakhir
        ');

        $this->db->from('tahsin');
        $this->db->join('siswa', 'tahsin.siswa_id = siswa.id');
        $this->db->where('tahsin.siswa_id', $id_siswa);
        $this->db->order_by('(SELECT MAX(nama_surat) FROM tahsin WHERE siswa_id = siswa.id)', 'DESC'); // Menambahkan ORDER BY
        $query = $this->db->get()->result_array();

        return $query;
    }

    public function listTahsin()
    {

        $this->db->select('siswa.nama,tahsin.nama_surat, tahsin.nama_surat, 
                            tahsin.id, tahsin.deskripsi, tahsin.ayat_awal,
                            tahsin.ayat_akhir,tahsin.pendamping,tahsin.catatan,
                            tahsin.created_at
            ');
        $this->db->from('tahsin');
        $this->db->join('siswa', 'tahsin.siswa_id = siswa.id');
        $query = $this->db->get()->result_array();

        return $query;
    }

    public function listNilai()
    {

        $this->db->select('siswa.nama,pembiasaan_form.wkt_input, pembiasaan_form.berhalangan, pembiasaan_form.id,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND kategori_id = 1) as kat1,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND kategori_id = 2) as kat2,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND kategori_id = 3) as kat3,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND kategori_id = 4) as kat4 
            ');
        $this->db->from('pembiasaan_form');
        $this->db->join('siswa', 'pembiasaan_form.siswa_id = siswa.id');
        $query = $this->db->get()->result_array();

        return $query;
    }

    public function listNilaiPer()
    {

        $this->db->select('siswa.nama,pembiasaan_form.wkt_input, pembiasaan_form.berhalangan, pembiasaan_form.id,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 1) as per1,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 2) as per2,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 3) as per3,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 4) as per4,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 5) as per5,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 6) as per6,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 7) as per7,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 8) as per8,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 9) as per9,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 10) as per10,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 11) as per11,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 12) as per12,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 13) as per13,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 14) as per14,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 15) as per15,
            (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 16) as per16
            ');
        $this->db->from('pembiasaan_form');
        $this->db->join('siswa', 'pembiasaan_form.siswa_id = siswa.id');
        $query = $this->db->get()->result_array();

        return $query;
    }

    public function listNilaiSiswa($id_siswa)
    {
        $this->db->select('siswa.nama,pembiasaan_form.wkt_input, pembiasaan_form.berhalangan, pembiasaan_form.id,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND kategori_id = 1) as kat1,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND kategori_id = 2) as kat2,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND kategori_id = 3) as kat3,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND kategori_id = 4) as kat4,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id) as total_nilai 
    ');
        $this->db->from('pembiasaan_form');
        $this->db->join('siswa', 'pembiasaan_form.siswa_id = siswa.id');
        $this->db->where('pembiasaan_form.siswa_id', $id_siswa);
        $query = $this->db->get()->result_array();

        return $query;
    }

    public function listNilaiSiswaPer($id_siswa)
    {
        $this->db->select('siswa.nama,pembiasaan_form.wkt_input, pembiasaan_form.berhalangan, pembiasaan_form.id,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 1) as per1,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 2) as per2,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 3) as per3,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 4) as per4,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 5) as per5,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 6) as per6,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 7) as per7,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 8) as per8,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 9) as per9,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 10) as per10,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 11) as per11,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 12) as per12,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 13) as per13,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 14) as per14,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 15) as per15,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 16) as per16,
        (SELECT SUM(nilai_angka) FROM jawaban_pembiasaan WHERE form_habit_id = pembiasaan_form.id AND pertanyaan_id = 17) as per17 
    ');
        $this->db->from('pembiasaan_form');
        $this->db->join('siswa', 'pembiasaan_form.siswa_id = siswa.id');
        $this->db->where('pembiasaan_form.siswa_id', $id_siswa);
        $query = $this->db->get()->result_array();

        return $query;
    }

    public function listNilaiProfil()
    {

        $this->db->select('siswa.nama, profil_form.wkt_input, profil_form.id,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id) AS count_nilai');

        $this->db->from('profil_form');
        $this->db->join('siswa', 'profil_form.siswa_id = siswa.id');
        $query = $this->db->get()->result_array();

        return $query;
    }

    public function listNilaiPP_Per()
    {

        $this->db->select('siswa.nama,profil_form.wkt_input, profil_form.id,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 1) as perPP1,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 2) as perPP2,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 3) as perPP3,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 4) as perPP4,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 5) as perPP5,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 6) as perPP6,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 7) as perPP7,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 8) as perPP8,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 9) as perPP9,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 10) as perPP10,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 11) as perPP11,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 12) as perPP12,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 13) as perPP13,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 14) as perPP14,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 15) as perPP15,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 16) as perPP16,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 17) as perPP17,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 18) as perPP18, 
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 19) as perPP19  
            ');
        $this->db->from('profil_form');
        $this->db->join('siswa', 'profil_form.siswa_id = siswa.id');
        $query = $this->db->get()->result_array();

        return $query;
    }

    public function listNilaiProfilSiswa($id_siswa)
    {

        $this->db->select('siswa.nama, profil_form.wkt_input, profil_form.id,
            (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id) AS count_nilai');

        $this->db->from('profil_form');
        $this->db->join('siswa', 'profil_form.siswa_id = siswa.id');
        $this->db->where('profil_form.siswa_id', $id_siswa);
        $query = $this->db->get()->result_array();

        return $query;
    }

    public function listNilaiProfilSiswaKat($id_siswa)
    {

        $this->db->select('siswa.nama, profil_form.wkt_input, profil_form.id,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND kategori_id = 1) as katPP1,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND kategori_id = 2) as katPP2,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND kategori_id = 3) as katPP3,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND kategori_id = 4) as katPP4,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND kategori_id = 5) as katPP5,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND kategori_id = 6) as katPP6'
     );

        $this->db->from('profil_form');
        $this->db->join('siswa', 'profil_form.siswa_id = siswa.id');
        $this->db->where('profil_form.siswa_id', $id_siswa);
        $query = $this->db->get()->result_array();

        return $query;
    }

    public function listNilaiProfilSiswaPer($id_siswa)
    {

        $this->db->select('siswa.nama, profil_form.wkt_input, profil_form.id,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 1) as perPP1,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 2) as perPP2,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 3) as perPP3,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 4) as perPP4,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 5) as perPP5,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 6) as perPP6,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 7) as perPP7,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 8) as perPP8,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 9) as perPP9,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 10) as perPP10,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 11) as perPP11,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 12) as perPP12,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 13) as perPP13,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 14) as perPP14,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 15) as perPP15,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 16) as perPP16,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 17) as perPP17,
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 18) as perPP18, 
        (SELECT COUNT(nilai_id) FROM jawaban_profil WHERE form_profil_id = profil_form.id AND pertanyaan_id = 19) as perPP19'
     );

        $this->db->from('profil_form');
        $this->db->join('siswa', 'profil_form.siswa_id = siswa.id');
        $this->db->where('profil_form.siswa_id', $id_siswa);
        $query = $this->db->get()->result_array();

        return $query;
    }
}
