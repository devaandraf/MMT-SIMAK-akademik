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

                    <?= $this->session->flashdata('pesan');?>

                    <div class="box">
                        <div class="box-header with-border d-flex">
                            <h3 class="box-title flex-grow-1"><?= $subtitle; ?></h3>
                            <button type="button" class="waves-effect waves-light btn btn-primary mb-2" data-toggle="modal" data-target="#modal-tambah_jabatan">
                                <i class="fa fa-plus-circle"></i> Tambah
                            </button>
                        </div>

                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="table-responsive">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th class="text-center" width="10%">#</th>
                                            <th class="text-center">Jabatan</th>
                                            <th class="text-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $no = 1; foreach ($data_jabatan as $key => $dj) { ?>
                                            <tr>
                                                <td class="text-center"><?= $no; ?></td>
                                                <td><?= $dj['jabatan']; ?></td>
                                                <td class="text-center">
                                                    <a onclick="ubah_jabatan(<?= $dj['id'] ?>)">
                                                        <button type="button" class="btn btn-sm btn-warning waves-effect waves-light mb-5">
                                                            <i class="fa fa-pencil"></i> Ubah
                                                        </button>
                                                    </a>
                                                    <button type="button" class="btn btn-sm btn-danger waves-effect waves-light mb-5 hapus_jabatan" alt="alert" data-id_jabatan="<?= $dj['id'] ?>">
                                                        <i class="fa fa-trash"></i> Hapus
                                                    </button>
                                                </td>
                                            </tr>
                                        <?php $no++; } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                      <!-- /.box -->

                </div>
        </section>
        <!-- /.content -->
    </div>
</div>
<!-- /.content-wrapper -->

<!-- modal Area -->              
<div class="modal fade" id="modal-tambah_jabatan">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Tambah Jabatan</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
            </div>
            <form id="form_tambah" method="post">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                  <label>Nama Jabatan</label>
                                  <input type="text" class="form-control" placeholder="Masukkan data" name="jabatan" id="jabatan">
                                  <small class="text-danger" id="err_jabatan"></small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Tutup</button>
                    <button type="submit" class="btn btn-primary float-right" id="btn_tambah">Simpan</button>
                </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
  <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- modal Area -->              
<div class="modal fade" id="ubahJabatan_Modal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Ubah Jabatan</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
            </div>
            <form id="form_ubah" method="post">
                <div class="modal-body" id="ubahJabatan">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Tutup</button>
                    <button type="submit" class="btn btn-primary float-right" id="btn_ubah">Simpan</button>
                </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
  <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- modal Area -->              
<div class="modal fade" id="hapusJabatan_Modal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Ubah Jabatan</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
            </div>
            <form id="form_ubah" method="post">
                <div class="modal-body" id="hapusJabatan">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Tutup</button>
                    <button type="submit" class="btn btn-primary float-right" id="btn_ubah">Simpan</button>
                </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
  <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<script>
    function ubah_jabatan(id) {
        // console.log(id)
        $('#ubahJabatan').empty()
        $.get('<?= base_url() ?>master/data_jabatan/ubah_modal/' + btoa(id), function(data_jabatan) {
            $('#ubahJabatan').html(data_jabatan)
            $('#ubahJabatan_Modal').modal('show')
        })
    }

    function hapus_jabatan(id) {
        // console.log(id)
        $('#ubahJabatan').empty()
        $.get('<?= base_url() ?>master/data_jabatan/hapus_modal/' + btoa(id), function(data_jabatan) {
            $('#ubahJabatan').html(data_jabatan)
            $('#ubahJabatan_Modal').modal('show')
        })
    }

    $(function() {

        $("#btn_tambah").on("click", function() {

            const data_form = $("#form_tambah").serialize()

            $.ajax({

                url: "<?= site_url("master/data_jabatan/tambah") ?>",
                type: "POST",
                data: data_form,
                dataType: "json",
                beforeSend: function() {

                    // disabled button
                    $("#btn_tambah").prop("disabled", true)
                    $("#btn_tambah").html("Tunggu...")

                    // clear element error
                    $("#err_jabatan").html("")

                    // empty element error
                    $("#jabatan").val("")

                },
                success: function(result) {

                    if (result.status == "error") {

                        if (result.err_jabatan) {
                            $("#err_jabatan").html(result.err_jabatan)
                        }

                    } else {
                        window.location.replace("<?= base_url('jabatan'); ?>")
                    }

                    $("#btn_tambah").prop("disabled", false)
                    $("#btn_tambah").html("Simpan")

                }
            })
        })

        $("#btn_ubah").on("click", function() {

            const data_form = $("#form_ubah").serialize()

            $.ajax({

                url: "<?= site_url("master/data_jabatan/ubah") ?>",
                type: "POST",
                data: data_form,
                dataType: "json",
                beforeSend: function() {

                    // disabled button
                    $("#btn_ubah").prop("disabled", true)
                    $("#btn_ubah").html("Tunggu...")

                    // clear element error
                    $("#err_jabatan_u").html("")

                    // empty element error
                    $("#jabatan_u").val("")

                },
                success: function(result) {

                    if (result.status == "error") {

                        if (result.err_jabatan_u) {
                            $("#err_jabatan_u").html(result.err_jabatan_u)
                        }

                    } else {
                        window.location.replace("<?= base_url('jabatan'); ?>")
                    }

                    $("#btn_ubah").prop("disabled", false)
                    $("#btn_ubah").html("Simpan")

                }
            })
        })

    })
</script>