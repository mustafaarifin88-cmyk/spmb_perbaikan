<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4 text-white">Edit Data Pendaftar</h4>

    <div class="card shadow-sm" style="border-radius: 1.5rem; border: none;">
        <form action="<?= base_url('admin/konfirmasi/update_siswa/' . $pendaftaran->id) ?>" method="POST">
            <div class="card-body p-4 p-md-5">
                <div class="alert alert-info rounded-3 mb-5 border-0 shadow-sm" style="background: rgba(105, 108, 255, 0.1);">
                    <i class="bx bx-info-circle me-2"></i> Anda sedang mengedit data pendaftaran siswa. Gunakan dropdown untuk data yang sudah terintegrasi.
                </div>

                <h5 class="fw-bold text-primary mb-4">I. DATA PRIBADI</h5>
                <div class="row g-3 mb-5">
                    <div class="col-md-6">
                        <label class="form-label fw-bold">Nama Lengkap Siswa</label>
                        <input type="text" name="nama_peserta_didik" class="form-control" value="<?= $pendaftaran->nama_peserta_didik ?>" required>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label fw-bold">Alamat (Master Wilayah)</label>
                        <select name="id_alamat" class="form-select" required>
                            <option value="">-- Pilih Wilayah --</option>
                            <?php foreach($alamat as $al): ?>
                                <option value="<?= $al->id ?>" <?= $pendaftaran->id_alamat == $al->id ? 'selected' : '' ?>>
                                    <?= $al->desa ?>, <?= $al->kecamatan ?>, <?= $al->kabupaten ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>

                <h5 class="fw-bold text-primary mb-4">II. DATA ORANG TUA & PENDIDIKAN</h5>
                <div class="row g-3 mb-5">
                    <div class="col-md-6">
                        <label class="form-label fw-bold">Pendidikan Ayah</label>
                        <select name="id_pendidikan_ayah" class="form-select" required>
                            <option value="">-- Pilih Jenjang --</option>
                            <?php foreach($pendidikan as $pen): ?>
                                <option value="<?= $pen->id ?>" <?= $pendaftaran->id_pendidikan_ayah == $pen->id ? 'selected' : '' ?>><?= $pen->nama_pendidikan ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label fw-bold">Alamat Ayah</label>
                        <select name="id_alamat_ayah" class="form-select">
                            <option value="">-- Pilih Wilayah Alamat --</option>
                            <?php foreach($alamat as $al): ?>
                                <option value="<?= $al->id ?>" <?= $pendaftaran->id_alamat_ayah == $al->id ? 'selected' : '' ?>>
                                    <?= $al->desa ?>, <?= $al->kecamatan ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="col-md-6 mt-4">
                        <label class="form-label fw-bold">Pendidikan Ibu</label>
                        <select name="id_pendidikan_ibu" class="form-select" required>
                            <option value="">-- Pilih Jenjang --</option>
                            <?php foreach($pendidikan as $pen): ?>
                                <option value="<?= $pen->id ?>" <?= $pendaftaran->id_pendidikan_ibu == $pen->id ? 'selected' : '' ?>><?= $pen->nama_pendidikan ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="col-md-6 mt-4">
                        <label class="form-label fw-bold">Alamat Ibu</label>
                        <select name="id_alamat_ibu" class="form-select">
                            <option value="">-- Pilih Wilayah Alamat --</option>
                            <?php foreach($alamat as $al): ?>
                                <option value="<?= $al->id ?>" <?= $pendaftaran->id_alamat_ibu == $al->id ? 'selected' : '' ?>>
                                    <?= $al->desa ?>, <?= $al->kecamatan ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>

                <h5 class="fw-bold text-primary mb-4">III. ASAL MULA PESERTA DIDIK</h5>
                <div class="row g-3">
                    <div class="col-md-6">
                        <label class="form-label fw-bold">Pilih Nama TK (Master Data)</label>
                        <select name="id_tk" class="form-select" required>
                            <option value="">-- Pilih TK --</option>
                            <?php foreach($tk as $t): ?>
                                <option value="<?= $t->id ?>" <?= $pendaftaran->id_tk == $t->id ? 'selected' : '' ?>><?= $t->nama_tk ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label fw-bold">Alamat / Lokasi TK</label>
                        <input type="text" name="asal_alamat_tk" class="form-control" value="<?= $pendaftaran->asal_alamat_tk ?>" placeholder="Manual alamat TK">
                    </div>
                </div>

                <div class="text-end mt-5 pt-4 border-top">
                    <button type="submit" class="btn btn-primary btn-lg rounded-pill px-5 shadow">Update Data Pendaftar</button>
                </div>
            </div>
        </form>
    </div>
</div>
<?= $this->endSection() ?>