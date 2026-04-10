<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\UserModel;

class SiswaUser extends BaseController
{
    protected $userModel;

    public function __construct()
    {
        $this->userModel = new UserModel();
    }

    public function index()
    {
        $data['users'] = $this->userModel->where('level', 'siswa')->findAll();
        return view('admin/siswa_user/index', $data);
    }

    public function update($id)
    {
        $data = [
            'nama_lengkap' => $this->request->getPost('nama_lengkap'),
            'username'     => $this->request->getPost('username')
        ];

        $password = $this->request->getPost('password');
        if (!empty($password)) {
            $data['password'] = password_hash($password, PASSWORD_DEFAULT);
        }

        $this->userModel->update($id, $data);
        return redirect()->to('/admin/siswauser')->with('success', 'Akun calon siswa berhasil diperbarui.');
    }

    public function delete($id)
    {
        $this->userModel->delete($id);
        return redirect()->to('/admin/siswauser')->with('success', 'Akun calon siswa berhasil dihapus.');
    }
}