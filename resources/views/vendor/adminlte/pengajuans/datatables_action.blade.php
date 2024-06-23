@php
	$data = App\Models\PengajuanModel::find($id);
@endphp
<form action="{{ route('admin.pengajuan.destroy', $id) }}" method="post">
	@csrf
	@method('delete')
    <div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
		@if($data->status == 'draft')
        <a href="{{ route('admin.pengajuan.edit', $id) }}" role="button" class="btn btn-warning btn-sm" data-tooltip="tooltip" data-togglex="modal" data-targetx="#modalLgId" data-backdropx="static" data-keyboardx="false" data-modal-titlex="Edit Data" data-titlex="Edit Data" title="Edit Data">
            <i class="fas fa-edit" aria-hidden="true"></i>
        </a>
		@endif
        {{-- <a href="{{ route('admin.pengajuan.step', $id) }}" role="button" class="btn btn-warning btn-sm" data-tooltip="tooltip" data-toggle="modal" data-target="#modalLgId" data-modal-size="modal-xl" data-backdrop="static" data-keyboard="false" data-modal-title="Data PSU" data-title="Input PSU" title="Input PSU">
            <i class="fas fa-building" aria-hidden="true"></i>
        </a> --}}
		@if($data->status == 'diajukan')
        <a href="{{ route('admin.pengajuan.formMessage', $id) }}" role="button" class="btn btn-warning btn-sm" data-tooltip="tooltip" data-toggle="modal" data-target="#modalLgId" data-modal-size="modal-xl" data-backdrop="static" data-keyboard="false" data-modal-title="Pesan/Komentar" data-title="Pesan/Komentar" title="Pesan/Komentar">
            <i class="fa fa-comments" aria-hidden="true"></i>
        </a>
		@endif
        {{-- <a href="{{ route('admin.pengajuan.document', $id) }}" role="button" class="btn btn-warning btn-sm" data-tooltip="tooltip" data-toggle="modal" data-target="#modalLgId" data-modal-size="modal-xl" data-backdrop="static" data-keyboard="false" data-modal-title="Peta" data-title="Upload Document" title="Upload Document">
            <i class="fas fa-file-archive" aria-hidden="true"></i>
        </a> --}}
		@if($data->status == 'draft')
        <button type="submit" role="button" class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?');" data-tooltip="tooltip" data-modal-title="Hapus Data" data-title="Hapus Data" title="Hapus Data">
            <i class="fas fa-trash"></i>
        </button>
		@endif
    </div>
    <div class="btn-group mt-1" role="group" aria-label="Basic checkbox toggle button group">
        <a href="{{ route('admin.pengajuan.show', $id) }}" role="button" class="btn btn-primary btn-sm" data-tooltip="tooltip" data-toggle="modal" data-target="#modalLgId" data-backdrop="static" data-keyboard="false" data-modal-title="Lihat Data" data-title="Lihat Data" title="Lihat Data Pengajuan">
            <i class="fas fa-eye" aria-hidden="true"></i>
        </a>
        <a href="{{ route('admin.pengajuan.stepDetail', $id) }}" role="button" class="btn btn-primary btn-sm" data-tooltip="tooltip" data-toggle="modal" data-target="#modalLgId" data-backdrop="static" data-keyboard="false" data-modal-title="Tracking Pengajuan" data-title="Lihat Tracking Pengajuan" title="Lihat Tracking Pengajuan">
            <i class="fa fa-sitemap" aria-hidden="true"></i>
        </a>
        {{-- <a href="{{ route('admin.pengajuan.document', $id) }}" data-toggle="modal" data-target="#modalLgId" data-backdrop="static" data-keyboard="false" role="button" class="btn btn-primary btn-sm" data-tooltip="tooltip" data-modal-title="File" data-title="File" title="File">
            <i class="fa fa-file" aria-hidden="true"></i>
        </a> --}}
        {{-- <a href="{{ route('admin.pengajuan.pdf', $id) }}" role="button" class="btn btn-primary btn-sm" data-tooltip="tooltip" data-modal-title="PDF" data-title="PDF" title="PDF">
            <i class="fas fa-file-pdf" aria-hidden="true"></i>
        </a> --}}
    </div>
</form>
