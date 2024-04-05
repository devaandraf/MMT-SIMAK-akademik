<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <div class="container-full">

        <!-- Content Header (Page header) -->
        <div class="content-header">
            <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
            <style>
                /* CSS untuk mengontrol ukuran kanvas */
                #radarChart {
                    max-width: 500px; /* Lebar maksimum kanvas */
                    max-height: 500px; /* Tinggi maksimum kanvas */
                }
            </style>
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
                        <!-- <button type="button" class="waves-effect waves-light btn btn-primary mb-2" data-toggle="modal" data-target="#tambahModal">
                            <i class="fa fa-plus-circle"></i> Tambah
                        </button> -->
                    </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="form-group">
                                <label for="nama_siswa"><h4>Nama Siswa</h4></label>
                                <select class="form-control form-control-md" id="nama" name="nama" required>
                                    <option >Pilih nama siswa</option>
                                <?php foreach ($data_siswa as $siswa): ?>
                                    <option value="<?php echo $siswa->id; ?>"><?php echo $siswa->nama; ?></option>
                                <?php endforeach; ?>
                                </select>
                            </div>
                            <br>
                            <br>
                            <div class="d-flex justify-content-center">
                                <canvas id="radarChart"></canvas>
                            </div>

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
<!-- /.content-wrapper -->

<script>
    // Mengambil data baru dari controller dengan parameter siswaId saat nama siswa diubah
    $('#nama').change(function() {
        var siswaid = this.value;
        // Mengambil data baru dari controller dengan parameter siswaId
        $.ajax({
            url: "<?php echo base_url('penilaian/dataChart/') ?>" + siswaid,
            type: "GET",
            dataType: "text",
            success: function(data) {
                var chartData = JSON.parse(data);
                updateChart(chartData);

                // Tambahkan event listener ketika nama siswa berubah
                document.getElementById('nama').addEventListener('change', function() {
                    var siswaid = this.value;
                    // Mengambil data baru dari controller dengan parameter siswaId
                    $.ajax({
                        url: "<?php echo base_url('penilaian/dataChart/') ?>" + siswaid,
                        type: "GET",
                        dataType: "text",
                        success: function(data) {
                            var chartData = JSON.parse(data);
                            updateChart(chartData);
                        }
                    });
                });
            }
        });
    });

    function updateChart(data) {
        var existingChart = Chart.getChart('radarChart');
        // If an existing Chart instance is found, destroy it
        if (existingChart) {
            existingChart.destroy();
        }
        var radarChart = new Chart(document.getElementById('radarChart'), {
            type: 'radar',
            data: data,
            options : 
            {
            scale: {
                ticks: {
                    beginAtZero: true // Mulai dari 0
                }
            }
            }
        });
    }
</script>