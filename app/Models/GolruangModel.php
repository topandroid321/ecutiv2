<?php

namespace App\Models;

use CodeIgniter\Model;

class GolruangModel extends Model
{
    protected $table      = 'tbl_golongan_ruang';
    protected $primaryKey = 'id_gol_ruang';
    protected $useTimestamps = true;
}