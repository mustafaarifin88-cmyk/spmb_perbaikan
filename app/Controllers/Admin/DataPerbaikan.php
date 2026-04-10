<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\PendaftaranModel;

class DataPerbaikan extends BaseController
{
    public function index()
    {
        $pendaftaranModel = new PendaftaranModel();
        $data['siswa_perbaikan'] = $pendaftaranModel->where('status_pendaftaran', 'Perbaikan')->findAll();
        return view('admin/data_perbaikan/index', $data);
    }
}