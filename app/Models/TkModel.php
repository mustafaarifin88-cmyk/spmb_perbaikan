<?php

namespace App\Models;

use CodeIgniter\Model;

class TkModel extends Model
{
    protected $table            = 'taman_kanak_kanak';
    protected $primaryKey       = 'id';
    protected $allowedFields    = ['nama_tk', 'alamat_tk'];
    protected $returnType       = 'object';
}