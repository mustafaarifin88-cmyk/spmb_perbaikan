<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\AlamatModel;

class Alamat extends BaseController
{
    protected $alamatModel;

    public function __construct()
    {
        $this->alamatModel = new AlamatModel();
    }

    public function index()
    {
        $data['alamat'] = $this->alamatModel->findAll();
        return view('admin/alamat/index', $data);
    }

    public function store()
    {
        $this->alamatModel->insert([
            'provinsi'  => $this->request->getPost('provinsi'),
            'kabupaten' => $this->request->getPost('kabupaten'),
            'kecamatan' => $this->request->getPost('kecamatan'),
            'desa'      => $this->request->getPost('desa'),
        ]);
        return redirect()->to('/admin/alamat')->with('success', 'Data alamat berhasil ditambahkan');
    }

    public function update($id)
    {
        $this->alamatModel->update($id, [
            'provinsi'  => $this->request->getPost('provinsi'),
            'kabupaten' => $this->request->getPost('kabupaten'),
            'kecamatan' => $this->request->getPost('kecamatan'),
            'desa'      => $this->request->getPost('desa'),
        ]);
        return redirect()->to('/admin/alamat')->with('success', 'Data alamat berhasil diubah');
    }

    public function delete($id)
    {
        $this->alamatModel->delete($id);
        return redirect()->to('/admin/alamat')->with('success', 'Data alamat berhasil dihapus');
    }
}