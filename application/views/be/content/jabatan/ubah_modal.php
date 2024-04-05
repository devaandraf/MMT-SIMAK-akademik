<div class="row">
    <div class="col-md-12">
        <div class="form-group">
              <label>Nama Jabatan</label>
              <input type="text" class="form-control" value="<?= $data_jabatan['jabatan']; ?>" placeholder="Masukkan data" name="jabatan" id="jabatan_u">
              <small class="text-danger" id="err_jabatan_u"></small>
        </div>
    </div>
    <div class="col-md-12">
        <div class="form-group">
              <input type="hidden" class="form-control" value="<?= $data_jabatan['id']; ?>" name="id" id="id_jabatan_u">
        </div>
    </div>
</div>