<?php

class Dashboard extends CI_Controller
{

    private $view;

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {

        $this->view["title"]    = "Dashboard";
        $this->view["content"]  = "be/content/dashboard/index";

        $this->load->view("be/layout/wrapper", $this->view);
    }
}
