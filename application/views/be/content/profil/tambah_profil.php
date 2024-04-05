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
        <form action="<?= base_url("master/submit/submit_profil")?>" method = "POST">
            <section class="content">
                    <div class="row">
                        <div class="col-12">
                            <div class="box">
                                <div class="box-header with-border d-flex">
                                    <h3 class="box-title flex-grow-1"><?= $subtitle; ?></h3>
                                    <?php if ($this->session->flashdata('gagal')) : ?>
                                        <div class="alert alert-warning solid alert-dismissible fade show">
                                            <svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="me-2">
                                                <polyline points="9 11 12 14 22 4"></polyline>
                                                <path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path>
                                            </svg>
                                            <?= $this->session->flashdata('gagal') ?>
                                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="btn-close">
                                            </button>
                                        </div>
                                    <?php elseif ($this->session->flashdata('gagal')) : ?>
                                        <div class="alert alert-danger solid alert-dismissible fade show">
                                            <svg viewBox="0 0 24 24" width="24 " height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="me-2">
                                                <polygon points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2"></polygon>
                                                <line x1="15" y1="9" x2="9" y2="15"></line>
                                                <line x1="9" y1="9" x2="15" y2="15"></line>
                                            </svg>
                                            <strong>Sorry!</strong> <?= $this->session->flashdata('gagal') ?>
                                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="btn-close">
                                            </button>
                                        </div>
                                    <?php endif ?>
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <input type="month" name="wkt_input" id="wkt_input">
                                    <br>
                                    <div class="form-group">
                                        <label for="nama_siswa"><h3>Nama Siswa</h3></label>
                                        <select class="form-control form-control-lg" id="nama" name="nama" required>
                                        <?php foreach ($data_siswa as $siswa): ?>
                                            <option value="<?php echo $siswa->id; ?>"><?php echo $siswa->nama; ?></option>
                                        <?php endforeach; ?>
                                        </select>
                                    </div>
                                    <div id="accordion">
                                        <?php $no_id=1; $no_ptyn=0; $j_pertanyaan=0; ?>
                                        <?php $no=1;$id=0; foreach ($kategoriProfil as $key => $row): ?>
                                        <div class="card">
                                            <div class="card-header" id="headingOne">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link" data-toggle="collapse" data-target="#collapse<?php echo $no ?>" aria-expanded="true" aria-controls="collapseOne">
                                                <?php echo $row["nama_kategori"]; ?>
                                                </button>
                                            </h5>
                                            </div>
                                            <div id="collapse<?php echo $no ?>" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                                <div class="card-body">
                                                    <?php foreach (getPertanyaanPP($row["id"]) as $pertanyaan => $ptyn): ?>
                                                    <ul class="list-group">
                                                        <li class="list-group-item d-flex justify-content-between align-items-center hovered" data-toggle="modal" data-target="#modalItem1<?= $id ?>">
                                                            <?php echo $ptyn["nama_pertanyaan"]; ?>
                                                            <span class="badge bg-primary">>>></span>
                                                        </li>
                                                        <!-- Modal untuk item pertama -->
                                                        <div class="modal fade" id="modalItem1<?= $id ?>" tabindex="-1" role="dialog" aria-labelledby="modalItem1Label" aria-hidden="true">
                                                            <div class="modal-dialog modal-dialog-centered" role="document">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <h5 class="modal-title" id="modalItem1Label"><?php echo $ptyn["nama_pertanyaan"]; ?></h5>
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                            <span aria-hidden="true">&times;</span>
                                                                        </button>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        <?php
                                                                        $getData = getNilaiPP($ptyn["id"]);
                                                                        foreach (getNilaiPP($ptyn["id"]) as $nilai => $ni): ?> <?php echo  $no_ptyn ?>
                                                                        <!-- Isi modal disini -->
                                                                        <div class="form-check">
                                                                            <input class="form-check-input" type="checkbox" name="pertanyaan[<?php echo $no_ptyn?>][]" value="<?php echo $row["id"] . "-". $ptyn["id"] . "-" . $ni["id"]; ?>" id="<?php echo $ni["id"]; ?>">
                                                                            <label class="form-check-label" for="<?php echo $ni["id"]; ?>">
                                                                                <?php echo $ni["nama_nilai"]; ?>
                                                                            </label>
                                                                        </div>
                                                                        <?php $id++; endforeach; ?>
                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Simpan</button>
                                                                        <!-- <button type="submit" class="waves-effect waves-light btn btn-primary mb-5" id="submitBtn">Submit</button> -->
                                                                        <!-- Tambahkan tombol lain jika diperlukan -->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>`
                                                    </ul>
                                                    <?php $j_pertanyaan++; $no_ptyn++; endforeach; ?>
                                                </div>
                                            </div>
                                        </div>
                                        <?php $no++; endforeach; ?>
                                    </div>
                                </div>
                                <input type="hidden" name="j_pertanyaan" value="<?php echo $j_pertanyaan?>">
                                </div>
                                    <button type="submit" class="waves-effect waves-light btn btn-primary mb-5" id="submitBtn" style="width:100%">
                                        <b>SUBMIT</b>
                                    </button>
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


<!-- Sidebar -->


<script>

</script>
