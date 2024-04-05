<?php require 'vendor/autoload.php'; ?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <div class="container-full">

        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="page-title"><?= $title; ?></h3>
                    <div class="d-inline-block align-items-center">
                        <nav>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#"><i class="mdi mdi-home-outline"></i></a></li>
                                <li class="breadcrumb-item" aria-current="page"><?= $menu; ?></li>
                                <li class="breadcrumb-item active" aria-current="page"><?= $submenu; ?></li>
                            </ol>
                        </nav>
                    </div>
                </div>
                
            </div>
        </div>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-12">
                    <div class="box">
                        <div class="box-header with-border d-flex">
                            <h3 class="box-title flex-grow-1"><?= $subtitle; ?></h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <ul class="list-group">
                                <?php foreach ($dataList_Tahfidz as $key => $row): ?>
                                    <div class="item-inner">
                                        <div class="item-title-row d-flex align-items-center">
                                            <!-- <div class="item-title flex-grow-1"><h5><?php echo $row["nama"]; ?></h5></div> -->
                                            <div class="item-title flex-grow-1"><h5><h5><?php echo $row["nama"]; ?> membaca surat <?php echo $row["nama_surat"]; ?></h5></div>
                                            <div class="item-after"><h5><?php echo date("d-m-Y", strtotime($row["created_at"])); ?></h5></div>
                                        </div>
                                        <!-- <div class="item-subtitle"><h5>Dari Ayat <?php echo $row["ayat_awal"]; ?> sampai Ayat <?php echo $row["ayat_akhir"]; ?> <?php echo $row["pendamping"]; ?></h5></div> -->
                                        <div class="item-subtitle">
                                            <h6>
                                                <?php echo ($row["ayat_akhir"] - $row["ayat_awal"]) + 1; ?> Ayat, Dari Ayat <?php echo $row["ayat_awal"]; ?> sampai Ayat <?php echo $row["ayat_akhir"]; ?>
                                                <?php
                                                // Cek nilai pendamping
                                                $status = "";
                                                if ($row["pendamping"] == "Orangtua" || $row["pendamping"] == "Saudara") {
                                                    $status = " didampingi ";
                                                }
                                                echo $status . $row["pendamping"];
                                                ?>
                                            </h6>
                                        </div>
                                        <div class="text-justify"><?php echo strip_tags(html_entity_decode($row["deskripsi"])); ?></div>
                                    </div>
                                    <hr>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
            </div>
        </section>
        <!-- /.content -->
        
    </div>
</div>


<!-- Sidebar -->

<div id="chat-box-body" class="hidden">
    <div id="chat-circle" class="waves-effect waves-circle btn btn-circle btn-lg btn-warning l-h-70">
        <div id="chat-overlay"></div>
        <span class="icon-Plus font-size-30"><span class="path1"></span><span class="path2"></span></span>
    </div>

    <div class="chat-box" >
        <div class="chat-box-header p-15 d-flex justify-content-between align-items-center">
            <div class="text-center flex-grow-1">
                <div class="text-dark font-size-18 m-10"><b>Riwayat Tahfidz</b></div>
                <div>
                    <span class="text-muted font-size-12">
                        <?php
                            // Array nama hari dalam Bahasa Indonesia
                            $nama_hari = array(
                                'Sunday' => 'Minggu',
                                'Monday' => 'Senin',
                                'Tuesday' => 'Selasa',
                                'Wednesday' => 'Rabu',
                                'Thursday' => 'Kamis',
                                'Friday' => 'Jumat',
                                'Saturday' => 'Sabtu'
                            );

                            // Array nama bulan dalam Bahasa Indonesia
                            $nama_bulan = array(
                                'January' => 'Januari',
                                'February' => 'Februari',
                                'March' => 'Maret',
                                'April' => 'April',
                                'May' => 'Mei',
                                'June' => 'Juni',
                                'July' => 'Juli',
                                'August' => 'Agustus',
                                'September' => 'September',
                                'October' => 'Oktober',
                                'November' => 'November',
                                'December' => 'Desember'
                            );

                            // Mendapatkan nama hari dan bulan dalam Bahasa Indonesia
                            $nama_hari_ini = $nama_hari[date('l')];
                            $nama_bulan_ini = $nama_bulan[date('F')];

                            // Format tanggal dengan nama hari dan bulan dalam Bahasa Indonesia
                            $format_tanggal = $nama_hari_ini . ', ' . date('d') . ' ' . $nama_bulan_ini . ' ' . date('Y');

                            // Output format tanggal
                            echo '<h6 class="date">' . $format_tanggal . '</h6>';
                        ?>
                    </span>
                </div>
            </div>
            <div class="chat-box-toggle">
                <button id="chat-box-toggle" class="waves-effect waves-circle btn btn-circle btn-danger-light h-40 w-40 rounded-circle l-h-45" type="button">
                    <span class="icon-Close font-size-22"><span class="path1"></span><span class="path2"></span></span>
                </button>
            </div>
        </div>
        <form action="<?= base_url("penilaian/tahfidz/tambah")?>" method = "POST" id="inputTahfidz">
        <div class="chat-box-body">
            <div class="chat-box-overlay">
            </div>
                <div class="chat-logs" id="modalInputTahfidz">
                        <div class="form-group">
                            <label for="namanomorsurat"><h5>Nama Surat</h5></label>
                            <select class="form-control form-control" style="width : 100% !important" onchange="test(this)" name="nama_surat">
                                <option value="0">Pilih Surat</option>
                                <?php foreach ($tahfidz as $data): ?>
                                    <option value="<?php echo $data["nomor"]. ". " . $data["nama_latin"]; ?>"><?php echo $data["nomor"]. " . " . $data["nama_latin"]; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="input-group">
                            <input type="hidden" class="form-control" name="deskripsi" id="deskripsi">
                        </div>
                        <div class="form-group">
                            <label for="ayat1"><h5>Dari Ayat</h5></label>
                            <select class="form-control form-control" style="width : 100% !important" name="ayat[]" id="ayat_awal">
                                <!-- <option value="0">Pilih ayat</option> -->
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="ayat2"><h5>Sampai Ayat</h5></label>
                            <select class="form-control form-control" style="width : 100% !important" name="ayat[]" id="ayat_akhir">
                                <!-- <option value="0">Pilih ayat</option> -->
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="pendamping"><h5>Pendamping</h5></label>
                            <select class="form-control form-control" style="width : 100% !important" name="pendamping" id="pendamping">
                                <option value="Sendiri">Sendiri</option>
                                <option value="Orangtua">Orangtua</option>
                                <option value="Saudara">Saudara</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="catatan">Catatan</label>
                            <textarea class="form-control" id="catatan" name="catatan" rows="3"></textarea>
                        </div>
                </div>
            <!--chat-log -->
        </div>
        <div class="chat-input p-15 d-flex justify-content-between align-items-center">
            <button type="submit" class="waves-effect waves-light btn btn-primary mb-5" id="submitBtn" style="width:100%"><b>SUBMIT</b></button>
        </div>
        </form>
    </div>
</div>

<!-- Page Content overlay -->
<!-- /.content-wrapper -->

<script>

// async function test(a)
// {   if(a.options[0].value == 0)
//     {
//         a.options[0].remove();
//     }
//     const as = await requestAPI(`https://equran.id/api/surat/${a.value.split(". ")[0]}`)
//     $("#ayat_awal").find("option").not(":first").remove();
//     $("#ayat_akhir").find("option").not(":first").remove();
//     for(let i = 1; i <= as.jumlah_ayat; i++){
//         var newOption = new Option(i, i, false, false);
//         $("select[name='ayat[]']").append(newOption).trigger('change');
//     }
// }

async function test(a) {
    if (a.options[0].value == 0) {
        a.options[0].remove();
    }

    const suratId = a.value.split(". ")[0];

    // Panggil API untuk mendapatkan informasi surat
    const suratInfo = await requestAPI(`https://equran.id/api/surat/${suratId}`);

    // Hapus semua opsi kecuali yang pertama pada dropdown ayat_awal dan ayat_akhir
    $("#ayat_awal").find("option").not(":first").remove();
    $("#ayat_akhir").find("option").not(":first").remove();

    // Loop untuk menambahkan opsi ayat
    for (let i = 1; i <= suratInfo.jumlah_ayat; i++) {
        var newOption = new Option(i, i, false, false);
        $("select[name='ayat[]']").append(newOption).trigger('change');
    }




    // Tampilkan deskripsi surat

    let text = suratInfo.deskripsi;
    let result = text.replace("</i>", "");
    $("#deskripsi").val(result);

}


// Ambil elemen
const tombolSubmit = document.getElementById("submitBtn");
const ayatAwal = document.getElementById("ayat_awal");
const ayatAkhir = document.getElementById("ayat_akhir");

// Tambahkan event listener untuk klik tombol submit
tombolSubmit.addEventListener("click", function(event) {
    let ayatAwalVal = parseInt(ayatAwal.value);
    let ayatAkhirVal = parseInt(ayatAkhir.value);

    // Jika ayat awal lebih besar dari ayat akhir, tampilkan alert dan batalkan submit
    if (ayatAwalVal > ayatAkhirVal) {
        alert("Ayat awal tidak boleh lebih besar dari ayat akhir");
        event.preventDefault(); // Batalkan aksi default tombol submit
    }
});

function requestAPI(url)
{
  return fetch(url)
    .then((res) => {
      if (res.ok) {
        return res.json();
      }
      throw new Error(res.status);
    })
    .then((data) => {
      if (!data) {
        throw new Error("Empty!");
      }
      return data;
    });
}

</script>
