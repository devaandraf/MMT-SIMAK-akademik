<?php

class Jabatan extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model("Jabatan_model", "jabatan");
    }

    public function index()
    {

        $this->view["title"]    = "Jabatan";
        $this->view["subtitle"] = "Data Jabatan";
        $this->view["menu"]     = "Data Master";
        $this->view["submenu"]  = "Jabatan";
        $this->view["content"]  = "be/content/jabatan/index";

        $this->view["data_jabatan"] = $this->jabatan->ambilSemuaJabatan();

        $this->load->view("be/layout/wrapper", $this->view);
    }

    public function tambah_data()
    {

        $form_validation = $this->form_validation;

        $field = [
            [
                "field"     => "jabatan",
                "label"     => "Nama Jabatan",
                "rules"     => "required|trim",
                "errors"    => ["required" => '%s tidak boleh kosong cuaks!'],
            ],
        ];

        $form_validation->set_rules($field);

        if ($form_validation->run() === true) {

            $data_post["jabatan"]               = htmlspecialchars($this->input->post("jabatan"));
            $data_post["user_input"]            = ($this->session->userdata("nama")) ? $this->session->userdata("nama") : "sistem";
            $data_post["created_date"]          = date("Y-m-d H:i:s");

            if ($this->jabatan->tambahData($data_post)) {

                $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert"> Selamat, Data berhasil di tambahkan! </div>');
                $data_json["status"]            = "berhasil";
            } else {
                $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert"> Maaf, Data belum berhasil di tambahkan! </div>');
                $data_json["status"]            = "gagal";
            }
        } else {

            $data_json["status"]                = "error";
            $data_json["err_jabatan"]           = form_error("jabatan");
        }

        echo json_encode($data_json);
    }

    public function ubah_modal($id)
    { 
        $where = ['id' => base64_decode($id)];

        $this->view["data_jabatan"] = $this->jabatan->detail_data($where)->row_array();
        $this->load->view('be/content/jabatan/ubah_modal', $this->view);
    }

    public function ubah_data()
    {

        $form_validation = $this->form_validation;

        $field = [
            [
                "field"     => "id",
                "label"     => "Id Jabatan",
                "rules"     => "required|trim",
                "errors"    => ["required" => '%s tidak boleh kosong cuaks!'],
            ],
            [
                "field"     => "jabatan",
                "label"     => "Nama Jabatan",
                "rules"     => "required|trim",
                "errors"    => ["required" => '%s tidak boleh kosong cuaks!'],
            ],
        ];

        $form_validation->set_rules($field);

        if ($form_validation->run() === true) {

            $data_post["id"]             = htmlspecialchars($this->input->post("id"));
            $data_post["jabatan"]        = htmlspecialchars($this->input->post("jabatan"));
            $data_post["user_edit"]      = ($this->session->userdata("nama")) ? $this->session->userdata("nama") : "sistem";
            $data_post["updated_date"]   = date("Y-m-d H:i:s");

            if ($this->jabatan->ubahData($data_post)) {

                $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert"> Selamat, Data berhasil di ubah! </div>');
                $data_json["status"]            = "berhasil";
            } else {
                $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert"> Maaf, Data belum berhasil di ubah! </div>');
                $data_json["status"]            = "gagal";
            }
        } else {

            $data_json["status"]                = "error";
            $data_json["err_jabatan_u"]         = form_error("jabatan");
        }

        echo json_encode($data_json);
    }

    public function hapus_data()
    {
        $id = $this->input->post('id');

        if ($this->jabatan->hapusData($id)) {

            $data_json["status"] = "berhasil";
        } else {

            $data_json["status"] = "gagal";
        }

        echo json_encode($data_json);
    }
}
