<?php

class Data_santri extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model("DataSiswa_model", "dataSiswaModel");
    }

    public function index()
    {

        $this->view["title"]    = "Data Siswa";
        $this->view["subtitle"] = "Daftar Data Siswa";
        $this->view["menu"]     = "Data Master";
        $this->view["submenu"]  = "Data Siswa";
        $this->view["content"]  = "be/content/data_santri/index";

        $this->view["data_siswa"] = $this->dataSiswaModel->getAllDataSiswa();
        $this->view["data_listNilai"] = $this->dataSiswaModel->listNilai();
        $this->view["data_listNilaiPP"] = $this->dataSiswaModel->listNilaiProfil();

        $this->load->view("be/layout/wrapper", $this->view);
    }

    public function tambah_data()
    {

        $form_validation = $this->form_validation;

        $field = [
            [
                "field"     => "nama",
                "label"     => "Nama Siswa",
                "rules"     => "required|trim",
                "errors"    => ["required" => '%s tidak boleh kosong !'],
            ],
            [
                "field"     => "nis",
                "label"     => "nis",
                "rules"     => "required|trim",
                "errors"    => ["required" => '%s tidak boleh kosong !'],
            ],
            [
                "field"     => "jk",
                "label"     => "jk",
                "rules"     => "required|trim",
                "errors"    => ["required" => '%s tidak boleh kosong !'],
            ],
        ];

        $form_validation->set_rules($field);

        if ($form_validation->run() === true) {

            $data_post["nama"]               = htmlspecialchars($this->input->post("nama"));
            $data_post["nis"]               = htmlspecialchars($this->input->post("nis"));
            $data_post["jk"]               = htmlspecialchars($this->input->post("jk"));
            $data_post["created_by"]            = ($this->session->userdata("nama")) ? $this->session->userdata("nama") : "sistem";
            $data_post["created_at"]          = date("Y-m-d H:i:s");

            if ($this->dataSiswaModel->tambahData($data_post)) {

                $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert"> Selamat, Data berhasil di tambahkan! </div>');
                $data_json["status"]            = "berhasil";
            } else {
                $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert"> Maaf, Data belum berhasil di tambahkan! </div>');
                $data_json["status"]            = "gagal";
            }
        } else {

            $data_json["status"]                = "error";
            $data_json["err_siswa"]           = form_error("siswa");
        }

        echo json_encode($data_json);

        redirect('master/data_santri');
    }

    
    public function hapus_data($id)
    {
        // $id = $this->input->post('id');

        if ($this->dataSiswaModel->deleteSiswa($id)) {

            $data_json["status"] = "berhasil";
        } else {

            $data_json["status"] = "gagal";
        }

        echo json_encode($data_json);

        redirect('master/data_santri');
    }

    // public function ubah_modal($id)
    // { 
    //     $where = ['id' => base64_decode($id)];

    //     $this->view["data_siswa"] = $this->dataSiswaModel->detail_data($where)->row_array();
    //     $this->load->view('be/content/jabatan/ubah_modal', $this->view);
    // }

    public function ubah_data()
    {

        $form_validation = $this->form_validation;

        $field = [
            [
                "field"     => "nama",
                "label"     => "Nama Siswa",
                "rules"     => "required|trim",
                "errors"    => ["required" => '%s tidak boleh kosong cuaks!'],
            ],
            [
                "field"     => "nis",
                "label"     => "nis",
                "rules"     => "required|trim",
                "errors"    => ["required" => '%s tidak boleh kosong cuaks!'],
            ],
            [
                "field"     => "id",
                "label"     => "ama_siswa_id",
                "rules"     => "required|trim",
                "errors"    => ["required" => '%s tidak boleh kosong cuaks!'],
            ],
        ];

        $form_validation->set_rules($field);

        if ($form_validation->run() === true) {

            $data_post["id"]               = htmlspecialchars($this->input->post("id"));
            $data_post["nama"]               = htmlspecialchars($this->input->post("nama"));
            $data_post["nis"]               = htmlspecialchars($this->input->post("nis"));
            $data_post["created_by"]            = ($this->session->userdata("nama")) ? $this->session->userdata("nama") : "sistem";
            $data_post["created_at"]          = date("Y-m-d H:i:s");

            if ($this->dataSiswaModel->ubahData($data_post)) {

                $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert"> Selamat, Data berhasil di ubah! </div>');
                $data_json["status"]            = "berhasil";
            } else {
                $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert"> Maaf, Data belum berhasil di ubah! </div>');
                $data_json["status"]            = "gagal";
            }
        } else {

            $data_json["status"]                = "error";
            $data_json["err_siswa_u"]         = form_error("siswa");
        }

        echo json_encode($data_json);
    }
}