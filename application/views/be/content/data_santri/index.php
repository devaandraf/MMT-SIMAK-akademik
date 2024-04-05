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
                        <!-- <button type="button" class="waves-effect waves-light btn btn-primary mb-2" data-toggle="modal" data-target="#tambahModal">
                            <i class="fa fa-plus-circle"></i> Tambah
                        </button> -->
                    </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="table-responsive">
                              <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th class="text-center">No</th>
                                        <th class="text-center">Nama</th>
                                        <th class="text-center">NIS</th>
                                        <th class="text-center">Jenis Kelamin</th>
                                        <th class="text-center">Foto</th>
                                        <th class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php foreach ($data_siswa as $key => $row): ?>
                                    <tr>
                                        <td class="text-center"><?php echo $key + 1; ?></td>
                                        <td class="text-left"><?php echo $row->nama; ?></td>
                                        <td class="text-center"><?php echo $row->nis; ?></td>
                                        <td class="text-center"><?php echo $row->jk; ?></td>
                                        <td class="text-center"><?php echo $row->file_gambar; ?></td>
                                        <td class="text-center">
                                            <a href="<?= base_url('master/data_santri/hapus/' . $row->id) ?>" onclick="return confirm('Anda yakin ingin menghapus data ini?')" class="btn btn-danger">Delete</a>
                                        </td>
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

            <!-- Modal Tambah Data -->
            <!-- <div class="modal fade" id="tambahModal" tabindex="-1" role="dialog" aria-labelledby="tambahModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="tambahModalLabel">Tambah Data</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body"> -->
                            <!-- Isi form untuk menambah data -->
                            <!-- <form action="<?= base_url("master/data_santri/tambah")?>" method = "POST">
                                <div class="form-group">
                                    <label for="Nama Siswa">Nama</label>
                                    <input type="text" class="form-control" id="nama" name="nama" required>
                                </div>
                                <div class="form-group">
                                    <label for="nis">NIS</label>
                                    <input type="number" class="form-control" id="nis" name="nis" required>
                                </div>
                                <div class="form-group">
                                    <label for="jk">Jenis Kelamin</label>
                                    <select class="form-control" id="jk" name="jk" required>
                                        <option value="Laki - laki">Laki-laki</option>
                                        <option value="Perempuan">Perempuan</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="file_gambar">Foto</label>
                                    <input type="file" class="form-control" id="file_gambar" name="file_gambar">
                                </div> -->
                                <!-- Tambahkan input fields lainnya sesuai kebutuhan -->
                                <!-- <button type="submit" class="btn btn-primary">Simpan</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div> -->

        </section>
        <!-- /.content -->
        
    </div>

    <div id="chat-box-body">
        <div id="chat-circle" class="waves-effect waves-circle btn btn-circle btn-lg btn-primary l-h-70">
            <div id="chat-overlay"></div>
            <span class="icon-Plus font-size-30"><span class="path1"></span><span class="path2"></span></span>
        </div>

        <div class="chat-box">
            <div class="chat-box-header p-15 d-flex justify-content-between align-items-center">
                <div class="text-center flex-grow-1">
                    <div class="text-dark font-size-18 m-10"><b>Tambah Data Siswa</b></div>
                </div>
                <div class="chat-box-toggle">
                    <button id="chat-box-toggle" class="waves-effect waves-circle btn btn-circle btn-danger-light h-40 w-40 rounded-circle l-h-45" type="button">
                        <span class="icon-Close font-size-22"><span class="path1"></span><span class="path2"></span></span>
                    </button>
                </div>
            </div>
            <form action="<?= base_url("master/data_santri/tambah")?>" method = "POST" id="tambahModalLabel">
            <div class="chat-box-body">
                <div class="chat-box-overlay">
                </div>
                    <div class="chat-logs" id="tambahModalLabel">
                    <div class="form-group">
                                    <label for="Nama Siswa">Nama</label>
                                    <input type="text" class="form-control" id="nama" name="nama" required>
                                </div>
                                <div class="form-group">
                                    <label for="nis">NIS</label>
                                    <input type="number" class="form-control" id="nis" name="nis" required>
                                </div>
                                <div class="form-group">
                                    <label for="jk">Jenis Kelamin</label>
                                    <select class="form-control" id="jk" name="jk" required>
                                        <option value="Laki - laki">Laki-laki</option>
                                        <option value="Perempuan">Perempuan</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="file_gambar">Foto</label>
                                    <input type="file" class="form-control" id="file_gambar" name="file_gambar">
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

</div>
<!-- /.content-wrapper -->