<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<style>
    .glass-form { background: rgba(255, 255, 255, 0.95); backdrop-filter: blur(20px); border-radius: 1.5rem; border: 1px solid rgba(255, 255, 255, 0.6); box-shadow: 0 15px 35px rgba(0,0,0,0.1); }
    .form-section-title { background: linear-gradient(135deg, #696cff, #8ec5fc); color: white; padding: 12px 25px; border-radius: 12px; margin-bottom: 25px; font-weight: bold; box-shadow: 0 4px 15px rgba(105, 108, 255, 0.2); }
    #signature-pad { border: 2px dashed #696cff; border-radius: 15px; background: #fff; cursor: crosshair; }
</style>

<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4 text-white">Formulir Pendaftaran Siswa Baru</h4>

    <div class="card glass-form p-4 p-md-5">
        <form action="<?= base_url('siswa/pendaftaran/store') ?>" method="POST" enctype="multipart/form-data" id="formPendaftaran">
            
            <h5 class="form-section-title">A. DATA PRIBADI CALON SISWA</h5>
            <div class="row g-3 mb-5">
                <div class="col-md-6">
                    <label class="form-label fw-bold">No Kartu Keluarga</label>
                    <input type="number" name="no_kk" class="form-control" value="<?= $pendaftaran ? $pendaftaran->no_kk : '' ?>" required>
                </div>
                <div class="col-md-6">
                    <label class="form-label fw-bold">NIK Siswa</label>
                    <input type="number" name="nik_siswa" class="form-control" value="<?= $pendaftaran ? $pendaftaran->nik_siswa : '' ?>" required>
                </div>
                <div class="col-md-8">
                    <label class="form-label fw-bold">Nama Lengkap Peserta Didik</label>
                    <input type="text" name="nama_peserta_didik" class="form-control" value="<?= $pendaftaran ? $pendaftaran->nama_peserta_didik : '' ?>" required>
                </div>
                <div class="col-md-4">
                    <label class="form-label fw-bold">Jenis Kelamin</label>
                    <select name="jenis_kelamin" class="form-select" required>
                        <option value="Laki-laki" <?= ($pendaftaran && $pendaftaran->jenis_kelamin == 'Laki-laki') ? 'selected' : '' ?>>Laki-laki</option>
                        <option value="Perempuan" <?= ($pendaftaran && $pendaftaran->jenis_kelamin == 'Perempuan') ? 'selected' : '' ?>>Perempuan</option>
                    </select>
                </div>
                <div class="col-md-12">
                    <label class="form-label fw-bold">Pilih Wilayah Alamat (Master Data)</label>
                    <select name="id_alamat" class="form-select" required>
                        <option value="">-- Pilih Provinsi, Kab, Kec, Desa --</option>
                        <?php foreach($alamat as $al): ?>
                            <option value="<?= $al->id ?>" <?= ($pendaftaran && $pendaftaran->id_alamat == $al->id) ? 'selected' : '' ?>>
                                <?= $al->desa ?> - <?= $al->kecamatan ?> (<?= $al->kabupaten ?>, <?= $al->provinsi ?>)
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>
            </div>

            <h5 class="form-section-title">B. DATA ORANG TUA KANDUNG</h5>
            <div class="row g-4 mb-5">
                <div class="col-md-6 border-end">
                    <h6 class="fw-bold text-dark mb-3"><i class="bx bx-user me-1"></i> Data Ayah</h6>
                    <label class="form-label">Nama Lengkap Ayah</label>
                    <input type="text" name="nama_ayah" class="form-control mb-2" value="<?= $pendaftaran ? $pendaftaran->nama_ayah : '' ?>" required>
                    <label class="form-label">Pendidikan Ayah</label>
                    <select name="id_pendidikan_ayah" class="form-select mb-2" required>
                        <option value="">-- Pilih Pendidikan --</option>
                        <?php foreach($pendidikan as $pen): ?>
                            <option value="<?= $pen->id ?>" <?= ($pendaftaran && $pendaftaran->id_pendidikan_ayah == $pen->id) ? 'selected' : '' ?>><?= $pen->nama_pendidikan ?></option>
                        <?php endforeach; ?>
                    </select>
                    <label class="form-label">Alamat Ayah (Dropdown)</label>
                    <select name="id_alamat_ayah" class="form-select">
                        <option value="">-- Pilih Alamat --</option>
                        <?php foreach($alamat as $al): ?>
                            <option value="<?= $al->id ?>" <?= ($pendaftaran && $pendaftaran->id_alamat_ayah == $al->id) ? 'selected' : '' ?>><?= $al->desa ?>, <?= $al->kecamatan ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="col-md-6">
                    <h6 class="fw-bold text-dark mb-3"><i class="bx bx-female me-1"></i> Data Ibu</h6>
                    <label class="form-label">Nama Lengkap Ibu</label>
                    <input type="text" name="nama_ibu" class="form-control mb-2" value="<?= $pendaftaran ? $pendaftaran->nama_ibu : '' ?>" required>
                    <label class="form-label">Pendidikan Ibu</label>
                    <select name="id_pendidikan_ibu" class="form-select mb-2" required>
                        <option value="">-- Pilih Pendidikan --</option>
                        <?php foreach($pendidikan as $pen): ?>
                            <option value="<?= $pen->id ?>" <?= ($pendaftaran && $pendaftaran->id_pendidikan_ibu == $pen->id) ? 'selected' : '' ?>><?= $pen->nama_pendidikan ?></option>
                        <?php endforeach; ?>
                    </select>
                    <label class="form-label">Alamat Ibu (Dropdown)</label>
                    <select name="id_alamat_ibu" class="form-select">
                        <option value="">-- Pilih Alamat --</option>
                        <?php foreach($alamat as $al): ?>
                            <option value="<?= $al->id ?>" <?= ($pendaftaran && $pendaftaran->id_alamat_ibu == $al->id) ? 'selected' : '' ?>><?= $al->desa ?>, <?= $al->kecamatan ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
            </div>

            <h5 class="form-section-title">C. ASAL MULA PESERTA DIDIK</h5>
            <div class="row g-3 mb-5">
                <div class="col-md-6">
                    <label class="form-label fw-bold">Nama Taman Kanak-Kanak (Master Data)</label>
                    <select name="id_tk" class="form-select" required>
                        <option value="">-- Pilih Nama TK --</option>
                        <?php foreach($tk as $t): ?>
                            <option value="<?= $t->id ?>" <?= ($pendaftaran && $pendaftaran->id_tk == $t->id) ? 'selected' : '' ?>><?= $t->nama_tk ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="col-md-6">
                    <label class="form-label fw-bold">Asal / Alamat Taman Kanak Kanak</label>
                    <input type="text" name="asal_alamat_tk" class="form-control" value="<?= $pendaftaran ? $pendaftaran->asal_alamat_tk : '' ?>" placeholder="Masukkan alamat TK">
                </div>
            </div>

            <h5 class="form-section-title">D. UPLOAD BERKAS PERSYARATAN</h5>
            <div class="row g-3 mb-5">
                <?php foreach($persyaratan as $p): ?>
                <div class="col-md-6">
                    <label class="form-label fw-bold"><?= $p->nama_persyaratan ?> <?= $p->is_wajib ? '<span class="text-danger">*</span>' : '' ?></label>
                    <input type="file" name="berkas[<?= $p->id ?>]" class="form-control" <?= $p->is_wajib && !$pendaftaran ? 'required' : '' ?>>
                </div>
                <?php endforeach; ?>
            </div>

            <h5 class="form-section-title">E. TANDA TANGAN ORANG TUA / WALI</h5>
            <div class="text-center mb-4">
                <canvas id="signature-pad" width="500" height="200"></canvas>
                <div class="mt-2">
                    <button type="button" id="clear-signature" class="btn btn-sm btn-outline-danger rounded-pill">Bersihkan Tanda Tangan</button>
                </div>
                <input type="hidden" name="ttd_ortu_base64" id="ttd_ortu_base64">
            </div>

            <div class="text-end pt-4 border-top">
                <button type="submit" class="btn btn-primary btn-lg rounded-pill px-5 shadow fw-bold">Kirim Formulir Pendaftaran</button>
            </div>
        </form>
    </div>
</div>
<?= $this->endSection() ?>

<?= $this->section('scripts') ?>
<script>
    const canvas = document.getElementById('signature-pad');
    const ctx = canvas.getContext('2d');
    let isDrawing = false;

    ctx.lineWidth = 3;
    ctx.lineCap = 'round';
    ctx.strokeStyle = '#2c3e50';

    function getMousePos(canvasDom, MouseEvent) {
        let rect = canvasDom.getBoundingClientRect();
        return {
            x: (MouseEvent.clientX || MouseEvent.touches[0].clientX) - rect.left,
            y: (MouseEvent.clientY || MouseEvent.touches[0].clientY) - rect.top
        };
    }

    function startDrawing(e) {
        isDrawing = true;
        let pos = getMousePos(canvas, e);
        ctx.beginPath();
        ctx.moveTo(pos.x, pos.y);
        e.preventDefault();
    }

    function draw(e) {
        if (!isDrawing) return;
        let pos = getMousePos(canvas, e);
        ctx.lineTo(pos.x, pos.y);
        ctx.stroke();
        e.preventDefault();
    }

    function stopDrawing() {
        if (isDrawing) {
            isDrawing = false;
            document.getElementById('ttd_ortu_base64').value = canvas.toDataURL('image/png');
        }
    }

    canvas.addEventListener('mousedown', startDrawing);
    canvas.addEventListener('mousemove', draw);
    canvas.addEventListener('mouseup', stopDrawing);
    canvas.addEventListener('touchstart', startDrawing, {passive: false});
    canvas.addEventListener('touchmove', draw, {passive: false});
    canvas.addEventListener('touchend', stopDrawing);

    document.getElementById('clear-signature').addEventListener('click', function() {
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        document.getElementById('ttd_ortu_base64').value = '';
    });
</script>
<?= $this->endSection() ?>