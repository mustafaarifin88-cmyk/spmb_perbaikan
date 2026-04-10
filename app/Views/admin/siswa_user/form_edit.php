<?php foreach ($users as $row) : ?>
<div class="modal fade" id="modalEditSiswa<?= $row->id ?>" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="border-radius: 1.5rem; overflow: hidden;">
            <div class="modal-header bg-warning px-4 py-3">
                <h5 class="modal-title text-white fw-bold">Edit Akun Siswa</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="<?= base_url('admin/siswauser/update/' . $row->id) ?>" method="POST">
                <div class="modal-body px-4 py-4">
                    <div class="row g-3">
                        <div class="col-12">
                            <label class="form-label fw-bold">Nama Calon Siswa</label>
                            <input type="text" name="nama_lengkap" class="form-control form-control-lg" value="<?= $row->nama_lengkap ?>" required />
                        </div>
                        <div class="col-12">
                            <label class="form-label fw-bold">Username Login</label>
                            <input type="text" name="username" class="form-control form-control-lg" value="<?= $row->username ?>" required />
                        </div>
                        <div class="col-12">
                            <label class="form-label fw-bold text-danger">Ganti Password (Opsional)</label>
                            <input type="password" name="password" class="form-control form-control-lg" placeholder="Masukkan password baru jika ingin diubah" />
                        </div>
                    </div>
                </div>
                <div class="modal-footer px-4 pb-4 border-0">
                    <button type="button" class="btn btn-outline-secondary rounded-pill" data-bs-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-warning rounded-pill px-4 shadow-sm text-white">Update Akun</button>
                </div>
            </form>
        </div>
    </div>
</div>
<?php endforeach; ?>