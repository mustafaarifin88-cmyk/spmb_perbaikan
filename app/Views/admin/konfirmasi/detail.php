<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4 text-white">
        <span class="text-white fw-light">Konfirmasi /</span> Detail Lengkap Calon Peserta Didik
    </h4>

    <div class="row">
        <!-- Kolom Kiri: Foto & Status -->
        <div class="col-lg-4">
            <div class="card shadow-sm mb-4" style="border-radius: 1.5rem; border: none;">
                <div class="card-body text-center py-5">
                    <?php if(isset($pas_foto) && $pas_foto && file_exists('uploads/siswa/' . $pas_foto->file_path)): ?>
                        <img src="<?= base_url('uploads/siswa/' . $pas_foto->file_path) ?>" alt="Foto Siswa" class="rounded shadow mb-4" style="width: 200px; height: 260px; object-fit: cover; border: 5px solid #fff;">
                    <?php else: ?>
                        <div class="bg-light rounded d-flex align-items-center justify-content-center mx-auto mb-4" style="width: 200px; height: 260px; border: 2px dashed #ccc;">
                            <span class="text-muted small">Pas Foto belum diunggah</span>
                        </div>
                    <?php endif; ?>
                    
                    <h4 class="fw-bold mb-1"><?= strtoupper($pendaftaran->nama_peserta_didik) ?></h4>
                    <p class="text-muted mb-3">NIK: <?= $pendaftaran->nik_siswa ?></p>
                    
                    <div class="mb-4">
                        <?php if ($pendaftaran->status_pendaftaran == 'Menunggu') : ?>
                            <span class="badge bg-label-warning px-4 py-2 rounded-pill fs-6">Menunggu Konfirmasi</span>
                        <?php elseif ($pendaftaran->status_pendaftaran == 'Diterima') : ?>
                            <span class="badge bg-label-success px-4 py-2 rounded-pill fs-6">Pendaftaran Diterima</span>
                        <?php elseif ($pendaftaran->status_pendaftaran == 'Perbaikan') : ?>
                            <span class="badge bg-label-info px-4 py-2 rounded-pill fs-6">Status: Perbaikan Data</span>
                        <?php else : ?>
                            <span class="badge bg-label-danger px-4 py-2 rounded-pill fs-6">Pendaftaran Ditolak</span>
                        <?php endif; ?>
                    </div>

                    <div class="d-grid gap-2">
                        <a href="<?= base_url('admin/konfirmasi/cetak_pdf/' . $pendaftaran->id) ?>" class="btn btn-dark rounded-pill shadow-sm" target="_blank">
                            <i class="bx bx-printer me-2"></i> Cetak Formulir (PDF)
                        </a>
                        <button type="button" class="btn btn-primary rounded-pill shadow-sm" data-bs-toggle="modal" data-bs-target="#modalPerbaikan">
                            <i class="bx bx-refresh me-2"></i> Instruksi Perbaikan
                        </button>
                    </div>
                </div>
            </div>

            <!-- Card Berkas -->
            <div class="card shadow-sm" style="border-radius: 1.5rem; border: none;">
                <div class="card-header bg-white border-bottom py-3">
                    <h5 class="mb-0 fw-bold"><i class="bx bx-file me-2"></i>Dokumen Lampiran</h5>
                </div>
                <div class="card-body py-4">
                    <div class="row g-2">
                        <?php foreach($berkas as $b): ?>
                            <div class="col-12">
                                <a href="<?= base_url('uploads/siswa/' . $b->file_path) ?>" target="_blank" class="btn btn-outline-primary w-100 text-start rounded-pill px-3 shadow-sm">
                                    <i class="bx bx-show-alt me-2"></i> <?= $b->nama_persyaratan ?>
                                </a>
                            </div>
                        <?php endforeach; ?>
                        <?php if(empty($berkas)): ?>
                            <p class="text-center text-muted small my-3">Belum ada berkas yang diunggah.</p>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>

        <!-- Kolom Kanan: Detail Data -->
        <div class="col-lg-8">
            <div class="card shadow-sm" style="border-radius: 1.5rem; border: none;">
                <div class="card-body p-4 p-md-5">
                    
                    <!-- Bagian A: Data Pribadi -->
                    <div class="d-flex align-items-center mb-4">
                        <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-primary"><i class="bx bx-user fs-4"></i></span>
                        </div>
                        <h5 class="mb-0 fw-bold text-primary text-uppercase">A. Data Pribadi Peserta Didik</h5>
                    </div>
                    
                    <div class="table-responsive mb-5">
                        <table class="table table-borderless align-middle">
                            <tr><td width="35%" class="fw-bold text-muted">Nama Panggilan</td><td width="2%">:</td><td><?= $pendaftaran->nama_panggilan ?: '-' ?></td></tr>
                            <tr><td class="fw-bold text-muted">Nomor KK</td><td>:</td><td><?= $pendaftaran->no_kk ?></td></tr>
                            <tr><td class="fw-bold text-muted">Jenis Kelamin</td><td>:</td><td><?= $pendaftaran->jenis_kelamin ?></td></tr>
                            <tr><td class="fw-bold text-muted">Tempat, Tanggal Lahir</td><td>:</td><td><?= $pendaftaran->tempat_lahir ?>, <?= date('d F Y', strtotime($pendaftaran->tanggal_lahir)) ?></td></tr>
                            <tr><td class="fw-bold text-muted">Agama</td><td>:</td><td><?= $pendaftaran->nama_agama ?: '-' ?></td></tr>
                            <tr><td class="fw-bold text-muted">Kewarganegaraan</td><td>:</td><td><?= $pendaftaran->kewarganegaraan ?></td></tr>
                            <tr><td class="fw-bold text-muted">Anak Ke-</td><td>:</td><td><?= $pendaftaran->anak_ke ?></td></tr>
                            <tr><td class="fw-bold text-muted">Jumlah Saudara</td><td>:</td><td><?= $pendaftaran->jumlah_saudara_kandung ?> Kandung / <?= $pendaftaran->jumlah_saudara_angkat ?> Angkat</td></tr>
                            <tr><td class="fw-bold text-muted">Bahasa Sehari-hari</td><td>:</td><td><?= $pendaftaran->bahasa_sehari_hari ?></td></tr>
                            <tr><td class="fw-bold text-muted">Berat / Tinggi Badan</td><td>:</td><td><?= $pendaftaran->berat_badan ?> kg / <?= $pendaftaran->tinggi_badan ?> cm</td></tr>
                            <tr><td class="fw-bold text-muted">No. Telepon / HP</td><td>:</td><td><?= $pendaftaran->no_telp ?></td></tr>
                            <tr><td class="fw-bold text-muted">Tempat Tinggal</td><td>:</td><td><?= $pendaftaran->tempat_tinggal ?></td></tr>
                            <tr><td class="fw-bold text-muted">Alamat Lengkap (Domisili)</td><td>:</td>
                                <td>
                                    <strong>Desa:</strong> <?= $pendaftaran->desa ?><br>
                                    <strong>Kecamatan:</strong> <?= $pendaftaran->kecamatan ?><br>
                                    <strong>Kabupaten:</strong> <?= $pendaftaran->kabupaten ?><br>
                                    <strong>Provinsi:</strong> <?= $pendaftaran->provinsi ?>
                                </td>
                            </tr>
                        </table>
                    </div>

                    <!-- Bagian B: Data Orang Tua -->
                    <div class="d-flex align-items-center mb-4">
                        <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-success"><i class="bx bx-group fs-4"></i></span>
                        </div>
                        <h5 class="mb-0 fw-bold text-success text-uppercase">B. Data Orang Tua / Wali</h5>
                    </div>

                    <div class="row g-4 mb-5">
                        <!-- Data Ayah -->
                        <div class="col-md-6">
                            <div class="p-3 border rounded shadow-sm h-100" style="background: #f8f9fa;">
                                <h6 class="fw-bold border-bottom pb-2 mb-3"><i class="bx bx-male me-1"></i> Data Ayah</h6>
                                <p class="mb-1 small text-muted">Nama Lengkap:</p>
                                <p class="fw-bold"><?= $pendaftaran->nama_ayah ?></p>
                                <p class="mb-1 small text-muted">NIK Ayah:</p>
                                <p class="fw-bold"><?= $pendaftaran->nik_ayah ?></p>
                                <p class="mb-1 small text-muted">Pendidikan:</p>
                                <p class="fw-bold"><?= $pendaftaran->edu_ayah ?: '-' ?></p>
                                <p class="mb-1 small text-muted">Pekerjaan:</p>
                                <p class="fw-bold"><?= $pendaftaran->pk_ayah ?: '-' ?></p>
                                <p class="mb-1 small text-muted">Penghasilan:</p>
                                <p class="fw-bold text-success">Rp. <?= number_format($pendaftaran->penghasilan_ayah ?: 0, 0, ',', '.') ?></p>
                            </div>
                        </div>
                        <!-- Data Ibu -->
                        <div class="col-md-6">
                            <div class="p-3 border rounded shadow-sm h-100" style="background: #f8f9fa;">
                                <h6 class="fw-bold border-bottom pb-2 mb-3"><i class="bx bx-female me-1"></i> Data Ibu</h6>
                                <p class="mb-1 small text-muted">Nama Lengkap:</p>
                                <p class="fw-bold"><?= $pendaftaran->nama_ibu ?></p>
                                <p class="mb-1 small text-muted">NIK Ibu:</p>
                                <p class="fw-bold"><?= $pendaftaran->nik_ibu ?></p>
                                <p class="mb-1 small text-muted">Pendidikan:</p>
                                <p class="fw-bold"><?= $pendaftaran->edu_ibu ?: '-' ?></p>
                                <p class="mb-1 small text-muted">Pekerjaan:</p>
                                <p class="fw-bold"><?= $pendaftaran->pk_ibu ?: '-' ?></p>
                                <p class="mb-1 small text-muted">Penghasilan:</p>
                                <p class="fw-bold text-success">Rp. <?= number_format($pendaftaran->penghasilan_ibu ?: 0, 0, ',', '.') ?></p>
                            </div>
                        </div>
                        <!-- Data Wali -->
                        <?php if($pendaftaran->nama_wali): ?>
                        <div class="col-12">
                            <div class="p-3 border rounded shadow-sm" style="background: #fff3e0;">
                                <h6 class="fw-bold border-bottom pb-2 mb-3 text-warning"><i class="bx bx-user-plus me-1"></i> Data Wali Murid</h6>
                                <div class="row">
                                    <div class="col-md-4"><p class="mb-1 small text-muted">Nama Wali:</p><p class="fw-bold"><?= $pendaftaran->nama_wali ?></p></div>
                                    <div class="col-md-4"><p class="mb-1 small text-muted">Hubungan Wali:</p><p class="fw-bold"><?= $pendaftaran->hubungan_wali ?></p></div>
                                    <div class="col-md-4"><p class="mb-1 small text-muted">Pekerjaan Wali:</p><p class="fw-bold"><?= $pendaftaran->pk_wali ?: '-' ?></p></div>
                                </div>
                            </div>
                        </div>
                        <?php endif; ?>
                    </div>

                    <!-- Bagian C: Asal Sekolah -->
                    <div class="d-flex align-items-center mb-4">
                        <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-info"><i class="bx bx-buildings fs-4"></i></span>
                        </div>
                        <h5 class="mb-0 fw-bold text-info text-uppercase">C. Asal Mula Peserta Didik</h5>
                    </div>

                    <div class="table-responsive mb-5">
                        <table class="table table-borderless align-middle">
                            <tr><td width="35%" class="fw-bold text-muted">Masuk Sebagai</td><td width="2%">:</td><td><?= $pendaftaran->masuk_sebagai ?></td></tr>
                            <tr><td class="fw-bold text-muted">Nama Taman Kanak-Kanak</td><td>:</td><td><?= $pendaftaran->tk_pilihan ?: $pendaftaran->nama_tk ?></td></tr>
                            <tr><td class="fw-bold text-muted">Alamat / Lokasi TK</td><td>:</td><td><?= $pendaftaran->asal_alamat_tk ?: '-' ?></td></tr>
                            <tr><td class="fw-bold text-muted">Tahun & No. Ijazah</td><td>:</td><td><?= $pendaftaran->tahun_nomor_ijazah ?: '-' ?></td></tr>
                        </table>
                    </div>

                    <!-- Bagian D: Tanda Tangan -->
                    <div class="d-flex align-items-center mb-4">
                        <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-warning"><i class="bx bx-pen fs-4"></i></span>
                        </div>
                        <h5 class="mb-0 fw-bold text-warning text-uppercase">D. Validasi Orang Tua</h5>
                    </div>
                    <div class="text-center p-3 border rounded bg-white shadow-sm" style="max-width: 300px;">
                        <p class="small text-muted mb-2">Tanda Tangan Orang Tua / Wali:</p>
                        <?php if($pendaftaran->ttd_ortu): ?>
                            <img src="<?= base_url('uploads/ttd/' . $pendaftaran->ttd_ortu) ?>" class="img-fluid" style="max-height: 100px;">
                        <?php else: ?>
                            <div class="bg-light py-4 rounded text-muted small">Tidak tersedia</div>
                        <?php endif; ?>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal Perbaikan -->
<div class="modal fade" id="modalPerbaikan" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="border-radius: 1.5rem; overflow: hidden;">
            <div class="modal-header bg-primary px-4 py-3 border-0">
                <h5 class="modal-title text-white fw-bold">Instruksi Perbaikan Berkas</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="<?= base_url('admin/konfirmasi/izinkan_perbaikan/' . $pendaftaran->id) ?>" method="POST">
                <div class="modal-body px-4 py-4">
                    <p class="text-muted small mb-3">Masukkan alasan atau bagian data mana yang perlu diperbaiki oleh calon siswa. Siswa akan bisa login kembali untuk memperbarui datanya.</p>
                    <div class="mb-3">
                        <label class="form-label fw-bold">Pesan untuk Siswa</label>
                        <textarea name="pesan_perbaikan" class="form-control" rows="4" placeholder="Contoh: Maaf, foto Akte Kelahiran Anda kurang jelas. Harap unggah kembali file yang lebih terang." required><?= $pendaftaran->pesan_perbaikan ?></textarea>
                    </div>
                </div>
                <div class="modal-footer px-4 pb-4 border-0">
                    <button type="button" class="btn btn-outline-secondary rounded-pill" data-bs-dismiss=\"modal\">Batal</button>
                    <button type="submit" class="btn btn-primary rounded-pill px-4 shadow-sm fw-bold">Kirim Perintah Perbaikan</button>
                </div>
            </form>
        </div>
    </div>
</div>

<?= $this->endSection() ?>