<?php

namespace App\Controllers;

class Administrator extends BaseController {
    
    public function index() {
        $data ['title'] = "E-Cuti | Dashboard";
        $data ['container_fluid'] ="Dashboard"; 
        return view('administrator/dashboard', $data);
    }
    
    // Data Pegawai
    public function data_pegawai()
    {
        $data ['title'] = "E-Cuti | Data Pegawai";
        $data ['container_fluid'] ="Data Pegawai"; 
        return view('administrator/pegawai/view-data', $data);
    }

}
