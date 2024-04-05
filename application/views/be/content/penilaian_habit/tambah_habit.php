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
        <form action="<?= base_url("penilaian/submit/submit_habit")?>" method = "POST">
        <section class="content">
            <div class="row">
                <div class="col-12">
                    <div class="box">
                    <div class="box-header with-border d-flex">
                        <h3 class="box-title flex-grow-1"><?= $subtitle; ?></h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
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
                            echo '<h4 class="date">' . $format_tanggal . '</h4>';
                        ?>
                        <br>
                        <div class="form-group">
                            <label for="nama_siswa"><h4>Nama Siswa</h4></label>
                            <select class="form-control form-control-md" id="nama" name="nama" required>
                            <?php foreach ($data_siswa as $siswa): ?>
                                <option value="<?php echo $siswa->id; ?>"><?php echo $siswa->nama; ?></option>
                            <?php endforeach; ?>
                            </select>
                        </div>
                        <br>
                        <div id="accordion">
                        <?php $no_id=1; $no_ptyn=0; $j_pertanyaan=0; ?>
                        <?php $no=1; foreach ($kategoriHabit as $key => $row): ?>
                            <div class="card" >
                                <div class="card-header" id="headingOne">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link" data-toggle="collapse" data-target="#collapse<?php echo $no ?>" aria-expanded="true" aria-controls="collapseOne">
                                        <?php echo $row["nama_kategori"]; ?>
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapse<?php echo $no ?>" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        <div class="container mt-4">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="card-deck">
                                                        <!-- Card 1 -->
                                                        <?php foreach (getPertanyaan($row["id"]) as $pertanyaan => $ptyn): ?>
                                                        <div class="card">
                                                            <div class="card-body">
                                                                <h5 class="card-title"><?php echo $ptyn["pertanyaan"]; ?></h5>
                                                                <?php 
                                                                    $getData = getNilai($ptyn["id"]);
                                                                    $newArr = array_map(function($v){
                                                                        return $v["nilai_angka"];
                                                                    }, $getData);
                                                                    $max = array_keys($newArr, max($newArr));
                                                                    $index = 0;
                                                                    foreach (getNilai($ptyn["id"]) as $nilai => $ni): ?>
                                                                    <div class="form-check">
                                                                    <input class="form-check-input <?php if(($index == $max[0]) && $ptyn["sts_berhalangan"]=="Y")
                                                                    {
                                                                        echo "its_berhalangan";
                                                                    }
                                                                    ?>" type="radio" name="pertanyaan<?php echo $no_ptyn; ?>" value="<?php echo $row["id"] . "-". $ptyn["id"] . "-" . $ni["id"] . "-" . $ni["nilai_angka"]; ?>" id="<?php echo $no_id; ?>" 
                                                                    <?php if($ni["nama_nilai"]=="Tidak")
                                                                    {
                                                                     echo "checked";
                                                                    }?>>
                                                                    <label class="form-check-label" for="<?php echo $no_id; ?>"><?php echo $ni["nama_nilai"]; ?></label>
                                                                    </div>
                                                                <?php $index++; $no_id++; endforeach; ?>
                                                            </div>
                                                        </div>
                                                        <?php $j_pertanyaan++; $no_ptyn++; endforeach; ?> 
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php $no++; endforeach; ?> 
                            <div class="card">
                                <div class="card-header" id="headingTwo" style= "display : flex !important;justify-content : around;">
                                <div>
                                    <h5 class="mb-0">
                                    <input type="hidden" name="j_pertanyaan" value="<?php echo $j_pertanyaan?>">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" aria-expanded="false" >
                                    Berhalangan / Haid
                                    </button>
                                    </h5>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-toggle btn-info active" id="switchButton"data-toggle="button" aria-pressed="false" autocomplete="off">
                                        <div class="handle"></div>
                                    </button>
                                    <input type="hidden" name="berhalangan" id="berhalangan" value="tidak">
                                </div>
                                </div>
                            </div>
                        </div>
                            <button type="submit" class="waves-effect waves-light btn btn-primary mb-5" id="submitBtn" style="width:100%">
                                <b>SUBMIT</b>
                            </button>
                        </div>  
                        </div>
                    </div>
                        <!-- /.box-body -->
                    </div>
                      <!-- /.box -->
                </div>
                
            </div>
        </section>
        </form>
        <!-- /.content -->
        
    </div>
</div>
<!-- /.content-wrapper -->

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
    $(document).ready(function () {
        $('#switchButton').click(function () {
            const aria_pressed = $(this).attr("aria-pressed")

            if(aria_pressed == "true")
            {
                $("#berhalangan").val("tidak")
            }
            else 
            {
                $(".its_berhalangan").each(function(i, e){
                    e.checked = true
                })
                $("#berhalangan").val("ya")
            }
            // // Lakukan sesuatu ketika tombol switch diubah (misalnya, kirim data ke server)
            // if (isChecked) {
            //     console.log('Switch On');
            //     // Tambahkan kode sesuai kebutuhan Anda
            // } else {
            //     console.log('Switch Off');
            //     // Tambahkan kode sesuai kebutuhan Anda
            // }
        });
    });
</script>