@extends('adminlte::page')

@section('plugins.Bootstrap4DualListbox', false)
@section('plugins.BootstrapColorpicker', false)
@section('plugins.BootstrapSlider', false)
@section('plugins.BootstrapSwitch', false)
@section('plugins.BsCustomFileInput', false)
@section('plugins.ChartJs', false)
@section('plugins.Datatables', true)
@section('plugins.DatatablesPlugins', true)
@section('plugins.Daterangepicker', true)
@section('plugins.EkkoLightbox', false)
@section('plugins.Fastclick', false)
@section('plugins.Filterizr', false)
@section('plugins.FlagIconCss', false)
@section('plugins.Flot', false)
@section('plugins.Fullcalendar', false)
@section('plugins.IcheckBootstrap', false)
@section('plugins.Inputmask', false)
@section('plugins.IonRangslider', false)
@section('plugins.JqueryKnob', false)
@section('plugins.JqueryMapael', false)
@section('plugins.JqueryUi', true)
@section('plugins.JqueryValidation', false)
@section('plugins.Jqvmap', false)
@section('plugins.Jsgrid', false)
@section('plugins.PaceProgress', false)
@section('plugins.Select2', true)
@section('plugins.Sparklines', false)
{{-- @section('plugins.Summernote', false) --}}
@section('plugins.Sweetalert2', false)
{{-- @section('plugins.TempusdominusBootstrap4', false) --}}
@section('plugins.Toastr', true)

@section('title', 'Data Jenis Pengajuan')

@section('content_header')
    <h1 class="m-0 text-dark">Data Jenis Pengajuan</h1>
@stop

@section('content')
    <div class="card">
        <div class="card-header">
            <h2 class="card-title fw-bold fs-4">Data Jenis Pengajuan</h2>
            <div class="card-tools">
                @can('admin.sop.create')
                    <a class="btn btn-sm btn-primary" href="{{ route('admin.sop.create') }}" data-toggle="modal" data-target="#modalLgId" data-modal-title="Tambah Data">
                        <i class="fa fa-plus-circle" aria-hidden="true"></i> Tambah
                    </a>
                @endcan
            </div>
        </div>
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

            {{ $dataTable->table() }}
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/jquery-treetable/css/jquery.treetable.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/jquery-treetable/css/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
    <style>
        .indented {
            padding-left: 20px;
        }
		.card-sortable {
			min-height: 20px;
			list-style-type: none;
			padding: 5px;
		}
		.card-sortable .card-sortable {
			padding: 5px;
		}
		.ui-state-highlight{
			background: rgba(255, 208, 0, 0.697);
			min-height: 20px;
		}
		.icon-expand{
			display: none;
		}
		.icon-collapse{
			display: inline-block;
		}
		.collapsed .icon-expand{
			display: inline-block;
		}
		.collapsed .icon-collapse{
			display: none;
		}
    </style>
@endpush


@push('js')

{{ $dataTable->scripts(attributes: ['type' => 'module']) }}

<script src="https://cdn.jsdelivr.net/npm/jquery-treetable/jquery.treetable.js"></script>
<script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet.ajax/2.1.0/leaflet.ajax.min.js"></script>

<script>
    $(function() {
        $('[data-tooltip]').tooltip({})
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

	
    function addFileToListDokumen(path,clickableElements,response){
        // Load GeoJSON data
        //var geojsonLayer = new L.GeoJSON.AJAX(path); // Ganti path dengan path GeoJSON Anda
        //geojsonLayer.addTo(map);
        response = JSON.parse(response);
        var url = "{{ asset('storage/uploads/sop/xxx') }}";
        url = url.replace('xxx',response.file);
        $(".file-list-dokumen").prepend('<li class="list-group-item row d-flex">' +
                                        '    <div class="col-sm-10">' +
                                                response.judul +
                                        '    </div>' +
                                        '    <div class="col-sm-2">' +
                                        '        <a href="' + url + '" target="_blank" class="btn btn-primary btn-sm">' +
                                        '            <i class="fa fa-eye" aria-hidden="true"></i>' +
                                        '        </a>' +
                                        '        <button type="button" class="btn btn-danger btn-sm">' +
                                        '            <i class="fa fa-trash" aria-hidden="true"></i>' +
                                        '        </button>' +
                                        '    </div>' +
                                        '</li>');
    }

    function addFileToMap(path,clickableElements,response){
        // Load GeoJSON data
        //var geojsonLayer = new L.GeoJSON.AJAX(path); // Ganti path dengan path GeoJSON Anda
        //geojsonLayer.addTo(map);
        $(".file-list-map").prepend('<li class="list-group-item">'+path.name+'</li>');
    }

    function addFileToListMap(path,clickableElements,response){
        // Load GeoJSON data
        //var geojsonLayer = new L.GeoJSON.AJAX(path); // Ganti path dengan path GeoJSON Anda
        //geojsonLayer.addTo(map);
        $(".file-list-map").prepend('<li class="list-group-item">'+path.name+'</li>');
    }
	
	function getHierarchy($list) {
		$list = (typeof $list == 'undefined')?$(".card-sortable").eq(0):$list;
		var result = [];
		$list.children('[data-id]').each(function() {
			var $item = $(this);
			var id = $item.data('id');
			var children = $item.children('.collapse').children('.card-body').children('.card-sortable').length > 0 ? getHierarchy($item.children('.collapse').children('.card-body').children('.card-sortable')) : [];
			result.push({ id: id, children: children });
		});
		return result;
	}

	// Function to get the order with custom attributes
	function getCustomOrder(parent_container) {
		parent_container = (typeof parent_container == 'undefined')?".card-sortable":parent_container;
		return $(parent_container).find("[data-id]").map(function(i,v) {
			var new_parent_id = $(this).parents("[data-parent_id]").data("id") ?? 0;
			var new_sort_order = $("[data-id='"+$(this).data("id")+"']").index($("[data-id]").parent().find("[data-id]"));
			$(this).data("parent_id",new_parent_id);

			return {
				id: $(this).data("id"),
				parent_id: new_parent_id,
				sort_order: i, //(new_sort_order >= 0)?new_sort_order:false,
				id: $(this).data("id")
			};
		}).get();
	}

	function updateOrder(){
		var data_units = getCustomOrder();
		console.log(data_units);
		var url = "{{ route('admin.unit.updateSort')}}";

		$.ajax({
			url: url,
			type: 'post',
			data: {data: data_units},
			headers: {
				'X-CSRF-TOKEN': "{{ csrf_token() }}",
			},
			dataType: 'json',
			success:function(response){
				toastr.success(response.message, "Sukses", {
					timeOut: 3000,
					positionClass: "toast-top-right",
					progressBar: true
				});
			},
			error:function(xhr, status, error){
				toastr.error(xhr.responseJSON.message, "Error", {
						timeOut: 3000,
						positionClass: "toast-top-right",
						progressBar: true
					});
			}
		})
	}

	function generateCode(){
		var data_units = getHierarchy();
		var url = "{{ route('admin.unit.generateCode')}}";

		$.ajax({
			url: url,
			type: 'post',
			data: {data: data_units},
			headers: {
				'X-CSRF-TOKEN': "{{ csrf_token() }}",
			},
			dataType: 'json',
			success:function(response){
				toastr.success(response.message, "Sukses", {
					timeOut: 3000,
					positionClass: "toast-top-right",
					progressBar: true
				});
			},
			error:function(xhr, status, error){
				toastr.error(xhr.responseJSON.message, "Error", {
						timeOut: 3000,
						positionClass: "toast-top-right",
						progressBar: true
					});
			}
		})
	}

	$("body").on("blur",'[name="kode"]',function(){
        var kode = $(this).val();
        var id = $(this).data("id");
        var url = "{{ route('admin.sop.checkKode',['kode' => 'xx','id' => 'yy'])}}";
        url = url.replace('xx',kode);
        url = url.replace('yy',id);

        $.ajax({
            url: url,
            type: 'get',
			dataType: 'json',
            headers: {
                'X-CSRF-TOKEN': "{{ csrf_token() }}"
            },
            success:function(msg){
                $(".response-check-kode").html('<div class="text-success">'+msg.message+'</div>');
            },
			error: function(msg,xhr,c){
				var responseJSON = msg.responseJSON;
				$(".response-check-kode").html('<div class="text-danger">'+responseJSON.message+'</div>');

			}
        })
	});

	$("body").on("click",".btn-add-step",function(){
		var master = $(".card-step-master").clone();
		$(master).find(":input").prop("disabled",false);
		$(master).find(".custom-select2x").addClass("custom-select2").removeClass("custom-select2x");
		$(master).removeClass("card-step-master").show();
		if($(master).find('.custom-select2').length > 0 && $(master).find('.custom-select2').hasClass('select2-hidden-accessible'))
		{
			$(master).find('.custom-select2').select2("destroy");
		}
		buildSelect2($(master).find('.custom-select2'),$('#modalLgId  .modal-body'));
		$(master).show();
		$(".alur-container > .card-sortable").append(master);
	});

	$("body").on("click",".btn-save-step",function(){
		var form = $(this).parents('form');
		var url = "{{ route('admin.sop.updateStep', ['sop_id' => 'xx']) }}";
		var id_sop = $(form).data("sop_id");

		var data = $(form).serializeArray();
		url = url.replace('xx',id_sop);

		$.ajax({
			url: url,
			data: data,
			type: "post",
			method: 'patch',
            dataType: "json",
            headers: {
				'X-CSRF-TOKEN': "{{ csrf_token() }}",
            },
			success:function(response){
				$("#modalLgId").hide();
				$(".modal-backdrop").remove();
				toastr.success(response.message, "Sukses", {
					timeOut: 30000,
					positionClass: "toast-top-right",
					progressBar: true
				});
			},
			error:function(xhr, status, error){
				toastr.error(xhr.responseJSON.message, "Error", {
						timeOut: 30000,
						positionClass: "toast-top-right",
						progressBar: true
					});
			}
		})
	});

	$("body").on("click",".btn-remove-step",function(){
		if(confirm("Apakah yakin ingin menghapus data ini?"))
		{
			$(this).closest(".card").remove();
		}
	})

	function buildSelect2(selector,parent){
		parent = (!parent)?$('#modalLgId .modal-body'):parent;
		$(selector).select2({
			dropdownParent: parent,
			allowClear: true,
			tags: true,
			placeholder: 'Pilih ...',
		});
	}
	
	$('body','.custom-select2').on('select2:open', function () {
		const select2Dropdown = $('.select2-container');
		const select2Element = $('.custom-select2');

		// Calculate position
		const offset = select2Element.offset();
		const height = select2Element.outerHeight();

		// Set position
		select2Dropdown.css({
			top: offset.top + height,
			left: offset.left,
			position: 'absolute'
		});
	});

	$('#modalLgId').on('shown.bs.modal', function () {
		/* $("#modalLgId .alur-container .card-sortable" ).sortable({
			items: '.card-accordion-items',
			connectWith: ".card-sortable",
			placeholder: "ui-state-highlight",
			handle: ".action-move",
			update: function(event, ui) {
				//updateOrder();
			}
		}).disableSelection();
		
		$("#modalLgId .alur-container > .card-sortable .card  .collapse  .card-sortable").sortable({
			items: '.card-accordion-items',
			connectWith: ".card-sortable",
			handle: ".action-move",
			placeholder: "ui-state-highlight",
			update: function(event, ui) {
				//updateOrder();
			}
		}).disableSelection();

		buildSelect2($('#modalLgId').find('.custom-select2'),$('#modalLgId')); */
	});
	
	$("body").on("click",".btn-generate-id",function(){
		generateCode();
	});

</script>
@endpush
