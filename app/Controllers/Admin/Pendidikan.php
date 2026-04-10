<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\PendidikanModel;

class Pendidikan extends BaseController
{
    protected $pendidikanModel;

    public function __construct()
    {
        $this->pendidikanModel = new PendidikanModel();
    }

    public function index()
    {
        $data['pendidikan'] = $this->pendidikanModel->findAll();
        return view('admin/pendidikan/index', $data);
    }

    public function store()
    {
        $this->pendidikanModel->insert([
            'nama_pendidikan' => $this->request->getPost('nama_pendidikan')
        ]);
        return redirect()->to('/admin/pendidikan')->with('success', 'Data pendidikan berhasil ditambahkan');
    }

    public function update($id)
    {
        $this->pendidikanModel->update($id, [
            'nama_pendidikan' => $this->request->getPost('nama_pendidikan')
        ]);
        return redirect()->to('/admin/pendidikan')->with('success', 'Data pendidikan berhasil diubah');
    }

    public function delete($id)
    {
        $this->pendidikanModel->delete($id);
        return redirect()->to('/admin/pendidikan')->with('success', 'Data pendidikan berhasil dihapus');
    }
}