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

<div class="card card-accordion-items card-warning card-step-master" style="display: none" data-id="0" data-id="0"
    data-parent_id="0">
    <div class="card-header pr-0" role="tab" id="sectionHeader0">
        <h5 class="mb-0 d-flex justify-content-between pr-0 flex-nowrap">
            <a class="float-start collapsed col-10 col-md-10" data-toggle="collapse" data-parent="#accordionContainer0"
                href="#sectionContent0" aria-expanded="true" aria-controls="sectionContent0">
				<div class="row align-items-center">
					<div class="col-1">
						<i class="fa fa-plus icon-expand" aria-hidden="true"></i>
						<i class="fa fa-minus icon-collapse" aria-hidden="true"></i>
					</div>
					<div class="col-11">
						<span class="card-title-accordion">
							
						</span>
					</div>
				</div>
            </a>
            <div class="card-tools float-end flex-nowrap col-2 col-md-2 text-right">
                <form method="post" action="{{ route('admin.unit.destroy', ['unit' => 'xx']) }}">
                    @csrf
                    @method('delete')
                    <a data-tooltip="tooltip" title="Pindahkan" href="javascript:void(0);"
                        class="btn btn-sm btn-primary text-light"><i class="fa fa-arrows-alt action-move"
                            aria-hidden="true"></i></a>
                    <button data-tooltip="tooltip" title="Hapus" type="button" class="btn btn-delete-step btn-sm btn-danger"><i
                            class="fa fas fa-times" aria-hidden="true" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')"></i></button>
                </form>
            </div>
        </h5>
    </div>
	<div id="sectionContent0" class="collapse in" role="tabpanel"
		aria-labelledby="sectionHeader0">
		<div class="card-body bg-secondary">
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label for="input-unit_id-0" class="form-label">Unit</label>
						<select
							class="form-select form-control form-custom select-custom custom-select2x"
							name="unit_id[]" id="input-unit_id-0">
							<option value="-1">--- Pemohon --- </option>
							@foreach ($units as $iu => $u)
								<option value="{{ $u->id }}">{{ $u->nama }}
								</option>
							@endforeach
						</select>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label for="input-status-0" class="form-label">Status Unit</label>
						<select class="form-select form-control form-custom select-custom"
							name="status[]" id="input-status-0">
							<option value="pemohon">Pemohon</option>
							<option value="menyetujui">Menyetujui</option>
							<option value="mengetahui">Mengetahui</option>
							<option value="tembusan">Tembusan</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<label for="input-keterangan" class="form-label">Keterangan</label>
					<textarea class="form-control" name="keterangan[]" rows="3" disabled></textarea>
					<input type="hidden" name="id[]" value="0" disabled>
				</div>
			</div>
		</div>
    </div>
</div>

<form action="{{ route('admin.sop.updateStep', ['sop_id' => $sop->id]) }}" method="POST" enctype="multipart/form-data"
    data-sop_id="{{ $sop->id }}">
    @csrf
    @method('patch')
    <div class="row">
        <div class="col-xs-12 col-sm-12 mb-2 border-bottom">
            <h4>Alur Jenis Pengajuan <strong>{{ $sop->kode }} - {{ $sop->sop }}</strong></h4>
        </div>
        <div class="col-xs-12 col-sm-12 mb-1 alur-container">

            @include('vendor.adminlte.sops.accordion', [
                'data' => \App\Models\SopStepModel::where(function ($query) {
                    $query->whereNull('parent_id');
                    $query->orWhere('parent_id', '0');
                })->where('sop_id', '=', $sop->id)->orderBy('sort_order', 'ASC')->get(),
                'title' => 'keterangan',
                'parent_id' => 'parent_id',
                'child_id' => 'id',
                'node' => 0,
                'node_level' => 0,
            ])

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

<script>
    $("#modalLgId .alur-container .card-sortable").sortable({
        items: '.card-accordion-items',
        connectWith: ".card-sortable",
        placeholder: "ui-state-highlight",
        handle: ".action-move",
        update: function(event, ui) {
            //updateOrder();
        },
        start: function(event, ui) {
            previousParent = ui.item.parent();
        },
        stop: function(event, ui) {
            var newParent = ui.item.parent();
            var itemID = ui.item;
            if ($(itemID).find(".custom-select2").length > 0) {
                $(itemID).find(".custom-select2").select2("destroy");
                buildSelect2($(itemID).find(".custom-select2"), $(itemID));
            }

            // Check if the previous parent is empty
            if (previousParent.children().length === 0) {
                $(previousParent).attr("data-empty", "true");
            } else {
                $(previousParent).attr("data-empty", "false");
            }
        },
        receive: function(event, ui) {
            var newParentID = $(this).attr("id");
            var itemID = ui.item.attr("id");
            console.log(`Item ${itemID} moved to ${newParentID}`);
            $(this).data("empty", "false");
            $(this).attr("data-empty", "false");
        }
    }).disableSelection();

    $("#modalLgId .alur-container > .card-sortable .card  .collapse  .card-sortable").sortable({
        items: '.card-accordion-items',
        connectWith: ".card-sortable",
        handle: ".action-move",
        placeholder: "ui-state-highlight",
        update: function(event, ui) {
            //updateOrder();
        },
        start: function(event, ui) {
            previousParent = ui.item.parent();
        },
        stop: function(event, ui) {
            var newParent = ui.item.parent();
            var itemID = ui.item;
            if ($(itemID).find(".custom-select2").length > 0) {
                $(itemID).find(".custom-select2").select2("destroy");
                buildSelect2($(itemID).find(".custom-select2"), $(itemID));
            }

            // Check if the previous parent is empty
            if (previousParent.children().length === 0) {
                $(previousParent).attr("data-empty", "true");
            } else {
                $(previousParent).attr("data-empty", "false");
            }
        },
        receive: function(event, ui) {
            var newParentID = $(this).attr("id");
            var itemID = ui.item.attr("id");
            console.log(`Item ${itemID} moved to ${newParentID}`);
            $(this).data("empty", "false");
            $(this).attr("data-empty", "false");
        }
    }).disableSelection();

    buildSelect2($('#modalLgId').find('.custom-select2'), $('#modalLgId'));
</script>
