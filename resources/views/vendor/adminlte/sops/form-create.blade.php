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

<form action="{{ route('admin.sop.store') }}" method="POST" enctype="multipart/form-data">
    @csrf

    <div class="row mb-1">
        <div class="col-xs-12 col-sm-12 border">
            <div class="row">
                <div class="col-sm-4 p-0 bg-secondary text-white px-1 d-flex justify-content-start align-items-center">
                    <div class="form-group mb-0">
                        <span>Kode</span>
                    </div>
                </div>
                <div class="col-sm-8 p-1">
                    <input required="required" type="text" name="kode" value="" maxlength="20"
                        class="form-control border-warning border py-0 text-italic rounded-0 form-control-sm"
                        placeholder="Kode" />
					<small class="form-text text-muted response-check-kode"></small>
                </div>
            </div>
        </div>
    </div>
    
    <div class="row mb-1">
        <div class="col-xs-12 col-sm-12 border">
            <div class="row">
                <div class="col-sm-4 p-0 bg-secondary text-white px-1 d-flex justify-content-start align-items-center">
                    <div class="form-group mb-0">
                        <span>Nama Jenis Pengajuan</span>
                    </div>
                </div>
                <div class="col-sm-8 p-1">
                    <input required="required" type="text" name="sop" value=""
                        class="form-control border-warning border py-0 text-italic rounded-0 form-control-sm"
                        placeholder="Nama Jenis Pengajuan" />
                </div>
            </div>
        </div>
    </div>

    <div class="row mb-1">
        <div class="col-xs-12 col-sm-12 border">
            <div class="row">
                <div class="col-sm-12 p-0 bg-secondary text-white px-1 d-flex justify-content-start align-items-center">
                    <div class="form-group mb-0">
                        <span>Prosedur</span>
                    </div>
                </div>
                <div class="col-sm-12 p-1">
                    <textarea name="prosedur" rows="6"
                        class="form-control border-warning border py-0 text-italic rounded-0 form-control-sm"
                        placeholder="Prosedur"></textarea>
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
