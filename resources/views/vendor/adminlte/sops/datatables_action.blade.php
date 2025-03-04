@php
$sop = \App\Models\SopModel::find($id);
@endphp
<form action="{{ route('admin.sop.destroy', $id) }}" method="post">
	@csrf
	@method('delete')
    <div class="btn-group m-1" role="group" aria-label="Basic checkbox toggle button group">
		
		@if ($sop->created_by == Auth::user()->id || $sop->updated_by == Auth::user()->id || Auth::user()->can('admin.sop.editFlowStep'))
        <a href="{{ route('admin.sop.editFlowStep', $id) }}" role="button" class="btn btn-warning btn-sm" data-tooltip="tooltip" data-toggle="modal" data-target="#modalLgId" data-backdrop="static" data-keyboard="false" data-modal-title="Edit Alur Prosedur" data-title="Edit Alur Prosedur" title="Edit Alur Prosedur">
            <i class="fa fa-sitemap" aria-hidden="true"></i>
        </a>
		@endcan
		
		@if ($sop->created_by == Auth::user()->id || $sop->updated_by == Auth::user()->id || Auth::user()->can('admin.sop.formUploadDokumen'))
        <a href="{{ route('admin.sop.formUploadDokumen', ['sop' => $id]) }}" role="button" class="btn btn-warning btn-sm" data-tooltip="tooltip" data-toggle="modal" data-target="#modalLgId" data-backdrop="static" data-keyboard="false" data-modal-title="Edit Dokumen" data-title="Edit Dokumen" title="Edit Dokumen">
            <i class="fa fa-file-archive" aria-hidden="true"></i>
        </a>
		@endcan
		@can('admin.sop.edit')
        <a href="{{ route('admin.sop.edit', $id) }}" role="button" class="btn btn-warning btn-sm" data-tooltip="tooltip" data-toggle="modal" data-target="#modalLgId" data-backdrop="static" data-keyboard="false" data-modal-title="Edit Data" data-title="Edit Data" title="Edit Data">
            <i class="fas fa-edit" aria-hidden="true"></i>
        </a>
		@endcan
		@can('admin.sop.destroy')
        <button type="submit" role="button" class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?');" data-tooltip="tooltip" data-modal-title="Hapus Data" data-title="Hapus Data" title="Hapus Data">
            <i class="fas fa-trash"></i>
        </button>
		@endcan
    </div>
    <div class="btn-group m-1" role="group" aria-label="Basic checkbox toggle button group">
		@can('admin.sop.flowStep')
        <a href="{{ route('admin.sop.flowStep', $id) }}" role="button" class="btn btn-primary btn-sm" data-tooltip="tooltip" data-toggle="modal" data-target="#modalLgId" data-backdrop="static" data-keyboard="false" data-modal-title="Alur Prosedur" data-title="Alur Prosedur" title="Alur Prosedur">
            <i class="fa fa-sitemap" aria-hidden="true"></i>
        </a>
		@endcan
		@can('admin.sop.document')
        <a href="{{ route('admin.sop.document', $id) }}" role="button" class="btn btn-primary btn-sm" data-tooltip="tooltip" data-toggle="modal" data-target="#modalLgId" data-backdrop="static" data-keyboard="false" data-modal-title="Lihat Dokumen" data-title="Lihat Dokumen" title="Lihat Dokumen">
			<i class="fa fa-file-archive" aria-hidden="true"></i>
        </a>
		@endcan
		@can('admin.sop.show')
        <a href="{{ route('admin.sop.show', $id) }}" role="button" class="btn btn-primary btn-sm" data-tooltip="tooltip" data-toggle="modal" data-target="#modalLgId" data-backdrop="static" data-keyboard="false" data-modal-title="Lihat Data" data-title="Lihat Data" title="Lihat Data">
            <i class="fas fa-eye" aria-hidden="true"></i>
        </a>
		@endcan
    </div>
</form>
