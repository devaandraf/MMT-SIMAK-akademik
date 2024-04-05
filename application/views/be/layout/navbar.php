<nav class="main-nav" role="navigation">

    <!-- Mobile menu toggle button (hamburger/x icon) -->
    <input id="main-menu-state" type="checkbox" />
    <label class="main-menu-btn" for="main-menu-state">
        <span class="main-menu-btn-icon"></span> Toggle main menu visibility
    </label>

    <!-- Sample menu definition -->
    <ul id="main-menu" class="sm sm-blue">
        <li>
            <a href="<?= site_url("dashboard") ?>">
                <i class="icon-Layout-4-blocks"><span class="path1"></span><span class="path2"></span></i>Dashboard
            </a>
        </li>
        <li><a href="#"><i span class="icon-Layout-grid"><span class="path1"></span><span class="path2"></span></i>Data master</a>
            <ul>
                <!-- <li>
                    <a href="<?= site_url("master/data_jabatan") ?>">
                        <i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Jabatan
                    </a>
                </li> -->
                <li>
                    <a href="<?= site_url("master/data_profil") ?>">
                        <i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Data Profil Pancasila
                    </a>
                </li>
                <li>
                    <a href="<?= site_url("master/data_santri") ?>">
                        <i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Data Siswa
                    </a>
                </li>
                <!-- <li>
                    <a href="<?= site_url("master/management_kelas") ?>">
                        <i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Management Kelas
                    </a>
                </li>
                <li>
                    <a href="<?= site_url("master/management_jilid") ?>"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Management Jilid
                    </a>
                </li>
                <li>
                    <a href="<?= site_url("master/management_kbm") ?>"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Managemnet KBM
                    </a>
                </li> -->
            </ul>
        </li>
        <li><a href="#"><i span class="icon-Library"><span class="path1"></span><span class="path2"></span></i>Penilaian</a>
            <ul>
                <li>
                    <a href="<?= site_url("penilaian/penilaian_habit") ?>">
                        <i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Habit
                    </a>
                </li>
                <li>
                    <a href="<?= site_url("penilaian/tahfidz") ?>"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Tahfidz
                    </a>
                </li>
                <li>
                    <a href="<?= site_url("penilaian/tahsin") ?>"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Tahsin
                    </a>
                </li>
            </ul>
        </li>
        <li><a href="#"><i span class="icon-Menu"><span class="path1"></span><span class="path2"></span></i>Laporan</a>
            <ul>
                <li>
                    <a href="<?= site_url("penilaian/rekap_nilai") ?>">
                        <i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Rekap Nilai
                    </a>
                </li>
                <li>
                    <a href="<?= site_url("penilaian/progress") ?>">
                        <i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Progress
                    </a>
                </li>
                <li>
                    <a href="<?= site_url("penilaian/tahfidz/riwayat_tahfidz") ?>">
                        <i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Riwayat Tahfidz
                    </a>
                </li>
                <li>
                    <a href="<?= site_url("penilaian/tahsin/riwayat_tahsin") ?>">
                        <i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Riwayat Tahsin
                    </a>
                </li>
                <li>
                    <a href="<?= site_url("penilaian/cetak_raport") ?>">
                        <i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Cetak Raport
                    </a>
                </li>
            </ul>
        </li>
    </ul>
</nav>