<?php

namespace App\Models;

use CodeIgniter\Model;

class AlamatModel extends Model
{
    protected $table            = 'alamat';
    protected $primaryKey       = 'id';
    protected $allowedFields    = ['provinsi', 'kabupaten', 'kecamatan', 'desa'];
    protected $returnType       = 'object';
}