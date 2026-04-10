<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4 text-white" style="text-shadow: 1px 1px 3px rgba(0,0,0,0.2);">
        <span class="text-white fw-light">Master Data /</span> Daftar TK
    </h4>

    <?php if (session()->getFlashdata('success')) : ?>
        <div class="alert alert-success alert-dismissible fade show rounded-pill shadow-sm" role="alert">
            <?= session()->getFlashdata('success') ?>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    <?php endif; ?>

    <div class="card shadow-sm" style="border-radius: 1.5rem; overflow: hidden; border: none;">
        <div class="card-header d-flex justify-content-between align-items-center bg-white border-bottom py-3">
            <h5 class="mb-0 fw-bold">Daftar Taman Kanak-Kanak</h5>
            <button type="button" class="btn btn-primary rounded-pill shadow-sm" data-bs-toggle="modal" data-bs-target="#modalTambah">
                <i class="bx bx-plus me-1"></i> Tambah TK
            </button>
        </div>
        <div class="table-responsive text-nowrap">
            <table class="table table-hover">
                <thead class="table-light">
                    <tr>
                        <th width="5%">No</th>
                        <th>Nama Taman Kanak-Kanak</th>
                        <th>Alamat / Lokasi</th>
                        <th width="15%">Aksi</th>
                    </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                    <?php $no = 1; foreach ($tk as $row) : ?>
                        <tr>
                            <td><?= $no++ ?></td>
                            <td class="fw-bold"><?= $row->nama_tk ?></td>
                            <td class="text-wrap"><?= $row->alamat_tk ?></td>
                            <td>
                                <button type="button" class="btn btn-sm btn-warning rounded-pill shadow-sm" data-bs-toggle="modal" data-bs-target="#modalEdit<?= $row->id ?>">
                                    <i class="bx bx-edit-alt"></i>
                                </button>
                                <a href="<?= base_url('admin/tk/delete/' . $row->id) ?>" class="btn btn-sm btn-danger rounded-pill shadow-sm" onclick="return confirm('Hapus data TK ini?')">
                                    <i class="bx bx-trash"></i>
                                </a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?= $this->include('admin/tk/form_tambah') ?>
<?= $this->include('admin/tk/form_edit') ?>

<?= $this->endSection() ?>