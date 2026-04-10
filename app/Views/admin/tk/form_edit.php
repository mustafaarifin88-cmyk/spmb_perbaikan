<?php foreach ($tk as $row) : ?>
<div class="modal fade" id="modalEdit<?= $row->id ?>" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="border-radius: 1.5rem; overflow: hidden;">
            <div class="modal-header bg-warning px-4 py-3">
                <h5 class="modal-title text-white fw-bold">Edit Data TK</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="<?= base_url('admin/tk/update/' . $row->id) ?>" method="POST">
                <div class="modal-body px-4 py-4">
                    <div class="mb-3">
                        <label class="form-label fw-bold">Nama Taman Kanak-Kanak</label>
                        <input type="text" name="nama_tk" class="form-control" value="<?= $row->nama_tk ?>" required />
                    </div>
                    <div class="mb-0">
                        <label class="form-label fw-bold">Alamat TK</label>
                        <textarea name="alamat_tk" class="form-control" rows="3"><?= $row->alamat_tk ?></textarea>
                    </div>
                </div>
                <div class="modal-footer px-4 pb-4 border-0">
                    <button type="button" class="btn btn-outline-secondary rounded-pill" data-bs-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-warning rounded-pill px-4 shadow-sm text-white">Update</button>
                </div>
            </form>
        </div>
    </div>
</div>
<?php endforeach; ?>