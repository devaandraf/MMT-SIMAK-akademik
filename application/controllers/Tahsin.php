<?php

class Tahsin extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model("Tahsin_model", "tahsinModel");
        $this->load->model("DataSiswa_model", "dataSiswaModel");
        $this->load->library('form_validation');
    }

    public function index()
    {

        $this->view["title"]    = "Tahsin";
        $this->view["subtitle"] = "Penilaian Tahsin";
        $this->view["menu"]     = "Penilaian";
        $this->view["submenu"]  = "Penilaian Tahsin";
        $this->view["content"]  = "be/content/tahsin/index";

            // persiapkan curl
            $ch = curl_init(); 

            // set url 
            curl_setopt($ch, CURLOPT_URL, "https://equran.id/api/surat");

            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
            
            // return the transfer as a string 
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); 

            // $output contains the output string 
            $output = curl_exec($ch); 

            // tutup curl 
            curl_close($ch);      

            // mengubah hasil curl menjadi array
            $data['tahsin'] = json_decode($output, true);

            $this->view["data_siswa"] = $this->dataSiswaModel->getAllDataSiswa();
            $this->view["dataList_Tahsin"] = $this->dataSiswaModel->listTahsin();

            $this->view["dataTahsin"] = $this->tahsinModel->getTahsin();

            // mengirim data ke view
            $this->load->view("be/layout/wrapper", array_merge($this->view, $data));
    }

    public function riwayat_tahsin()
    {

        $this->view["title"]    = "Tahsin";
        $this->view["subtitle"] = "Riwayat Tahsin";
        $this->view["menu"]     = "Laporan";
        $this->view["submenu"]  = "Riwayat Tahsin";
        $this->view["content"]  = "be/content/tahsin/riwayat_tahsin";

            // persiapkan curl
            $ch = curl_init(); 

            // set url 
            curl_setopt($ch, CURLOPT_URL, "https://equran.id/api/surat");

            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
            
            // return the transfer as a string 
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); 

            // $output contains the output string 
            $output = curl_exec($ch); 

            // tutup curl 
            curl_close($ch);      

            // mengubah hasil curl menjadi array
            $data['tahsin'] = json_decode($output, true);

            $this->view["data_siswa"] = $this->dataSiswaModel->getAllDataSiswa();
            $this->view["dataList_Tahsin"] = $this->dataSiswaModel->listTahsin();

            $this->view["dataTahsin"] = $this->tahsinModel->getTahsin();

            // mengirim data ke view
            $this->load->view("be/layout/wrapper", array_merge($this->view, $data));
    }

    public function tambah_data()
    {

        $form_validation = $this->form_validation;

        $field = [
            [
                "field"     => "nama",
                "label"     => "nama_siswa",
                "rules"     => "required|trim",
                "errors"    => ["required" => '%s tidak boleh kosong !'],
            ],
            [
                "field"     => "nama_surat",
                "label"     => "namanomorsurat",
                "rules"     => "required|trim",
                "errors"    => ["required" => '%s tidak boleh kosong !'],
            ],
            [
                "field"     => "ayat[]",
                "label"     => "ayat1",
                "rules"     => "required|trim",
                "errors"    => ["required" => '%s tidak boleh kosong !'],
            ],
            [
                "field"     => "pendamping",
                "label"     => "pendamping",
                "rules"     => "required|trim",
                "errors"    => ["required" => '%s tidak boleh kosong !'],
            ],
        ];

        
        $form_validation->set_rules($field); 

        if ($form_validation->run() === true) {

            // $namasuratbaru = explode("|", htmlspecialchars($this->input->post("nama_surat")))[1];
        
            $data_post["siswa_id"]               =  htmlspecialchars($this->input->post("nama"));
            $data_post["nama_surat"]               =  htmlspecialchars($this->input->post("nama_surat"));
            $data_post["ayat_awal"]               = htmlspecialchars($this->input->post("ayat")[0]);
            $data_post["ayat_akhir"]               = htmlspecialchars($this->input->post("ayat")[1]);
            $data_post["pendamping"]               = htmlspecialchars($this->input->post("pendamping"));
            $data_post["catatan"]               = htmlspecialchars($this->input->post("catatan"));
            $data_post["deskripsi"]               = htmlspecialchars($this->input->post("deskripsi"));
            // $data_post["created_by"]            = ($this->session->userdata("state")) ? $this->session->userdata("nama") : "sistem";
            $data_post["created_at"]          = date("Y-m-d H:i:s");  

            if ($this->tahsinModel->tambahData($data_post)) {

                $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert"> Selamat, Data berhasil di tambahkan! </div>');
                $data_json["status"]            = "berhasil";
            } else {
                $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert"> Maaf, Data belum berhasil di tambahkan! </div>');
                $data_json["status"]            = "gagal";
            }
        } else {

            $data_json["status"]                = "error";
            $data_json["err_tahsin"]           = form_error("tahsin");
        }

        echo json_encode($data_json);

        redirect('penilaian/tahsin');
    }

}
