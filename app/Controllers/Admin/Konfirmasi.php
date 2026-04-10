<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\PendaftaranModel;
use App\Models\ProfilSekolahModel;
use App\Models\LatarBelakangModel;
use App\Models\BerkasPendaftaranModel;
use App\Models\AgamaModel;
use App\Models\PekerjaanModel;
use App\Models\AlamatModel;
use App\Models\PendidikanModel;
use App\Models\TkModel;
use Dompdf\Dompdf;
use Dompdf\Options;

class Konfirmasi extends BaseController
{
    protected $pendaftaranModel;

    public function __construct()
    {
        $this->pendaftaranModel = new PendaftaranModel();
    }

    public function index()
    {
        $data['pendaftar'] = $this->pendaftaranModel->orderBy('created_at', 'DESC')->findAll();
        return view('admin/konfirmasi/index', $data);
    }

    public function detail($id)
    {
        $berkasModel = new BerkasPendaftaranModel();
        
        $data['pendaftaran'] = $this->pendaftaranModel
            ->select('pendaftaran.*, a.nama_agama, tk.nama_tk as tk_pilihan, 
                      pk_a.nama_pekerjaan as pk_ayah, 
                      pk_i.nama_pekerjaan as pk_ibu, 
                      pk_w.nama_pekerjaan as pk_wali,
                      pen_a.nama_pendidikan as edu_ayah,
                      pen_i.nama_pendidikan as edu_ibu,
                      al.provinsi, al.kabupaten, al.kecamatan, al.desa')
            ->join('agama as a', 'a.id = pendaftaran.id_agama', 'left')
            ->join('taman_kanak_kanak as tk', 'tk.id = pendaftaran.id_tk', 'left')
            ->join('pekerjaan as pk_a', 'pk_a.id = pendaftaran.id_pekerjaan_ayah', 'left')
            ->join('pekerjaan as pk_i', 'pk_i.id = pendaftaran.id_pekerjaan_ibu', 'left')
            ->join('pekerjaan as pk_w', 'pk_w.id = pendaftaran.id_pekerjaan_wali', 'left')
            ->join('pendidikan as pen_a', 'pen_a.id = pendaftaran.id_pendidikan_ayah', 'left')
            ->join('pendidikan as pen_i', 'pen_i.id = pendaftaran.id_pendidikan_ibu', 'left')
            ->join('alamat as al', 'al.id = pendaftaran.id_alamat', 'left')
            ->find($id);

        $data['berkas'] = $berkasModel->select('berkas_pendaftaran.*, persyaratan.nama_persyaratan')
                                      ->join('persyaratan', 'persyaratan.id = berkas_pendaftaran.id_persyaratan')
                                      ->where('id_pendaftaran', $id)
                                      ->findAll();

        $data['pas_foto'] = $berkasModel->select('berkas_pendaftaran.file_path')
                                        ->join('persyaratan', 'persyaratan.id = berkas_pendaftaran.id_persyaratan')
                                        ->where('id_pendaftaran', $id)
                                        ->like('persyaratan.nama_persyaratan', 'Pas Photo')
                                        ->first();
                                      
        return view('admin/konfirmasi/detail', $data);
    }

    public function izinkan_perbaikan($id)
    {
        $this->pendaftaranModel->update($id, [
            'status_pendaftaran' => 'Perbaikan',
            'pesan_perbaikan' => $this->request->getPost('pesan_perbaikan') ?: 'Harap perbaiki data pendaftaran Anda.'
        ]);
        return redirect()->back()->with('success', 'Status siswa berhasil diubah ke Perbaikan Berkas.');
    }

    public function edit_siswa($id)
    {
        $data['pendaftaran'] = $this->pendaftaranModel->find($id);
        $data['alamat'] = (new AlamatModel())->findAll();
        $data['pendidikan'] = (new PendidikanModel())->findAll();
        $data['tk'] = (new TkModel())->findAll();
        $data['pekerjaan'] = (new PekerjaanModel())->findAll();
        
        return view('admin/konfirmasi/form_edit_siswa', $data);
    }

    public function update_siswa($id)
    {
        $this->pendaftaranModel->update($id, $this->request->getPost());
        return redirect()->to('/admin/konfirmasi')->with('success', 'Data pendaftar berhasil diperbarui.');
    }

    public function delete_siswa($id)
    {
        $this->pendaftaranModel->delete($id);
        return redirect()->to('/admin/konfirmasi')->with('success', 'Data pendaftar berhasil dihapus secara permanen.');
    }

    public function approve($id)
    {
        $this->pendaftaranModel->update($id, ['status_pendaftaran' => 'Diterima', 'alasan_tolak' => null]);
        return redirect()->back()->with('success', 'Pendaftaran telah disetujui.');
    }

    public function reject($id)
    {
        $this->pendaftaranModel->update($id, [
            'status_pendaftaran' => 'Ditolak',
            'alasan_tolak' => $this->request->getPost('alasan_tolak')
        ]);
        return redirect()->back()->with('success', 'Pendaftaran telah ditolak.');
    }

    public function cetak_pdf($id)
    {
        $profilModel = new ProfilSekolahModel();
        $latarModel = new LatarBelakangModel();
        $berkasModel = new BerkasPendaftaranModel();

        $data['pendaftaran'] = $this->pendaftaranModel
            ->select('pendaftaran.*, p_ayah.nama_pekerjaan as pk_ayah, p_ibu.nama_pekerjaan as pk_ibu, pk_w.nama_pekerjaan as pk_wali, tk.nama_tk, al.provinsi, al.kabupaten, al.kecamatan, al.desa, pen_a.nama_pendidikan as edu_ayah, pen_i.nama_pendidikan as edu_ibu')
            ->join('pekerjaan as p_ayah', 'p_ayah.id = pendaftaran.id_pekerjaan_ayah', 'left')
            ->join('pekerjaan as p_ibu', 'p_ibu.id = pendaftaran.id_pekerjaan_ibu', 'left')
            ->join('pekerjaan as pk_w', 'pk_w.id = pendaftaran.id_pekerjaan_wali', 'left')
            ->join('taman_kanak_kanak as tk', 'tk.id = pendaftaran.id_tk', 'left')
            ->join('alamat as al', 'al.id = pendaftaran.id_alamat', 'left')
            ->join('pendidikan as pen_a', 'pen_a.id = pendaftaran.id_pendidikan_ayah', 'left')
            ->join('pendidikan as pen_i', 'pen_i.id = pendaftaran.id_pendidikan_ibu', 'left')
            ->find($id);

        $data['pas_foto'] = $berkasModel->select('berkas_pendaftaran.file_path')
            ->join('persyaratan', 'persyaratan.id = berkas_pendaftaran.id_persyaratan')
            ->where('id_pendaftaran', $id)
            ->like('persyaratan.nama_persyaratan', 'Pas Photo')
            ->first();

        $data['sekolah'] = $profilModel->first();
        $data['latar'] = $latarModel->where('is_active', 1)->first();

        $html = view('pdf/formulir', $data);
        $options = new Options();
        $options->set('isRemoteEnabled', true);
        $dompdf = new Dompdf($options);
        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'portrait');
        $dompdf->render();
        $dompdf->stream("Formulir_".$data['pendaftaran']->nama_peserta_didik.".pdf", ["Attachment" => false]);
    }
}