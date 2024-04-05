<?php

class Penilaian_siswa extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model("Siswa_model");
    }

    public function index()
    {
        
        $this->view["title"]    = "Penilaian Siswa";
        $this->view["subtitle"] = "";
        $this->view["menu"]     = "";
        $this->view["submenu"]  = "";
        $this->view["content"]  = "be/content/penilaian_siswa/index";

        // Menyiapkan data untuk chart
        $this->view['chartData'] = $this->prepareChartData($this->Siswa_model->getAll());
        $this->load->view("be/layout/wrapper", $this->view);
    }

    private function prepareChartData($data_nilai_siswa)
    {
        $chartData = [];
        foreach ($data_nilai_siswa as $row) {
            $chartData[] = [
                'label' => $row['nama'],
                'data' => $row['nilai'],
            ];
        }
        return $chartData;
    }
}