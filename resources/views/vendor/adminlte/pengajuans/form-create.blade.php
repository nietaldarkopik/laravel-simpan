@if (count($errors) > 0)
    <div class="alert alert-danger">
        <strong>Whoops!</strong> There were some problems with your input.<br><br>
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<form action="{{ route('admin.pengajuan.store') }}" method="POST" enctype="multipart/form-data">
    @csrf

    <div class="row mb-3">
        <div class="col-xs-12 col-sm-12 border">
            <div class="row">
                <div class="col-sm-12 p-0 bg-secondary text-white px-1">
                    <div class="form-group mb-0">
                        <span>Judul Pengajuan</span>
                    </div>
                </div>
                <div class="col-sm-12 p-1">
                    <input required="required" type="text" name="judul" value=""
                        class="form-control border-warning border py-0 text-italic rounded-0 form-control-sm"
                        placeholder="Judul Pengajuan" />
                </div>
            </div>
        </div>
    </div>

    <div class="row mb-3 g-2 gap-2">
        <div class="col-xs-12 col-sm-4 border">
            <div class="row">
                <div class="col-sm-12 bg-secondary text-white">
                    <div class="form-group mb-0">
                        <span>Jenis Pengajuan</span>
                    </div>
                </div>
                <div class="col-sm-12 p-2">
                    <select required="required" name="kabkota_id" id="input-kabkota_id"
                        class="form-select form-custom border-warning border py-0 text-italic rounded-0 form-control-sm w-100">
                        <option value="">Pilih Jenis Pengajuan ...</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 bg-secondary text-white">
                    <div class="form-group mb-0">
                        <span>Tanggal</span>
                    </div>
                </div>
                <div class="col-sm-12 p-2">
                    <input type="text" name="tgl_pengajuan" value=""
                        class="form-control border-warning border py-0 text-italic rounded-0 form-control-sm"
                        placeholder="Tanggal" />
                </div>
            </div>
        
            <div class="row">
                <div class="col-sm-12 bg-secondary text-white">
                    <div class="form-group mb-0">
                        <span>Keterangan</span>
                    </div>
                </div>
                <div class="col-sm-12 p-2">
                    <textarea type="text" name="keterangan" rows="5"
                        class="form-control border-warning border py-0 text-italic rounded-0 form-control-sm"
                        placeholder="Keterangan"></textarea>
                </div>
            </div>
        
            <div class="row">
                <div class="col-sm-12 bg-secondary text-white">
                    <div class="form-group mb-0">
                        <span>Status Data</span>
                    </div>
                </div>
                <div class="col-sm-12 p-2">
                    <select required="required"name="status_data"
                        class="form-select-form-select-custom border-warning border py-0 w-100 text-italic rounded-0 form-control-sm">
                        <option value="">Pilih Status ...</option>
                        <option value="Draft">Draft</option>
                        <option value="Publish">Publish</option>
                        <option value="Batal">Batal</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-8 border">
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-12 bg-secondary text-white">
                            <div class="form-group mb-0">
                                <span>Prosedur</span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 prosedur-container p-2">
                            <div class="alert alert-lg alert-info">Silahkan Pilih Jenis Pengajuan</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-12 bg-secondary text-white">
                            <div class="form-group mb-0">
                                <span>Template</span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-12 template-container p-2">
                            <div class="alert alert-lg alert-info">Silahkan Pilih Jenis Pengajuan</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row mb-1 g-1">
        <div class="col-xs-12 mb-3 text-center">
            <button type="submit" class="btn btn-primary">
                <i class="fa fa-save" aria-hidden="true"></i>
                Simpan
            </button>
        </div>
    </div>
</form>
