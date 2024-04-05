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
            <form id="printForm" class="box-header with-border d-flex align-items-center" style="gap: 1rem;" action="" method="post">
              <div class="flex-grow-1">
                <h3 class="box-title"><?= $subtitle; ?></h3>
                <br>
                <div class="form-group mt-2">
                  <select class="form-control form-control-md" style="width: 50%!important;" id="nama" name="nama" required>
                    <option>Pilih nama siswa</option>
                    <?php foreach ($data_siswa as $siswa) : ?>
                      <option value="<?php echo $siswa->id; ?>"><?php echo $siswa->nama; ?></option>
                    <?php endforeach; ?>
                  </select>
                </div>
              </div>
              <button id="printButton" type="submit" class="waves-effect waves-light btn btn-md btn-primary mb-2" data-toggle="modal" data-target="#tambahModal">
                <i class="fa fa-print"></i> Print
              </button>
            </form>
            <script>
              document.getElementById('printButton').addEventListener('click', function() {
                var selectedId = document.getElementById('nama').value;
                document.getElementById('printForm').action = '<?= site_url("penilaian/cetak_raport_siswa") ?>/' + selectedId;
                document.getElementById('printForm').submit();
              });
            </script>
            <!-- /.box-header -->
            <div class="box-body">

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