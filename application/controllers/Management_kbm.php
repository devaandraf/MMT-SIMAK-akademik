<?php

class Management_kbm extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->view["title"]    = "Management KBM";
        $this->view["content"]  = "be/content/management_kbm/index";

        $this->load->view("be/layout/wrapper", $this->view);
    }
}
