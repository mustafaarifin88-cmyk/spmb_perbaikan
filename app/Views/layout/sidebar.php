<style>
    .layout-menu {
        background: rgba(15, 23, 42, 0.85) !important;
        backdrop-filter: blur(20px) !important;
        -webkit-backdrop-filter: blur(20px) !important;
        border-right: 1px solid rgba(255, 255, 255, 0.08) !important;
        box-shadow: 4px 0 24px rgba(0, 0, 0, 0.15) !important;
    }
    .layout-menu .menu-link {
        color: #cbd5e1 !important;
        transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        border-radius: 0.5rem;
        margin: 0.2rem 0.8rem;
    }
    .layout-menu .menu-icon {
        color: #94a3b8 !important;
        transition: all 0.3s ease;
    }
    .layout-menu .menu-item:not(.active) > .menu-link:hover {
        background: rgba(255, 255, 255, 0.08) !important;
        color: #ffffff !important;
        transform: translateX(6px);
    }
    .layout-menu .menu-item:not(.active) > .menu-link:hover .menu-icon {
        color: #696cff !important;
    }
    .layout-menu .menu-item.active > .menu-link {
        background: linear-gradient(135deg, #696cff 0%, #3f4191 100%) !important;
        box-shadow: 0 4px 12px rgba(105, 108, 255, 0.3) !important;
        color: #ffffff !important;
    }
    .layout-menu .menu-item.active .menu-icon {
        color: #ffffff !important;
    }
    .menu-vertical .menu-header {
        margin: 1.5rem 0 0.5rem 1.5rem !important;
    }
    .menu-header-text {
        color: #64748b !important;
        font-weight: 700 !important;
        letter-spacing: 1px;
    }
    
    .sidebar-user-profile {
        padding: 1.5rem 1rem;
        margin: 0 1rem 1rem 1rem;
        background: rgba(255, 255, 255, 0.03);
        border-radius: 1rem;
        border: 1px solid rgba(255, 255, 255, 0.05);
        text-align: center;
        transition: all 0.3s ease;
    }
    .sidebar-user-profile:hover {
        background: rgba(255, 255, 255, 0.08);
    }
    .sidebar-user-avatar {
        width: 70px;
        height: 70px;
        border-radius: 50%;
        border: 3px solid #696cff;
        padding: 3px;
        margin-bottom: 12px;
        object-fit: cover;
        box-shadow: 0 0 20px rgba(105, 108, 255, 0.3);
    }
    .sidebar-user-name {
        color: #ffffff;
        font-weight: 700;
        font-size: 0.95rem;
        margin-bottom: 3px;
        display: block;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }
    .sidebar-user-role {
        color: #94a3b8;
        font-size: 0.75rem;
        text-transform: uppercase;
        letter-spacing: 1.5px;
        font-weight: 600;
    }
</style>

<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
    <div class="app-brand demo" style="height: 80px;">
        <a href="<?= base_url() ?>" class="app-brand-link">
            <span class="app-brand-logo demo">
                <i class='bx bxs-graduation' style="font-size: 2.2rem; color: #696cff;"></i>
            </span>
            <span class="app-brand-text demo menu-text fw-bolder ms-2 text-white" style="text-transform: uppercase; letter-spacing: 1px;">SPMB SD N 4</span>
        </a>
        <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
            <i class="bx bx-chevron-left bx-sm align-middle"></i>
        </a>
    </div>

    <div class="menu-inner-shadow"></div>

    <div class="sidebar-user-profile mt-2">
        <img src="<?= base_url('uploads/profil/' . (session()->get('foto_profil') ?: 'default.png')) ?>" alt="User Avatar" class="sidebar-user-avatar">
        <span class="sidebar-user-name"><?= session()->get('nama_lengkap') ?: 'Pengguna' ?></span>
        <span class="sidebar-user-role"><?= session()->get('level') == 'admin' ? 'Administrator' : 'Calon Siswa' ?></span>
    </div>

    <ul class="menu-inner py-2">
        <?php if (session()->get('level') == 'admin') : ?>
            <li class="menu-item <?= uri_string() == 'admin/dashboard' ? 'active' : '' ?>">
                <a href="<?= base_url('admin/dashboard') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-home-circle"></i>
                    <div data-i18n="Dashboard">Dashboard</div>
                </a>
            </li>

            <li class="menu-header small text-uppercase"><span class="menu-header-text">Master Data</span></li>
            
            <li class="menu-item <?= uri_string() == 'admin/agama' ? 'active' : '' ?>">
                <a href="<?= base_url('admin/agama') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-book-bookmark"></i>
                    <div data-i18n="Agama">Agama</div>
                </a>
            </li>
            <li class="menu-item <?= uri_string() == 'admin/pekerjaan' ? 'active' : '' ?>">
                <a href="<?= base_url('admin/pekerjaan') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-briefcase"></i>
                    <div data-i18n="Pekerjaan">Pekerjaan</div>
                </a>
            </li>
            <li class="menu-item <?= uri_string() == 'admin/alamat' ? 'active' : '' ?>">
                <a href="<?= base_url('admin/alamat') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-map-alt"></i>
                    <div data-i18n="Wilayah">Wilayah (Alamat)</div>
                </a>
            </li>
            <li class="menu-item <?= uri_string() == 'admin/pendidikan' ? 'active' : '' ?>">
                <a href="<?= base_url('admin/pendidikan') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-graduation"></i>
                    <div data-i18n="Pendidikan">Pendidikan</div>
                </a>
            </li>
            <li class="menu-item <?= uri_string() == 'admin/tk' ? 'active' : '' ?>">
                <a href="<?= base_url('admin/tk') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-buildings"></i>
                    <div data-i18n="Nama TK">Nama TK</div>
                </a>
            </li>
            <li class="menu-item <?= uri_string() == 'admin/berkasfisik' ? 'active' : '' ?>">
                <a href="<?= base_url('admin/berkasfisik') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-file"></i>
                    <div data-i18n="Berkas Fisik">Berkas Fisik</div>
                </a>
            </li>
            <li class="menu-item <?= uri_string() == 'admin/persyaratan' ? 'active' : '' ?>">
                <a href="<?= base_url('admin/persyaratan') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-list-check"></i>
                    <div data-i18n="Persyaratan">Persyaratan</div>
                </a>
            </li>

            <li class="menu-header small text-uppercase"><span class="menu-header-text">Pendaftaran</span></li>
            
            <li class="menu-item <?= uri_string() == 'admin/konfirmasi' ? 'active' : '' ?>">
                <a href="<?= base_url('admin/konfirmasi') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-check-shield"></i>
                    <div data-i18n="Konfirmasi">Konfirmasi</div>
                </a>
            </li>
            <li class="menu-item <?= uri_string() == 'admin/dataperbaikan' ? 'active' : '' ?>">
                <a href="<?= base_url('admin/dataperbaikan') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-repost"></i>
                    <div data-i18n="Data Perbaikan">Data Perbaikan</div>
                </a>
            </li>

            <li class="menu-header small text-uppercase"><span class="menu-header-text">Manajemen User</span></li>

            <li class="menu-item <?= uri_string() == 'admin/adminuser' ? 'active' : '' ?>">
                <a href="<?= base_url('admin/adminuser') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-user-voice"></i>
                    <div data-i18n="User Admin">User Admin</div>
                </a>
            </li>
            <li class="menu-item <?= uri_string() == 'admin/siswauser' ? 'active' : '' ?>">
                <a href="<?= base_url('admin/siswauser') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-group"></i>
                    <div data-i18n="Akun Siswa">Akun Siswa</div>
                </a>
            </li>

            <li class="menu-header small text-uppercase"><span class="menu-header-text">Pengaturan</span></li>

            <li class="menu-item <?= uri_string() == 'admin/pengaturan' ? 'active' : '' ?>">
                <a href="<?= base_url('admin/pengaturan') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-calendar-event"></i>
                    <div data-i18n="Jadwal">Jadwal & Status</div>
                </a>
            </li>
            <li class="menu-item <?= uri_string() == 'admin/profilsekolah' ? 'active' : '' ?>">
                <a href="<?= base_url('admin/profilsekolah') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-building-house"></i>
                    <div data-i18n="Profil Sekolah">Profil Sekolah</div>
                </a>
            </li>
            <li class="menu-item <?= uri_string() == 'admin/slideshow' ? 'active' : '' ?>">
                <a href="<?= base_url('admin/slideshow') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-carousel"></i>
                    <div data-i18n="Slideshow">Slideshow</div>
                </a>
            </li>
            <li class="menu-item <?= uri_string() == 'admin/latarbelakang' ? 'active' : '' ?>">
                <a href="<?= base_url('admin/latarbelakang') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-image"></i>
                    <div data-i18n="Latar PDF">Latar PDF</div>
                </a>
            </li>

        <?php else : ?>
            <li class="menu-item <?= uri_string() == 'siswa/dashboard' ? 'active' : '' ?>">
                <a href="<?= base_url('siswa/dashboard') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-home-circle"></i>
                    <div data-i18n="Dashboard">Dashboard</div>
                </a>
            </li>
            
            <li class="menu-header small text-uppercase"><span class="menu-header-text">Pendaftaran</span></li>
            
            <li class="menu-item <?= uri_string() == 'siswa/pendaftaran' ? 'active' : '' ?>">
                <a href="<?= base_url('siswa/pendaftaran') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-edit"></i>
                    <div data-i18n="Isi Formulir">Isi Formulir</div>
                </a>
            </li>
            
            <li class="menu-item <?= uri_string() == 'siswa/profil' ? 'active' : '' ?>">
                <a href="<?= base_url('siswa/profil') ?>" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-user-circle"></i>
                    <div data-i18n="Profil">Profil Saya</div>
                </a>
            </li>
        <?php endif; ?>

        <li class="menu-item mt-4 mb-4">
            <a href="<?= base_url('auth/logout') ?>" class="menu-link text-danger fw-bold" style="background: rgba(255, 62, 29, 0.1);">
                <i class="menu-icon tf-icons bx bx-power-off text-danger"></i>
                <div data-i18n="Logout">Keluar Sistem</div>
            </a>
        </li>
    </ul>
</aside>