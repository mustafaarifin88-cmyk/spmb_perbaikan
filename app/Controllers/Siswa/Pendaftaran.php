<?php

namespace App\Controllers\Siswa;

use App\Controllers\BaseController;
use App\Models\PendaftaranModel;
use App\Models\AgamaModel;
use App\Models\PekerjaanModel;
use App\Models\ProfilSekolahModel;
use App\Models\LatarBelakangModel;
use App\Models\PersyaratanModel;
use App\Models\BerkasPendaftaranModel;
use App\Models\PengaturanModel;
use App\Models\AlamatModel;
use App\Models\PendidikanModel;
use App\Models\TkModel;
use Dompdf\Dompdf;
use Dompdf\Options;

class Pendaftaran extends BaseController
{
    public function index()
    {
        $pendaftaranModel = new PendaftaranModel();
        $pengaturanModel = new PengaturanModel();

        $pengaturan = $pengaturanModel->first();
        if ($pengaturan && $pengaturan->is_open == 0) {
            return redirect()->to('/siswa/dashboard')->with('error', 'Masa pendaftaran sedang ditutup.');
        }

        $id_user = session()->get('id');
        $cekDaftar = $pendaftaranModel->where('id_user', $id_user)->first();

        if ($cekDaftar && $cekDaftar->status_pendaftaran != 'Perbaikan') {
            return redirect()->to('/siswa/dashboard');
        }

        $data = [
            'agama'       => (new AgamaModel())->findAll(),
            'pekerjaan'   => (new PekerjaanModel())->findAll(),
            'persyaratan' => (new PersyaratanModel())->findAll(),
            'alamat'      => (new AlamatModel())->findAll(),
            'pendidikan'  => (new PendidikanModel())->findAll(),
            'tk'          => (new TkModel())->findAll(),
            'pendaftaran' => $cekDaftar
        ];

        return view('siswa/pendaftaran/form_input', $data);
    }

    public function store()
    {
        $pendaftaranModel = new PendaftaranModel();
        $berkasModel = new BerkasPendaftaranModel();
        $id_user = session()->get('id');

        $ttdData = $this->request->getPost('ttd_ortu_base64');
        $ttdName = '';
        if (!empty($ttdData)) {
            $ttd_parts = explode(";base64,", $ttdData);
            $ttd_base64 = base64_decode($ttd_parts[1]);
            $ttdName = uniqid() . '.png';
            file_put_contents('uploads/ttd/' . $ttdName, $ttd_base64);
        }

        $dataInsert = [
            'id_user'               => $id_user,
            'no_kk'                 => $this->request->getPost('no_kk'),
            'nik_siswa'             => $this->request->getPost('nik_siswa'),
            'nama_peserta_didik'    => $this->request->getPost('nama_peserta_didik'),
            'nama_panggilan'        => $this->request->getPost('nama_panggilan'),
            'jenis_kelamin'         => $this->request->getPost('jenis_kelamin'),
            'tempat_lahir'          => $this->request->getPost('tempat_lahir'),
            'tanggal_lahir'         => $this->request->getPost('tanggal_lahir'),
            'id_agama'              => $this->request->getPost('id_agama'),
            'kewarganegaraan'       => $this->request->getPost('kewarganegaraan'),
            'anak_ke'               => $this->request->getPost('anak_ke'),
            'jumlah_saudara_kandung'=> $this->request->getPost('jumlah_saudara_kandung'),
            'jumlah_saudara_angkat' => $this->request->getPost('jumlah_saudara_angkat'),
            'bahasa_sehari_hari'    => $this->request->getPost('bahasa_sehari_hari'),
            'berat_badan'           => $this->request->getPost('berat_badan'),
            'tinggi_badan'          => $this->request->getPost('tinggi_badan'),
            'id_alamat'             => $this->request->getPost('id_alamat'),
            'no_telp'               => $this->request->getPost('no_telp'),
            'tempat_tinggal'        => $this->request->getPost('tempat_tinggal'),
            'nama_ayah'             => $this->request->getPost('nama_ayah'),
            'nik_ayah'              => $this->request->getPost('nik_ayah'),
            'id_pendidikan_ayah'    => $this->request->getPost('id_pendidikan_ayah'),
            'id_pekerjaan_ayah'     => $this->request->getPost('id_pekerjaan_ayah'),
            'penghasilan_ayah'      => $this->request->getPost('penghasilan_ayah'),
            'id_alamat_ayah'        => $this->request->getPost('id_alamat_ayah'),
            'nama_ibu'              => $this->request->getPost('nama_ibu'),
            'nik_ibu'               => $this->request->getPost('nik_ibu'),
            'id_pendidikan_ibu'     => $this->request->getPost('id_pendidikan_ibu'),
            'id_pekerjaan_ibu'      => $this->request->getPost('id_pekerjaan_ibu'),
            'penghasilan_ibu'       => $this->request->getPost('penghasilan_ibu'),
            'id_alamat_ibu'         => $this->request->getPost('id_alamat_ibu'),
            'nama_wali'             => $this->request->getPost('nama_wali'),
            'hubungan_wali'         => $this->request->getPost('hubungan_wali'),
            'id_pekerjaan_wali'     => $this->request->getPost('id_pekerjaan_wali') ?: null,
            'masuk_sebagai'         => 'Murid Baru',
            'id_tk'                 => $this->request->getPost('id_tk'),
            'asal_alamat_tk'        => $this->request->getPost('asal_alamat_tk'),
            'tahun_nomor_ijazah'    => $this->request->getPost('tahun_nomor_ijazah'),
            'ttd_ortu'              => $ttdName,
            'status_pendaftaran'    => 'Menunggu'
        ];

        $cekDaftar = $pendaftaranModel->where('id_user', $id_user)->first();
        if ($cekDaftar && $cekDaftar->status_pendaftaran == 'Perbaikan') {
            $pendaftaranModel->update($cekDaftar->id, $dataInsert);
            $idPendaftaran = $cekDaftar->id;
        } else {
            $pendaftaranModel->insert($dataInsert);
            $idPendaftaran = $pendaftaranModel->getInsertID();
        }

        $files = $this->request->getFiles();
        if (isset($files['berkas'])) {
            foreach ($files['berkas'] as $idPersyaratan => $file) {
                if ($file->isValid() && !$file->hasMoved()) {
                    $newName = $file->getRandomName();
                    $file->move('uploads/siswa/', $newName);
                    
                    $exist = $berkasModel->where('id_pendaftaran', $idPendaftaran)->where('id_persyaratan', $idPersyaratan)->first();
                    if ($exist) {
                        if (file_exists('uploads/siswa/' . $exist->file_path)) unlink('uploads/siswa/' . $exist->file_path);
                        $berkasModel->update($exist->id, ['file_path' => $newName]);
                    } else {
                        $berkasModel->insert([
                            'id_pendaftaran' => $idPendaftaran,
                            'id_persyaratan' => $idPersyaratan,
                            'file_path'      => $newName
                        ]);
                    }
                }
            }
        }

        return redirect()->to('/siswa/dashboard')->with('success', 'Formulir pendaftaran berhasil dikirim!');
    }

    public function cetak_pdf()
    {
        $pendaftaranModel = new PendaftaranModel();
        $profilModel = new ProfilSekolahModel();
        $latarModel = new LatarBelakangModel();
        $berkasModel = new BerkasPendaftaranModel();

        $id_user = session()->get('id');
        $pendaftaran = $pendaftaranModel
            ->select('pendaftaran.*, p_ayah.nama_pekerjaan as pk_ayah, p_ibu.nama_pekerjaan as pk_ibu, p_wali.nama_pekerjaan as pk_wali, tk.nama_tk, al.provinsi, al.kabupaten, al.kecamatan, al.desa, ed_a.nama_pendidikan as edu_ayah, ed_i.nama_pendidikan as edu_ibu')
            ->join('pekerjaan as p_ayah', 'p_ayah.id = pendaftaran.id_pekerjaan_ayah', 'left')
            ->join('pekerjaan as p_ibu', 'p_ibu.id = pendaftaran.id_pekerjaan_ibu', 'left')
            ->join('pekerjaan as p_wali', 'p_wali.id = pendaftaran.id_pekerjaan_wali', 'left')
            ->join('taman_kanak_kanak as tk', 'tk.id = pendaftaran.id_tk', 'left')
            ->join('alamat as al', 'al.id = pendaftaran.id_alamat', 'left')
            ->join('pendidikan as ed_a', 'ed_a.id = pendaftaran.id_pendidikan_ayah', 'left')
            ->join('pendidikan as ed_i', 'ed_i.id = pendaftaran.id_pendidikan_ibu', 'left')
            ->where('id_user', $id_user)
            ->first();

        if (!$pendaftaran) return redirect()->to('/siswa/dashboard');

        $data['pas_foto'] = $berkasModel->select('berkas_pendaftaran.file_path')
            ->join('persyaratan', 'persyaratan.id = berkas_pendaftaran.id_persyaratan')
            ->where('id_pendaftaran', $pendaftaran->id)
            ->like('persyaratan.nama_persyaratan', 'Pas Photo')
            ->first();

        $data['pendaftaran'] = $pendaftaran;
        $data['sekolah'] = $profilModel->first();
        $data['latar'] = $latarModel->where('is_active', 1)->first();

        $options = new Options();
        $options->set('isRemoteEnabled', true);
        $dompdf = new Dompdf($options);
        $html = view('pdf/formulir', $data);
        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'portrait');
        $dompdf->render();
        $dompdf->stream("Formulir_Pendaftaran.pdf", array("Attachment" => false));
        exit();
    }
}