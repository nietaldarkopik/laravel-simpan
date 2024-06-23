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

<div class="card card-warning card-step-master" style="display: none">
	<div class="card-header">
		<div class="card-tools">
			<button class="btn btn-danger btn-sm">
				<i class="fa fa-times" aria-hidden="true"></i>
			</button>
		</div>
	</div>
	<div class="card-body">
		<div class="form-group">
			<label for="input-unit_id" class="form-label">Unit</label>
			<select class="form-select form-control" name="unit_id[]" id="input-unit_id" disabled>
				<option value="0">Pilih Unit</option>
				<option value="0" selected>Pilih Unit</option>
				@foreach($units as $iu => $u)
				<option value="{{ $u->id }}">{{ $u->code }} - {{ $u->nama }}</option>
				@endforeach
			</select>
		</div>
		<div class="form-group">
			<label for="input-keterangan" class="form-label">Keterangan</label>
			<textarea class="form-control" name="keterangan[]" rows="3" disabled></textarea>
			<input type="hidden" name="id[]" value="0" disabled>
		</div>
	</div>
</div>

<form action="{{ route('admin.sop.updateStep', ['sop_id' => $sop->id]) }}" method="POST" enctype="multipart/form-data" data-sop_id="{{ $sop->id }}">
    @csrf
    @method('patch')
    <div class="row">
        <div class="col-xs-12 col-sm-12 mb-2 border-bottom">
			<h4>Alur SOP <strong>{{ $sop->kode}} - {{ $sop->sop}}</strong></h4>
		</div>
        <div class="col-xs-12 col-sm-12 mb-1 alur-container">
			@foreach (\App\Models\SopStepModel::where('sop_id', '=', $sop->id)->orderBy('sort_order', 'ASC')->get() as $i => $step)
				<div class="card card-warning">
					<div class="card-header">
						<div class="card-tools">
							<button type="button" class="btn btn-danger btn-sm btn-remove-step">
								<i class="fa fa-times" aria-hidden="true"></i>
							</button>
						</div>
					</div>
					<div class="card-body">
						<div class="form-group">
							<label for="input-unit_id" class="form-label">Unit</label>
							<select class="form-select form-control" name="unit_id[]" id="input-unit_id">
								<option selected>Pilih Unit</option>
								@foreach($units as $iu => $u)
								<option value="{{ $u->id }}" @selected($u->id == $step->unit_id)>{{ $u->nama }}</option>
								@endforeach
							</select>
						</div>
						<div class="form-group">
							<label for="input-keterangan" class="form-label">Keterangan</label>
							<textarea class="form-control" name="keterangan[]" rows="3">{{ $step->keterangan }}</textarea>
							<input type="hidden" name="id[]" value="{{$step->id}}">
						</div>
					</div>
				</div>
			@endforeach
		</div>
        <div class="col-xs-12 col-sm-12 mb-1 text-center">
			<button type="button" class="btn btn-warning btn-sm btn-add-step">
				<i class="fa fa-plus" aria-hidden="true"></i> Tambah Baru
			</button>
		</div>
        <div class="col-xs-12 col-sm-12 mb-1 text-right">
			<button type="button" class="btn btn-primary btn-save-step">
				<i class="fa fa-save" aria-hidden="true"></i>
				Simpan
			</button>
		</div>
    </div>
</form>
