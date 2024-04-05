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
                            <button type="button" class="waves-effect waves-light btn btn-primary mb-2">
                                <i class="fa fa-plus-circle"></i> Tambah
                            </button>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="table-responsive">
                              <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th class="text-center">#</th>
                                        <th class="text-center">Nama Kelas</th>
                                        <th class="text-center">Wali Kelas</th>
                                        <th class="text-center">Jumlah Santri</th>
                                        <th class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    
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