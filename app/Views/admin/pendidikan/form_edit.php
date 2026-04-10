<?php foreach ($pendidikan as $row) : ?>
<div class="modal fade" id="modalEdit<?= $row->id ?>" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content" style="border-radius: 1.5rem; overflow: hidden;">
            <div class="modal-header bg-warning px-4 py-3 border-0">
                <h5 class="modal-title text-white fw-bold">Edit Jenjang Pendidikan</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="<?= base_url('admin/pendidikan/update/' . $row->id) ?>" method="POST">
                <div class="modal-body px-4 py-4">
                    <div class="col mb-2">
                        <label class="form-label fw-bold">Nama Jenjang Pendidikan</label>
                        <input type="text" name="nama_pendidikan" class="form-control form-control-lg" value="<?= $row->nama_pendidikan ?>" required />
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