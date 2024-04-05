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
            <?php if($this->session->flashdata("berhasil")):?>
                <div class="alert alert-primary" role="alert">
                    <?php echo $this->session->flashdata("berhasil") ?>
                </div>
            <?php endif ?>
            <?php if($this->session->flashdata("gagal")):?>
                <div class="alert alert-danger" role="alert">
                    <?php echo $this->session->flashdata("gagal") ?>
                </div>
            <?php endif ?>
            <div class="row">

                <div class="col-12">

                    <div class="box">
                    <div class="box-header with-border d-flex">
                        <h3 class="box-title flex-grow-1"><?= $subtitle; ?></h3>
                        <a href="<?= base_url('penilaian/input/input_habit') ?>"><button type="button" class="waves-effect waves-light btn btn-primary mb-2" >
                            <i class="fa fa-plus-circle"></i> Tambah
                        </button></a>
                    </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="table-responsive table-hover">
                              <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th class="text-center">No</th>
                                        <th class="text-center">Tanggal</th>
                                        <th class="text-center">Nama</th>
                                        <th class="text-center">Ibadah Wajib</th>
                                        <th class="text-center">Ibadah Sunnah</th>
                                        <th class="text-center">Literasi</th>
                                        <th class="text-center">Muamalah</th>
                                        <th class="text-center">Berhalangan/Haid</th>
                                        <!-- <th class="text-center">Total</th> -->
                                        <th class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($data_listNilai as $key => $rowNilai): ?>
                                    <tr>
                                        <td class="text-center"><?php echo $key + 1; ?></td>
                                        <td class="text-center"><?php echo $rowNilai["wkt_input"]; ?></td>
                                        <td class="text-left"><?php echo $rowNilai["nama"]; ?></td>
                                        <td class="text-center"><?php echo getGradeNilai($rowNilai["kat1"]); ?></td>
                                        <td class="text-center"><?php echo getGradeNilai($rowNilai["kat2"]); ?></td>
                                        <td class="text-center"><?php echo getGradeNilai($rowNilai["kat3"]); ?></td>
                                        <td class="text-center"><?php echo getGradeNilai($rowNilai["kat4"]); ?></td></td>
                                        <td class="text-center"><?php echo $rowNilai["berhalangan"]; ?></td></td>
                                        <td class="text-center">
                                            <a href="<?= base_url('penilaian/penilaian_habit/hapus/' . $rowNilai["id"]) ?>" onclick="return confirm('Anda yakin ingin menghapus data ini?')" class="btn btn-danger">Delete</a>
                                        </td>
                                        <!-- <td class="text-center"><?php echo ($rowNilai["kat1"]+$rowNilai["kat2"]+$rowNilai["kat3"]+$rowNilai["kat4"]); ?></td> -->
                                    </tr>
                                    <?php endforeach; ?>
                                </tbody>
                              </table>
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

    <a href="<?= base_url('penilaian/input/input_habit') ?>"><div id="chat-box-body">
        <div id="chat-circle" class="waves-effect waves-circle btn btn-circle btn-lg btn-primary l-h-70">
            <div id="chat-overlay"></div>
            <span class="icon-Plus font-size-30"><span class="path1"></span><span class="path2"></span></span>
        </div>
    </div></a>
    
</div>
<!-- /.content-wrapper -->