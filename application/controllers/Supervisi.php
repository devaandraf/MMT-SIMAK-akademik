<?php

class Supervisi extends CI_Controller
{


    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {

        $this->view["title"]    = "supervisi akademik guru";
        $this->view["content"]  = "be/content/supervisi/akademik_guru";

        $this->load->view("be/layout/wrapper", $this->view);
    }
}
