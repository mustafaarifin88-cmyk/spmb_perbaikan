<div class="modal fade" id="modalTambah" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="border-radius: 1.5rem; overflow: hidden;">
            <div class="modal-header bg-primary px-4 py-3">
                <h5 class="modal-title text-white fw-bold">Tambah Nama TK</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="<?= base_url('admin/tk/store') ?>" method="POST">
                <div class="modal-body px-4 py-4">
                    <div class="mb-3">
                        <label class="form-label fw-bold">Nama Taman Kanak-Kanak</label>
                        <input type="text" name="nama_tk" class="form-control" placeholder="Contoh: TK Pertiwi" required />
                    </div>
                    <div class="mb-0">
                        <label class="form-label fw-bold">Alamat TK</label>
                        <textarea name="alamat_tk" class="form-control" rows="3" placeholder="Masukkan alamat lengkap TK..."></textarea>
                    </div>
                </div>
                <div class="modal-footer px-4 pb-4 border-0">
                    <button type="button" class="btn btn-outline-secondary rounded-pill" data-bs-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary rounded-pill px-4 shadow-sm">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>