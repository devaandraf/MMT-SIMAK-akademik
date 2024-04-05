<?php

class Management_jilid extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->view["title"]    = "Management Jilid";
        $this->view["subtitle"] = "Jilid BTQ";
        $this->view["menu"]     = "Data Master";
        $this->view["submenu"]  = "Management Jilid";
        $this->view["content"]  = "be/content/management_jilid/index";

        $this->load->view("be/layout/wrapper", $this->view);
    }
}
