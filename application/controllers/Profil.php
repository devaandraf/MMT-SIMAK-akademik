<?php

class Profil extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();

        $this->load->model("DataSiswa_model", "dataSiswaModel");
        $this->load->model("Jnt_PertanyaanKategoriProfil_model", "data_pp_jntPertanyaanKategori");
        $this->load->model("Jnt_PertanyaanNilaiProfil_model", "data_jnt_pp_PertanyaanNilai");
        $this->load->model("KategoriProfil_model", "kategoriProfilModel"); 
        $this->load->model("ProfilForm_model", "profilFormModel");
    }

    public function index()
    {

        $this->view["title"]    = "Profil Pelajar Pancasila";
        $this->view["subtitle"] = "Data Profil Pancasila";
        $this->view["menu"]     = "Data Master";
        $this->view["submenu"]  = "Profil Pancasila";
        $this->view["content"]  = "be/content/profil/index";
        
        $this->view["data_siswa"] = $this->dataSiswaModel->getAllDataSiswa();
        $this->view["data_listNilai"] = $this->dataSiswaModel->listNilaiProfil();
        $this->view["data_listNilaiPer"] = $this->dataSiswaModel->listNilaiPP_Per();

        // var_dump(getPertanyaanPP(1));
        // die;

        $this->load->view("be/layout/wrapper", $this->view);
    }

    public function tambah_profil()
    {
        $this->view["title"]    = "Input Profil Pancasila";
        $this->view["subtitle"] = "Input Data Profil Pancasila";
        $this->view["menu"]     = "Profil Pancasila";
        $this->view["submenu"]  = "Data Profil Pancaila";
        $this->view["content"]  = "be/content/profil/tambah_profil";

        $this->view["data_siswa"] = $this->dataSiswaModel->getAllDataSiswa();
        $this->view["kategoriProfil"] = $this->kategoriProfilModel->getAllKategori();

        // $this->view["data_jntPertanyaanKategori"] = $this->data_jntPertanyaanKategori->getPertanyaanKategori();

        $this->load->view("be/layout/wrapper", $this->view);
    }

    public function hapus_dataPP($id)
    {
        // $id = $this->input->post('id');

        if ($this->profilFormModel->deleteProfil($id)) {

            $data_json["status"] = "berhasil";
        } else {

            $data_json["status"] = "gagal";
        }

        echo json_encode($data_json);

        redirect('master/data_profil');
    }

    public function submit_formPP()
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
            [
                "field"     => "wkt_input",
                "label"     => "wkt_input",
                "rules"     => "required|trim|callback_is_wkt_exist",
                "errors"    => ["required" => '%s tidak boleh kosong cuaks!'],
            ],

        ];

        $form_validation->set_rules($field);

        if ($form_validation->run() === true) {

            // var_dump($this->input->post("pertanyaan"));
            // die;

            $success = 0;
            $data_jawaban = [];
            $pertanyaan = $this->input->post("pertanyaan");
            for ($x = 0; $x < $this->input->post("j_pertanyaan"); $x++) 
            {
                if (array_key_exists($x, $pertanyaan))
                {
                    $pertanyaan[$x];

                    for($i = 0; $i < count($pertanyaan[$x]); $i++){

                        $row= [];
                        $per = $pertanyaan[$x][$i];
                    
                        if($per){
                            $pty = $pertanyaan[$x][$i];
                            $arr = explode("-",$pty);
    
                            $row['kategori_id'] = $arr[0];
                            $row['pertanyaan_id'] = $arr[1];
                            $row['nilai_id'] = $arr[2];
    
                            array_push($data_jawaban, $row);
                            $success++;
                        }
                    }
                }
            }

            if($success){
                $data_form = 
                [
                    "siswa_id" => $this->input->post("nama"),
                    "wkt_input" => $this->input->post("wkt_input"). "-01",
                    "created_by" => "",
                ];

                $result = $this->profilFormModel->insert_data($data_form, $data_jawaban);

                if($result )
                {
                    $this->session->set_flashdata("berhasil", "data berhasil");
                }
                else
                {
                    $this->session->set_flashdata("gagal", "data gagal");
                }

                redirect("master/data_profil"); 
            }else
            {
                $this->session->set_flashdata("gagal", "data gagal");
            }

        } else {

            $this->session->set_flashdata("gagal", "data gagal");


            redirect("master/input/input_profil"); 
        }

        // redirect('penilaian/penilaian_habit');

    }

    public function is_wkt_exist($wkt_input)
    {
        return $this->profilFormModel->cekDuplikat($wkt_input);

        // var_dump($wkt_input);
        // die;
                
    }

    

}