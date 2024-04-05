<div class="row">
    <div class="col-md-12">
        <div class="form-group">
              <label>Nama Siswa</label>
              <input type="text" class="form-control" value="<?= $data_siswa['siswa']; ?>" placeholder="Masukkan data" name="siswa" id="siswa_u">
              <small class="text-danger" id="err_siswa_u"></small>
        </div>
    </div>
    <div class="col-md-12">
        <div class="form-group">
              <input type="hidden" class="form-control" value="<?= $data_siswa['id']; ?>" name="id" id="id_siswa_u">
        </div>
    </div>
</div>