<?php

namespace App\Controllers;

use App\Models\GolruangModel;

class Data_golongan_ruang extends BaseController {

    protected  $golruangModel; 
    
    public function __construct() {
        $this->golruangModel = new GolruangModel();
    }
    
    public function index() {
        
        $golruang = $this->golruangModel->findAll();
    
        $data = [
            'title' => 'E-Cuti | Data Golongan Ruang',
            'container_fluid' => 'Data Golongan Ruang',
            'golruang' => $golruang
        ];
        
        return view('administrator/data-golongan-ruang/view-data', $data);
    }

}