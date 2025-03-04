@extends('adminlte::page')

@section('plugins.Bootstrap4DualListbox', true)
@section('plugins.BootstrapColorpicker', true)
@section('plugins.BootstrapSlider', true)
@section('plugins.BootstrapSwitch', true)
@section('plugins.BsCustomFileInput', true)
@section('plugins.ChartJs', true)
@section('plugins.Datatables', true)
@section('plugins.DatatablesPlugins', true)
@section('plugins.Daterangepicker', true)
@section('plugins.EkkoLightbox', true)
@section('plugins.Fastclick', true)
@section('plugins.Filterizr', true)
@section('plugins.FlagIconCss', true)
@section('plugins.Flot', true)
@section('plugins.Fullcalendar', true)
@section('plugins.IcheckBootstrap', true)
@section('plugins.Inputmask', true)
@section('plugins.IonRangslider', true)
@section('plugins.JqueryKnob', true)
@section('plugins.JqueryMapael', true)
@section('plugins.JqueryUi', true)
@section('plugins.JqueryValidation', true)
@section('plugins.Jqvmap', true)
@section('plugins.Jsgrid', true)
@section('plugins.PaceProgress', true)
@section('plugins.Select2', true)
@section('plugins.Sparklines', true)
@section('plugins.Sweetalert2', true)
@section('plugins.AnimateCss', true)
{{-- @section('plugins.Summernote', true) --}}
{{-- @section('plugins.TempusdominusBootstrap4', true)
@section('plugins.Toastr', true) --}}

@section('title', 'Perlu Tindakan')

@section('content_header')
    <h1 class="m-0 text-dark">Perlu Tindakan</h1>
@stop

@section('content')
    <div class="card">
        <div class="card-header">
            <h2 class="card-title fw-bold fs-4">Perlu Tindakan</h2>
            <div class="card-tools">
                {{-- @can('admin.pengajuan.create')
                    <a class="btn btn-sm btn-primary" href="{{ route('admin.pengajuan.create') }}" data-toggle="modal" data-target="#modalLgId" data-modal-title="Tambah Data">
                        <i class="fa fa-plus-circle" aria-hidden="true"></i> Tambah
                    </a>
                @endcan --}}
            </div>
        </div>
        {{-- <div class="card-header py-1">
            {{-- <div class="form-row mb-0 d-flex justify-content-stretch">
                <div class="form-group mb-0">
                    <strong class="h5 font-weight-bold mb-0">Filter Data :</strong>
				</div>
			</div> --/}}
			{{-- <div class="form-row mb-0 d-flex justify-content-stretch">
                <div class="form-group mb-0 col-sm-2">
                    <label for="" class="form-label">Jenis Pengajuan</label>
                    <select class="form-select form-control form-custom border py-0 text-italic-0 form-control-sm w-100 custom-select2" name="filter[kabkota_id]" id="filter-kabkota_id">
                        <option value="">Jenis Pengajuan ...</option>
						@foreach(\App\Models\SopModel::get() as $i => $sop)
                        	<option value="{{ $sop->id }}">{{ $sop->kode}} - {{ $sop->sop}}</option>
						@endforeach
                    </select>
                </div>
                <div class="form-group mb-0 col-sm-2">
                    <label for="" class="form-label">Dari Unit</label>
                    <select class="form-select form-control form-custom border py-0 text-italic-0 form-control-sm w-100 custom-select2" name="filter[kabkota_id]" id="filter-kabkota_id">
                        <option value="" selected>Semua Unit ...</option>
						@foreach(\App\Models\UnitModel::orderBy('code')->get() as $i => $unit)
                        	<option value="{{ $unit->id }}">{{ $unit->code}} - {{ $unit->nama}}</option>
						@endforeach
                    </select>
                </div>
                <div class="form-group mb-0 col-sm-2">
                    <label for="" class="form-label">Kepada Unit</label>
                    <select class="form-select form-control form-custom border py-0 text-italic-0 form-control-sm w-100 custom-select2" name="filter[kabkota_id]" id="filter-kabkota_id">
                        <option value="" selected>Semua Unit ...</option>
						@foreach(\App\Models\UnitModel::orderBy('code')->get() as $i => $unit)
                        	<option value="{{ $unit->id }}">{{ $unit->code}} - {{ $unit->nama}}</option>
						@endforeach
                    </select>
                </div>
                <div class="form-group mb-0 col-sm-2">
                    <label for="" class="form-label">Status</label>
                    <select class="form-select form-control form-custom border py-0 text-italic-0 form-control-sm w-100 custom-select2" name="filter[kabkota_id]" id="filter-kabkota_id">
                        <option value="" selected>Status ...</option>
						@foreach(App\Models\StatusPengajuanModel::all() as $i => $s)
						<option value="{{$s->kode}}" style="border-color: {{$s->warna_bg}} !important; background-color: {{$s->warna_bg}} !important; color: {{$s->warna_text}} !important;">{{$s->judul}}</option>
						@endforeach
                    </select>
                </div>
                <div class="form-group mb-0 col-sm-2">
                    <label for="" class="form-label">Tanggal</label>
					<input type="text" class="form-control form-control-sm input-filter" name="filter[daterange]" placeholder="Tanggal">
                </div>
                <div class="col-auto">
                    <label for="" class="form-label">Aksi</label>
                    <button type="button" class="btn btn-sm form-control form-control-sm btn-sm btn-primary" id="search">
                        <i class="fa fa-search" aria-hidden="true"></i> Cari
                    </button>
                </div>
            </div> --/}}
        </div> --}}
        <div class="card-body">

            @if ($message = Session::get('success'))
                <div class="alert alert-success my-2">
                    <p>{{ $message }}</p>
                </div>
            @endif

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

			<div class="table-responsive">
				{{ $dataTable->table() }}
			</div>
        </div>
    </div>

    @include('vendor.adminlte.partials.modal.modal-default',[
        'modalId' => 'modalLgId',
        'modalSize' => 'modal-lg',
        'modalTitle' => '',
        'modalContent' => '',
        'modalFooter' => '',
    ])
@endsection

@push('css')
{{-- <style>
    .file-drop-area {
        border: 2px dashed #007bff;
        border-radius: 5px;
        padding: 30px;
        text-align: center;
        cursor: pointer;
        color: #007bff;
        transition: background-color 0.3s;
    }
    .file-drop-area.drag-over {
        background-color: #e9ecef;
    }
</style> --}}

<link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
@endpush

@push('js')

{{ $dataTable->scripts(attributes: ['type' => 'module']) }}

<script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet.ajax/2.1.0/leaflet.ajax.min.js"></script>
<script>
    $(function() {
        $('[data-tooltip]').tooltip({});
		
		$('.custom-select2').select2({
			tags: true
		});
    });
    
    //The search button event listener
    $('#search').on('click', function(e) {
        e.preventDefault();
        var params = {};
        var kabkota_id = $("#filter-kabkota_id").val();
        var kecamatan_id = $("#filter-kecamatan_id").val();
        var status_bast = $("#filter-status_bast").val();
        var tahun_siteplan = $("#filter-tahun_siteplan").val();

        if(!kabkota_id){
            window.LaravelDataTables["perumahans-table"].column(2).search('', false, false);
        }else{
            window.LaravelDataTables["perumahans-table"].column(2).search(kabkota_id ? kabkota_id : '', false, false);
        }
        if(!kecamatan_id){
            window.LaravelDataTables["perumahans-table"].column(3).search('', false, false);
        }else{
            window.LaravelDataTables["perumahans-table"].column(3).search(kecamatan_id ? kecamatan_id : '', false, false);
        }
        if(!status_bast){
            window.LaravelDataTables["perumahans-table"].column(12).search('', false, false);
        }else{
            window.LaravelDataTables["perumahans-table"].column(12).search(status_bast ? status_bast : '', false, false);
        }
        if(!tahun_siteplan){
            window.LaravelDataTables["perumahans-table"].column(8).search('', false, false);
        }else{
            window.LaravelDataTables["perumahans-table"].column(8).search(tahun_siteplan ? tahun_siteplan : '', false, false);
        }
        
        window.LaravelDataTables["perumahans-table"].table().draw();
    });

	$("body").on("click",".btn-update-status",function(){
		var input_status_baru = $('[name="status_baru"]');
		var status_baru = $(input_status_baru).val();
		var pengajuan_id = $(this).data('pengajuan_id');
		var sop_step_id = $(this).data('sop_step_id');
		var unit_id = $(this).data('unit_id');
        var url = "{{ route('admin.tindakan.updateStatus', ['pengajuan' => 'xxx']) }}";
		url = url.replace('xxx',pengajuan_id);

        return $.ajax({
            url: url,
            type: "post",
            method: "post",
			data: {status: status_baru, pengajuan_id: pengajuan_id,sop_step_id: sop_step_id, unit_id: unit_id},
            dataType: "json",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(msg){
				toastr.success('Sukses', 'Data berhasil dikirim', {
					timeOut: 3000,
					//positionClass: "toast-top-right",
					progressBar: true,
                    onShown: function() {
					}
				});
				$('#modalLgId').fadeOut();
				$(".modal-backdrop.show").remove();
			}
        });

	});
    
</script>
@endpush

@section('content_top_nav_left') @endsection