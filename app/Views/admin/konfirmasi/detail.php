<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4 text-white">
        <span class="text-white fw-light">Konfirmasi /</span> Detail Calon Siswa
    </h4>

    <div class="row">
        <div class="col-lg-4">
            <div class="card shadow-sm mb-4" style="border-radius: 1.5rem; border: none;">
                <div class="card-body text-center py-5">
                    <?php if(isset($pas_foto) && $pas_foto && file_exists('uploads/siswa/' . $pas_foto->file_path)): ?>
                        <img src="<?= base_url('uploads/siswa/' . $pas_foto->file_path) ?>" alt="Foto Siswa" class="rounded shadow mb-3" style="width: 180px; height: 240px; object-fit: cover; border: 4px solid #fff;">
                    <?php else: ?>
                        <div class="bg-light rounded d-flex align-items-center justify-content-center mx-auto mb-3" style="width: 180px; height: 240px; border: 2px dashed #ccc;">
                            <span class="text-muted small">Foto belum ada</span>
                        </div>
                    <?php endif; ?>
                    <h5 class="fw-bold mb-1"><?= $pendaftaran->nama_peserta_didik ?></h5>
                    <p class="text-muted small mb-3">NIK: <?= $pendaftaran->nik_siswa ?></p>
                    <div class="d-flex justify-content-center gap-2 mt-2">
                        <a href="<?= base_url('admin/konfirmasi/cetak_pdf/' . $pendaftaran->id) ?>" class="btn btn-dark rounded-pill shadow-sm px-4" target="_blank">
                            <i class="bx bx-printer me-1"></i> Cetak PDF
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-8">
            <div class="card shadow-sm" style="border-radius: 1.5rem; border: none;">
                <div class="card-header bg-white border-bottom py-3">
                    <h5 class="mb-0 fw-bold">Ringkasan Informasi</h5>
                </div>
                <div class="card-body py-4">
                    <div class="row g-4 mb-5">
                        <div class="col-md-6">
                            <label class="text-muted small d-block mb-1">Wilayah Alamat</label>
                            <span class="fw-bold"><?= $pendaftaran->desa ?>, Kec. <?= $pendaftaran->kecamatan ?>, <?= $pendaftaran->kabupaten ?></span>
                        </div>
                        <div class="col-md-6">
                            <label class="text-muted small d-block mb-1">Asal Taman Kanak-Kanak</label>
                            <span class="fw-bold"><?= $pendaftaran->tk_pilihan ?: $pendaftaran->nama_tk ?></span>
                        </div>
                        <div class="col-md-6">
                            <label class="text-muted small d-block mb-1">Nama Ayah</label>
                            <span class="fw-bold"><?= $pendaftaran->nama_ayah ?></span>
                        </div>
                        <div class="col-md-6">
                            <label class="text-muted small d-block mb-1">Nama Ibu</label>
                            <span class="fw-bold"><?= $pendaftaran->nama_ibu ?></span>
                        </div>
                    </div>

                    <h6 class="fw-bold mb-3 border-bottom pb-2 text-primary">Berkas Lampiran</h6>
                    <div class="row g-2">
                        <?php foreach($berkas as $b): ?>
                            <div class="col-md-6">
                                <a href="<?= base_url('uploads/siswa/' . $b->file_path) ?>" target="_blank" class="btn btn-outline-primary w-100 text-start rounded-pill px-3 shadow-sm">
                                    <i class="bx bx-file me-2"></i> <?= $b->nama_persyaratan ?>
                                </a>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection() ?>