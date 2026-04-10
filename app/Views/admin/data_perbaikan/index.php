<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4 text-white" style="text-shadow: 1px 1px 3px rgba(0,0,0,0.2);">
        <span class="text-white fw-light">Pendaftaran /</span> Data Perbaikan
    </h4>

    <div class="card shadow-sm" style="border-radius: 1.5rem; overflow: hidden; border: none;">
        <div class="card-header bg-white border-bottom py-3">
            <h5 class="mb-0 fw-bold">Siswa Status Perbaikan Berkas</h5>
        </div>
        <div class="table-responsive text-nowrap">
            <table class="table table-hover">
                <thead class="table-light">
                    <tr>
                        <th width="5%">No</th>
                        <th>NIK</th>
                        <th>Nama Siswa</th>
                        <th>Pesan Perbaikan</th>
                        <th>Update Terakhir</th>
                        <th width="10%">Aksi</th>
                    </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                    <?php if(empty($siswa_perbaikan)): ?>
                        <tr>
                            <td colspan="6" class="text-center py-4 text-muted">Belum ada siswa yang dalam tahap perbaikan.</td>
                        </tr>
                    <?php endif; ?>
                    <?php $no = 1; foreach ($siswa_perbaikan as $row) : ?>
                        <tr>
                            <td><?= $no++ ?></td>
                            <td><?= $row->nik_siswa ?></td>
                            <td class="fw-bold"><?= $row->nama_peserta_didik ?></td>
                            <td><span class="text-truncate d-inline-block" style="max-width: 250px;"><?= $row->pesan_perbaikan ?></span></td>
                            <td><?= date('d/m/Y H:i', strtotime($row->updated_at)) ?></td>
                            <td>
                                <a href="<?= base_url('admin/konfirmasi/detail/' . $row->id) ?>" class="btn btn-sm btn-info rounded-pill shadow-sm">
                                    <i class="bx bx-show"></i> Cek Progres
                                </a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<?= $this->endSection() ?>