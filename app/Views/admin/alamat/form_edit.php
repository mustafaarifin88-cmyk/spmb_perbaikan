<?php foreach ($alamat as $row) : ?>
<div class="modal fade" id="modalEdit<?= $row->id ?>" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content" style="border-radius: 1.5rem; overflow: hidden;">
            <div class="modal-header bg-warning px-4 py-3 border-0">
                <h5 class="modal-title text-white fw-bold">Edit Data Wilayah</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="<?= base_url('admin/alamat/update/' . $row->id) ?>" method="POST">
                <div class="modal-body px-4 py-4">
                    <div class="row g-3">
                        <div class="col-12">
                            <label class="form-label fw-bold">Provinsi</label>
                            <input type="text" name="provinsi" class="form-control form-control-lg" value="<?= $row->provinsi ?>" required />
                        </div>
                        <div class="col-12">
                            <label class="form-label fw-bold">Kabupaten / Kota</label>
                            <input type="text" name="kabupaten" class="form-control form-control-lg" value="<?= $row->kabupaten ?>" required />
                        </div>
                        <div class="col-12">
                            <label class="form-label fw-bold">Kecamatan</label>
                            <input type="text" name="kecamatan" class="form-control form-control-lg" value="<?= $row->kecamatan ?>" required />
                        </div>
                        <div class="col-12">
                            <label class="form-label fw-bold">Desa / Kelurahan</label>
                            <input type="text" name="desa" class="form-control form-control-lg" value="<?= $row->desa ?>" required />
                        </div>
                    </div>
                </div>
                <div class="modal-footer px-4 pb-4 border-0">
                    <button type="button" class="btn btn-outline-secondary rounded-pill" data-bs-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-warning rounded-pill px-4 shadow-sm text-white">Update Data</button>
                </div>
            </form>
        </div>
    </div>
</div>
<?php endforeach; ?>