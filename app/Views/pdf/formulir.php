<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Formulir Pendaftaran - <?= $pendaftaran->nama_peserta_didik ?></title>
    <style>
        @page { margin: 0px; }
        body { font-family: Arial, sans-serif; font-size: 11px; margin: 0; padding: 0; }
        .bg-img { position: fixed; top: 0; left: 0; width: 100%; height: 100%; z-index: -1; opacity: 0.15; }
        .content { padding: 30px 50px; position: relative; z-index: 1; }
        .kop-surat { width: 100%; border-bottom: 3px solid #000; padding-bottom: 10px; margin-bottom: 15px; display: table; }
        .logo-kiri { display: table-cell; width: 12%; vertical-align: middle; }
        .text-kop { display: table-cell; width: 76%; vertical-align: middle; text-align: center; }
        .logo-kanan { display: table-cell; width: 12%; vertical-align: middle; }
        .title { text-align: center; font-size: 16px; font-weight: bold; margin-bottom: 20px; text-decoration: underline; }
        .section-title { font-weight: bold; margin-top: 15px; margin-bottom: 5px; background: #eee; padding: 3px 10px; }
        table { width: 100%; border-collapse: collapse; margin-bottom: 10px; }
        td { padding: 4px; vertical-align: top; }
        .pas-foto-box { position: absolute; right: 50px; top: 380px; width: 90px; height: 120px; border: 1px solid #000; text-align: center; line-height: 120px; font-size: 10px; }
        .pas-foto-box img { width: 100%; height: 100%; object-fit: cover; }
        .ttd-container { width: 100%; margin-top: 30px; }
        .ttd-box { float: left; width: 45%; text-align: center; }
        .ttd-box-right { float: right; width: 45%; text-align: center; }
        .ttd-img { height: 60px; margin: 5px 0; }
    </style>
</head>
<body>
    <?php if ($latar && file_exists('uploads/latar_belakang/' . $latar->gambar)) : ?>
        <img src="<?= base_url('uploads/latar_belakang/' . $latar->gambar) ?>" class="bg-img">
    <?php endif; ?>

    <div class="content">
        <div class="kop-surat">
            <div class="logo-kiri">
                <img src="<?= base_url('uploads/logo/' . ($sekolah->logo_pemda ?: '')) ?>" style="width: 60px;">
            </div>
            <div class="text-kop">
                <h2 style="margin: 0; font-size: 14px;"><?= $sekolah->nama_dinas ?></h2>
                <h1 style="margin: 0; font-size: 18px;"><?= $sekolah->nama_sekolah ?></h1>
                <p style="margin: 2px 0;"><?= $sekolah->alamat_lengkap ?>, <?= $sekolah->desa ?>, <?= $sekolah->kabupaten ?></p>
            </div>
            <div class="logo-kanan">
                <img src="<?= base_url('uploads/logo/' . ($sekolah->logo_sekolah ?: '')) ?>" style="width: 60px;">
            </div>
        </div>

        <div class="title">FORMULIR PENDAFTARAN PESERTA DIDIK BARU</div>

        <div class="section-title">A. KETERANGAN PESERTA DIDIK</div>
        <table>
            <tr><td width="30%">Nama Lengkap</td><td width="2%">:</td><td><?= strtoupper($pendaftaran->nama_peserta_didik) ?></td></tr>
            <tr><td>NIK</td><td>:</td><td><?= $pendaftaran->nik_siswa ?></td></tr>
            <tr><td>Jenis Kelamin</td><td>:</td><td><?= $pendaftaran->jenis_kelamin ?></td></tr>
            <tr><td>Tempat, Tgl Lahir</td><td>:</td><td><?= $pendaftaran->tempat_lahir ?>, <?= date('d-m-Y', strtotime($pendaftaran->tanggal_lahir)) ?></td></tr>
            <tr><td>Agama</td><td>:</td><td><?= $pendaftaran->nama_agama ?></td></tr>
            <tr><td>Alamat Lengkap</td><td>:</td><td><?= $pendaftaran->desa ?>, Kec. <?= $pendaftaran->kecamatan ?>, <?= $pendaftaran->kabupaten ?> (<?= $pendaftaran->provinsi ?>)</td></tr>
        </table>

        <div class="section-title">B. KETERANGAN ORANG TUA KANDUNG</div>
        <table>
            <tr><td width="30%">Nama Ayah / Ibu</td><td width="2%">:</td><td><?= $pendaftaran->nama_ayah ?> / <?= $pendaftaran->nama_ibu ?></td></tr>
            <tr><td>NIK Ayah / Ibu</td><td>:</td><td><?= $pendaftaran->nik_ayah ?> / <?= $pendaftaran->nik_ibu ?></td></tr>
            <tr><td>Pendidikan Ayah</td><td>:</td><td><?= $pendaftaran->edu_ayah ?></td></tr>
            <tr><td>Pendidikan Ibu</td><td>:</td><td><?= $pendaftaran->edu_ibu ?></td></tr>
            <tr><td>Pekerjaan Ayah</td><td>:</td><td><?= $pendaftaran->pk_ayah ?></td></tr>
            <tr><td>Pekerjaan Ibu</td><td>:</td><td><?= $pendaftaran->pk_ibu ?></td></tr>
        </table>

        <div class="section-title">C. ASAL MULA PESERTA DIDIK</div>
        <table>
            <tr><td width="30%">Asal / Alamat Taman Kanak Kanak</td><td width="2%">:</td><td><?= $pendaftaran->asal_alamat_tk ?></td></tr>
            <tr><td>Nama Taman Kanak-Kanak</td><td>:</td><td><?= $pendaftaran->nama_tk ?></td></tr>
            <tr><td>Tahun / No Ijazah</td><td>:</td><td><?= $pendaftaran->tahun_nomor_ijazah ?></td></tr>
        </table>

        <div class="pas-foto-box">
            <?php if ($pas_foto && file_exists('uploads/siswa/' . $pas_foto->file_path)) : ?>
                <img src="<?= base_url('uploads/siswa/' . $pas_foto->file_path) ?>">
            <?php else : ?>
                PAS FOTO 3x4
            <?php endif; ?>
        </div>

        <div class="ttd-container">
            <div class="ttd-box">
                <p>Orang Tua / Wali Murid</p>
                <?php if ($pendaftaran->ttd_ortu) : ?>
                    <img src="<?= base_url('uploads/ttd/' . $pendaftaran->ttd_ortu) ?>" class="ttd-img">
                <?php else : ?><div style="height: 60px;"></div><?php endif; ?>
                <p>( <?= $pendaftaran->nama_ayah ?: $pendaftaran->nama_wali ?> )</p>
            </div>
            <div class="ttd-box-right">
                <p><?= $sekolah->desa ?>, <?= date('d M Y') ?><br>Kepala Sekolah</p>
                <?php if ($sekolah->ttd_kepsek) : ?>
                    <img src="<?= base_url('uploads/ttd/' . $sekolah->ttd_kepsek) ?>" class="ttd-img">
                <?php else : ?><div style="height: 60px;"></div><?php endif; ?>
                <p><b><?= $sekolah->nama_kepsek ?></b><br>NIP. <?= $sekolah->nip_kepsek ?></p>
            </div>
        </div>
    </div>
</body>
</html>