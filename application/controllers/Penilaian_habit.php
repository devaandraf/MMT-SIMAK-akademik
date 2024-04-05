<?php

class Penilaian_habit extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('pdfgenerator');

        $this->load->model("DataSiswa_model", "dataSiswaModel");
        $this->load->model("Jnt_PertanyaanKategoriHabit_model", "data_jntPertanyaanKategori");
        $this->load->model("Jnt_PertanyaanNilaiHabit_model", "data_jntPertanyaanNilai");
        $this->load->model("KategoriHabit_model", "kategoriHabitModel");
        $this->load->model("PembiasaanForm_model", "pembiasaanFormModel");
    }

    public function index()
    {
        $this->view["title"]    = "Penilaian Habit";
        $this->view["subtitle"] = "Data Nilai Habit";
        $this->view["menu"]     = "Penilaian";
        $this->view["submenu"]  = "Penilaian Habit";
        $this->view["content"]  = "be/content/penilaian_habit/index";

        $this->view["data_siswa"] = $this->dataSiswaModel->getAllDataSiswa();
        $this->view["data_listNilai"] = $this->dataSiswaModel->listNilai();
        $this->view["data_listNilaiPer"] = $this->dataSiswaModel->listNilaiPer();

        // var_dump($this->dataSiswaModel->listNilai());
        // die;
        // $getData = getNilai(1);
        // $newArr = array_map(function($v){
        //     return $v["nilai_angka"];
        // }, $getData);
        // $max = array_keys($newArr, max($newArr));
        // var_dump($max);
        // echo "<br>";
        // var_dump($newArr);
        // die;
        $this->load->view("be/layout/wrapper", $this->view);
    }

    public function progress()
    {
        $this->view["title"]    = "Progress Siswa";
        $this->view["subtitle"] = "Grafik Progress Siswa";
        $this->view["menu"]     = "Laporan";
        $this->view["submenu"]  = "Progress";
        $this->view["content"]  = "be/content/penilaian_habit/progress";

        $this->view["data_siswa"] = $this->dataSiswaModel->getAllDataSiswa();
        $this->view["data_listNilai"] = $this->dataSiswaModel->listNilai();
        $this->view["kategoriHabit"] = $this->kategoriHabitModel->getAllKategori();

        $this->load->view("be/layout/wrapper", $this->view);
    }

    public function rekap_nilai()
    {
        $this->view["title"]    = "Rekap Nilai Siswa";
        $this->view["subtitle"] = "Grafik Nilai Siswa";
        $this->view["menu"]     = "Laporan";
        $this->view["submenu"]  = "Rekap Nilai";
        $this->view["content"]  = "be/content/penilaian_habit/rekap_nilai";

        $this->view["data_siswa"] = $this->dataSiswaModel->getAllDataSiswa();
        $this->view["data_listNilai"] = $this->dataSiswaModel->listNilai();
        $this->view["kategoriHabit"] = $this->kategoriHabitModel->getAllKategori();

        $this->load->view("be/layout/wrapper", $this->view);
    }

    public function cetak_raport()
    {
        $this->view["title"]    = "Cetak Raport";
        $this->view["subtitle"] = "Nama Siswa";
        $this->view["menu"]     = "Laporan";
        $this->view["submenu"]  = "Cetak Raport";
        $this->view["content"]  = "be/content/cetak_raport/index";

        $this->view["data_siswa"] = $this->dataSiswaModel->getAllDataSiswa();
        $this->view["data_listNilai"] = $this->dataSiswaModel->listNilai();
        $this->view["kategoriHabit"] = $this->kategoriHabitModel->getAllKategori();

        $this->load->view("be/layout/wrapper", $this->view);
    }

    public function cetak_raport_siswa($id)
    {
        // Data Siswa
        $this->data['data_Siswa'] = $this->dataSiswaModel->getSiswaById((int)$id);
        if (!$this->data['data_Siswa']) {
            $this->session->set_flashdata('error', 'Maaf, Data siswa tidak ditemukan!');

            redirect('penilaian/cetak_raport');
        }

        // Data Habbit Kategori
        $this->data["data_listNilai"] = $this->dataSiswaModel->listNilaiSiswa((int)$id);

        // Data Habbit Pertanyaan
        $this->data["data_listNilaiPer"] = $this->dataSiswaModel->listNilaiSiswaPer((int)$id);

        // Data Pancasila Kategori
        $this->data["data_listNilaiProfilKat"] = $this->dataSiswaModel->listNilaiProfilSiswaKat((int)$id);

        // Data Pancasila Pertanyaan
        $this->data["data_listNilaiProfilPer"] = $this->dataSiswaModel->listNilaiProfilSiswaPer((int)$id);

        // Data Pancasila Total
        $this->data["data_listNilaiProfil"] = $this->dataSiswaModel->listNilaiProfilSiswa((int)$id);

        // Data Tahfidz
        $this->data["data_listJumlahTahfidz"] = $this->dataSiswaModel->listJumlahTahfidz((int)$id);

        // Data Tahsin
        $this->data["data_listJumlahTahsin"] = $this->dataSiswaModel->listJumlahTahsin((int)$id);

        // var_dump($this->data['data_listJumlahBacaTahfidz']);
        // die;

        $this->data['title_pdf'] = 'Raport Siswa';

        // $file_pdf = 'raport_siswa_' . date('YmdHis');
        $file_pdf = 'raport siswa ' . $this->data['data_Siswa']->nama ;
        $paper = 'A4';
        $orientation = "portrait";

        $html = $this->load->view('be/content/cetak_raport/pdf', $this->data, true);

        // run dompdf
        $this->pdfgenerator->generate($html, $file_pdf, $paper, $orientation);
    }

    // public function dataChart($id)
    // {

    //     $this->db->select('kategori.nama_kategori as kategori, SUM(jawaban_pembiasaan.nilai_angka) as nilai');
    //     $this->db->from('pembiasaan_form');
    //     $this->db->join('jawaban_pembiasaan', 'pembiasaan_form.id = jawaban_pembiasaan.form_habit_id', 'left');
    //     $this->db->join('jnt_pertanyaan_nilai', 'jawaban_pembiasaan.nilai_id = jnt_pertanyaan_nilai.id', 'left');
    //     $this->db->join('jnt_pertanyaan_kategori', 'jnt_pertanyaan_nilai.pertanyaan_id = jnt_pertanyaan_kategori.pertanyaan_id', 'left');
    //     $this->db->join('mst_kategori as kategori', 'jnt_pertanyaan_kategori.kategori_id = kategori.id', 'left');
    //     $this->db->where('pembiasaan_form.siswa_id', $id);
    //     $this->db->group_by('kategori.id');

    //     echo json_encode([
    //         "labels" => ["A", "B", "C", "D", "E"],
    //         "datasets"=> [
    //             [
    //                 "label" => "Data Set 1",
    //                 "data" => $data,
    //                 "backgroundColor "=> "rgba(255, 99, 132, 0.2)",
    //                 "borderColor" => "rgba(255, 99, 132, 1)",
    //                 "borderWidth" => 1
    //             ]
    //         ]
    //     ]);
    // }

    public function dataChart($id)
    {

        // Ambil nama siswa dari database berdasarkan ID
        $this->db->select('nama');
        $this->db->from('siswa');
        $this->db->where('id', $id);
        $query_nama_siswa = $this->db->get();
        $result_nama_siswa = $query_nama_siswa->row();

        if ($result_nama_siswa) {
            $nama_siswa = $result_nama_siswa->nama;
        } else {
            // Jika tidak ditemukan, berikan nama default atau lakukan penanganan kesalahan lainnya
            $nama_siswa = "Siswa Tidak Ditemukan";
        }

        $this->db->select('SUM(jawaban_pembiasaan.nilai_angka) as nilai');
        $this->db->from('pembiasaan_form');
        $this->db->join('jawaban_pembiasaan', 'pembiasaan_form.id = jawaban_pembiasaan.form_habit_id', 'left');
        $this->db->where('pembiasaan_form.siswa_id', $id);
        $this->db->group_by('jawaban_pembiasaan.kategori_id');
        $query1 = $this->db->get();
        $data1 = [];

        $this->db->select('COUNT(jawaban_profil.nilai_id) as nilaiPP');
        $this->db->from('profil_form');
        $this->db->join('jawaban_profil', 'profil_form.id = jawaban_profil.form_profil_id', 'left');
        $this->db->where('profil_form.siswa_id', $id);
        $this->db->group_by('jawaban_profil.kategori_id');
        $query2 = $this->db->get();
        $data2 = [];
        $total = 0;

        foreach ($query1->result() as $row1) {
            array_push($data1, $row1->nilai);
        }

        foreach ($query2->result() as $row2) {
            $total += $row2->nilaiPP;
        }

        array_push($data1, $total);

        echo json_encode([
            'labels' => ["Ibadah Wajib", "Ibadah Sunnah", "Literasi", "Muamalah", "Akhlak"],
            'datasets' => [
                [
                    'label' => 'Rekap Nilai ' . $nama_siswa,
                    'data' => $data1,
                    // 'data' => [65, 75, 80, 85, 70],
                    'backgroundColor' => "rgba(255, 99, 132, 0.2)",
                    'borderColor' => "rgba(255, 99, 132, 1)",
                    'borderWidth' => 1
                ]
            ]
        ]);
    }

    public function dataChart2($id)
    {

        // Ambil nama siswa dari database berdasarkan ID
        $this->db->select('nama');
        $this->db->from('siswa');
        $this->db->where('id', $id);
        $query_nama_siswa = $this->db->get();
        $result_nama_siswa = $query_nama_siswa->row();

        if ($result_nama_siswa) {
            $nama_siswa = $result_nama_siswa->nama;
        } else {
            // Jika tidak ditemukan, berikan nama default atau lakukan penanganan kesalahan lainnya
            $nama_siswa = "Siswa Tidak Ditemukan";
        }

        $this->db->select('SUM(jawaban_pembiasaan.nilai_angka) as nilai'); 
        $this->db->from('pembiasaan_form'); 
        $this->db->join('jawaban_pembiasaan', 'pembiasaan_form.id = jawaban_pembiasaan.form_habit_id', 'left'); 
        $this->db->where('pembiasaan_form.siswa_id', $id); 
        $this->db->group_by('jawaban_pembiasaan.kategori_id');
        $query1 = $this->db->get();
        $data1 = [];

        // $this->db->select('COUNT(jawaban_profil.nilai_id) as nilaiPP'); 
        // $this->db->from('profil_form'); 
        // $this->db->join('jawaban_profil', 'profil_form.id = jawaban_profil.form_profil_id', 'left'); 
        // $this->db->where('profil_form.siswa_id', $id); 
        // $this->db->group_by('jawaban_profil.kategori_id');
        // $query2 = $this->db->get();
        // $data2 = [];
        // $total = 0;

        foreach ($query1->result() as $row1) {
            array_push($data1, $row1->nilai);
        }

        // foreach ($query2->result() as $row2) {
        //         $total += $row2->nilaiPP;
        // }

        array_push($data1);

        echo json_encode([
            'labels' => ["Ibadah Wajib", "Ibadah Sunnah", "Literasi", "Muamalah"],
            'datasets' => [
                [
                    'label' => 'Rekap Nilai ' . $nama_siswa ,
                    'data' => $data1,
                    // 'data' => [65, 75, 80, 85, 70],
                    'backgroundColor' => "rgba(255, 99, 132, 0.2)",
                    'borderColor' => "rgba(255, 99, 132, 1)",
                    'borderWidth' => 1
                ]
            ]
        ]);
    }


    public function tambah_habit()
    {
        $this->view["title"]    = "Input Habit";
        $this->view["subtitle"] = "Input Data Habit";
        $this->view["menu"]     = "Penilaian Habit";
        $this->view["submenu"]  = "Input Habit";
        $this->view["content"]  = "be/content/penilaian_habit/tambah_habit";

        $this->view["data_siswa"] = $this->dataSiswaModel->getAllDataSiswa();

        $this->view["kategoriHabit"] = $this->kategoriHabitModel->getAllKategori();

        // var_dump($this->view["kategoriHabit"]);
        // die;

        // $this->view["data_jntPertanyaanKategori"] = $this->data_jntPertanyaanKategori->getPertanyaanKategori();

        $this->load->view("be/layout/wrapper", $this->view);
    }

    public function hapus_dataHabit($id)
    {
        // $id = $this->input->post('id');

        if ($this->pembiasaanFormModel->deleteHabit($id)) {

            $data_json["status"] = "berhasil";
        } else {

            $data_json["status"] = "gagal";
        }

        echo json_encode($data_json);

        redirect('penilaian/penilaian_habit');
    }

    public function submit_form()
    {

        // var_dump($this->input->post());
        // die;

        $form_validation = $this->form_validation;

        $field = [
            [
                "field"     => "nama",
                "label"     => "nama_siswa",
                "rules"     => "required|trim",
                "errors"    => ["required" => '%s tidak boleh kosong cuaks!'],
            ],

        ];

        $form_validation->set_rules($field);

        if ($form_validation->run() === true) {

            $data_jawaban = [];
            for ($x = 0; $x < $this->input->post("j_pertanyaan"); $x++) {
                $row = [];
                $this->input->post("pertanyaan$x");

                $pty = $this->input->post("pertanyaan$x");
                $arr = explode("-", $pty);

                $row['kategori_id'] = $arr[0];
                $row['pertanyaan_id'] = $arr[1];
                $row['nilai_id'] = $arr[2];
                $row['nilai_angka'] = $arr[3];

                array_push($data_jawaban, $row);
            }

            $data_form =
                [
                    "siswa_id" => $this->input->post("nama"),
                    "berhalangan" => $this->input->post("berhalangan"),
                    "wkt_input" => date("Y-m-d H:i:s"),
                    "created_by" => "",
                ];

            $result = $this->pembiasaanFormModel->insert_data($data_form, $data_jawaban);
            if ($result) {
                $this->session->keep_flashdata("berhasil", "data berhasil");
            } else {
                $this->session->keep_flashdata("gagal", "data gagal");
            }

            redirect("penilaian/penilaian_habit");
        } else {

            $data_json["status"]                = "error";
            $data_json["err_siswa"]           = form_error("siswa");
        }

        echo json_encode($data_json);

        // redirect('penilaian/penilaian_habit');

    }
}
