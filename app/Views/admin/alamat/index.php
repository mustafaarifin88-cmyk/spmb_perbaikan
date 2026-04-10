<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4 text-white" style="text-shadow: 1px 1px 3px rgba(0,0,0,0.2);">
        <span class="text-white fw-light">Master Data /</span> Alamat (Wilayah)
    </h4>

    <?php if (session()->getFlashdata('success')) : ?>
        <div class="alert alert-success alert-dismissible fade show rounded-pill shadow-sm" role="alert">
            <?= session()->getFlashdata('success') ?>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    <?php endif; ?>

    <div class="card shadow-sm" style="border-radius: 1.5rem; overflow: hidden; border: none;">
        <div class="card-header d-flex justify-content-between align-items-center bg-white border-bottom py-3">
            <h5 class="mb-0 fw-bold">Daftar Wilayah</h5>
            <button type="button" class="btn btn-primary rounded-pill shadow-sm" data-bs-toggle="modal" data-bs-target="#modalTambah">
                <i class="bx bx-plus me-1"></i> Tambah Alamat
            </button>
        </div>
        <div class="table-responsive text-nowrap">
            <table class="table table-hover">
                <thead class="table-light">
                    <tr>
                        <th width="5%">No</th>
                        <th>Provinsi</th>
                        <th>Kabupaten</th>
                        <th>Kecamatan</th>
                        <th>Desa/Kelurahan</th>
                        <th width="15%">Aksi</th>
                    </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                    <?php $no = 1; foreach ($alamat as $row) : ?>
                        <tr>
                            <td><?= $no++ ?></td>
                            <td><?= $row->provinsi ?></td>
                            <td><?= $row->kabupaten ?></td>
                            <td><?= $row->kecamatan ?></td>
                            <td><?= $row->desa ?></td>
                            <td>
                                <button type="button" class="btn btn-sm btn-warning rounded-pill shadow-sm" data-bs-toggle="modal" data-bs-target="#modalEdit<?= $row->id ?>">
                                    <i class="bx bx-edit-alt"></i>
                                </button>
                                <a href="<?= base_url('admin/alamat/delete/' . $row->id) ?>" class="btn btn-sm btn-danger rounded-pill shadow-sm" onclick="return confirm('Yakin ingin menghapus data wilayah ini?')">
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

<?= $this->include('admin/alamat/form_tambah') ?>
<?= $this->include('admin/alamat/form_edit') ?>

<?= $this->endSection() ?>