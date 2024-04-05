<?php

class Management_kelas extends CI_Controller
{

    private $view;

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->view["title"]    = "Management Kelas";
        $this->view["subtitle"] = "Kelas BTQ";
        $this->view["menu"]     = "Data Master";
        $this->view["submenu"]  = "Management Kelas";
        $this->view["content"]  = "be/content/management_kelas/index";

        $this->load->view("be/layout/wrapper", $this->view);
    }
}
