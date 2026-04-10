<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4 text-white" style="text-shadow: 1px 1px 3px rgba(0,0,0,0.2);">
        <span class="text-white fw-light">Pendaftaran /</span> Konfirmasi Calon Siswa
    </h4>

    <?php if (session()->getFlashdata('success')) : ?>
        <div class="alert alert-success alert-dismissible fade show rounded-pill shadow-sm" role="alert">
            <?= session()->getFlashdata('success') ?>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    <?php endif; ?>

    <div class="card shadow-sm" style="border-radius: 1.5rem; overflow: hidden; border: none;">
        <div class="table-responsive text-nowrap">
            <table class="table table-hover">
                <thead class="table-light">
                    <tr>
                        <th width="5%">No</th>
                        <th>NIK</th>
                        <th>Nama Lengkap</th>
                        <th>Status</th>
                        <th width="15%">Aksi</th>
                    </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                    <?php $no = 1; foreach ($pendaftar as $row) : ?>
                        <tr>
                            <td><?= $no++ ?></td>
                            <td><?= $row->nik_siswa ?></td>
                            <td class="fw-bold"><?= $row->nama_peserta_didik ?></td>
                            <td>
                                <?php if ($row->status_pendaftaran == 'Menunggu') : ?>
                                    <span class="badge bg-label-warning px-3 py-2 rounded-pill">Menunggu</span>
                                <?php elseif ($row->status_pendaftaran == 'Diterima') : ?>
                                    <span class="badge bg-label-success px-3 py-2 rounded-pill">Diterima</span>
                                <?php elseif ($row->status_pendaftaran == 'Perbaikan') : ?>
                                    <span class="badge bg-label-info px-3 py-2 rounded-pill">Perbaikan Data</span>
                                <?php else : ?>
                                    <span class="badge bg-label-danger px-3 py-2 rounded-pill">Ditolak</span>
                                <?php endif; ?>
                            </td>
                            <td>
                                <div class="dropdown">
                                    <button type="button" class="btn btn-sm btn-primary rounded-pill px-3 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                                        <i class="bx bx-dots-vertical-rounded"></i>
                                    </button>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="<?= base_url('admin/konfirmasi/detail/' . $row->id) ?>"><i class="bx bx-show me-1 text-info"></i> Detail & Foto</a>
                                        <a class="dropdown-item" href="<?= base_url('admin/konfirmasi/edit_siswa/' . $row->id) ?>"><i class="bx bx-edit me-1 text-warning"></i> Edit Data</a>
                                        <button class="dropdown-item" data-bs-toggle="modal" data-bs-target="#modalPerbaikan<?= $row->id ?>"><i class="bx bx-refresh me-1 text-primary"></i> Tombol Perbaikan</button>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item text-danger" href="<?= base_url('admin/konfirmasi/delete_siswa/' . $row->id) ?>" onclick="return confirm('Hapus data?')"><i class="bx bx-trash me-1"></i> Hapus</a>
                                    </div>
                                </div>
                            </td>
                        </tr>

                        <div class="modal fade" id="modalPerbaikan<?= $row->id ?>" tabindex="-1" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content" style="border-radius: 1.5rem;">
                                    <div class="modal-header bg-primary px-4 py-3">
                                        <h5 class="modal-title text-white">Instruksi Perbaikan Berkas</h5>
                                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <form action="<?= base_url('admin/konfirmasi/izinkan_perbaikan/' . $row->id) ?>" method="POST">
                                        <div class="modal-body px-4 py-4">
                                            <p class="text-muted small mb-3">Siswa akan diberikan akses kembali untuk mengubah data formulir. Masukkan alasan/bagian yang perlu diperbaiki:</p>
                                            <textarea name="pesan_perbaikan" class="form-control" rows="3" placeholder="Contoh: Foto Ijazah tidak jelas, harap upload ulang." required></textarea>
                                        </div>
                                        <div class="modal-footer px-4 pb-4 border-0">
                                            <button type="button" class="btn btn-outline-secondary rounded-pill" data-bs-dismiss="modal">Batal</button>
                                            <button type="submit" class="btn btn-primary rounded-pill px-4">Kirim Pesan</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<?= $this->endSection() ?>