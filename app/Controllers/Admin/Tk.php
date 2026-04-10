<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\TkModel;

class Tk extends BaseController
{
    protected $tkModel;

    public function __construct()
    {
        $this->tkModel = new TkModel();
    }

    public function index()
    {
        $data['tk'] = $this->tkModel->findAll();
        return view('admin/tk/index', $data);
    }

    public function store()
    {
        $this->tkModel->insert([
            'nama_tk'   => $this->request->getPost('nama_tk'),
            'alamat_tk' => $this->request->getPost('alamat_tk')
        ]);
        return redirect()->to('/admin/tk')->with('success', 'Data TK berhasil ditambahkan');
    }

    public function update($id)
    {
        $this->tkModel->update($id, [
            'nama_tk'   => $this->request->getPost('nama_tk'),
            'alamat_tk' => $this->request->getPost('alamat_tk')
        ]);
        return redirect()->to('/admin/tk')->with('success', 'Data TK berhasil diubah');
    }

    public function delete($id)
    {
        $this->tkModel->delete($id);
        return redirect()->to('/admin/tk')->with('success', 'Data TK berhasil dihapus');
    }
}