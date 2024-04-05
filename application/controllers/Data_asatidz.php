<?php

class Data_asatidz extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {

        $this->view["title"]    = "Data Asatidz";
        $this->view["subtitle"] = "Daftar Data Asatidz";
        $this->view["menu"]     = "Data Master";
        $this->view["submenu"]  = "Data Asatidz";
        $this->view["content"]  = "be/content/data_asatidz/index";

        $this->load->view("be/layout/wrapper", $this->view);
    }
}
