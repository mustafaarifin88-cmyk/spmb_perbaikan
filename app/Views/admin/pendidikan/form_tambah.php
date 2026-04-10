<div class="modal fade" id="modalTambah" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content" style="border-radius: 1.5rem; overflow: hidden;">
            <div class="modal-header bg-primary px-4 py-3 border-0">
                <h5 class="modal-title text-white fw-bold">Tambah Jenjang Pendidikan</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="<?= base_url('admin/pendidikan/store') ?>" method="POST">
                <div class="modal-body px-4 py-4">
                    <div class="col mb-2">
                        <label class="form-label fw-bold">Nama Jenjang Pendidikan</label>
                        <input type="text" name="nama_pendidikan" class="form-control form-control-lg" placeholder="Contoh: S1 / Sarjana" required />
                    </div>
                </div>
                <div class="modal-footer px-4 pb-4 border-0">
                    <button type="button" class="btn btn-outline-secondary rounded-pill" data-bs-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary rounded-pill px-4 shadow-sm">Simpan Data</button>
                </div>
            </form>
        </div>
    </div>
</div>