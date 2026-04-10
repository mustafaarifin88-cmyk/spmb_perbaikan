<div class="modal fade" id="modalTambah" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content" style="border-radius: 1.5rem; overflow: hidden;">
            <div class="modal-header bg-primary px-4 py-3 border-0">
                <h5 class="modal-title text-white fw-bold">Tambah Data Wilayah</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="<?= base_url('admin/alamat/store') ?>" method="POST">
                <div class="modal-body px-4 py-4">
                    <div class="row g-3">
                        <div class="col-12">
                            <label class="form-label fw-bold">Provinsi</label>
                            <input type="text" name="provinsi" class="form-control form-control-lg" placeholder="Contoh: Riau" required />
                        </div>
                        <div class="col-12">
                            <label class="form-label fw-bold">Kabupaten / Kota</label>
                            <input type="text" name="kabupaten" class="form-control form-control-lg" placeholder="Contoh: Bengkalis" required />
                        </div>
                        <div class="col-12">
                            <label class="form-label fw-bold">Kecamatan</label>
                            <input type="text" name="kecamatan" class="form-control form-control-lg" placeholder="Contoh: Mandau" required />
                        </div>
                        <div class="col-12">
                            <label class="form-label fw-bold">Desa / Kelurahan</label>
                            <input type="text" name="desa" class="form-control form-control-lg" placeholder="Contoh: Air Jamban" required />
                        </div>
                    </div>
                </div>
                <div class="modal-footer px-4 pb-4 border-0">
                    <button type="button" class="btn btn-outline-secondary rounded-pill" data-bs-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary rounded-pill px-4 shadow-sm">Simpan Alamat</button>
                </div>
            </form>
        </div>
    </div>
</div>