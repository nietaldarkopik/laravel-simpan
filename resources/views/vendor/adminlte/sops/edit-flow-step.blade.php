@extends('adminlte::page')

@section('title', 'Alur Prosedur')

@section('content_header')
    <h1 class="m-0 text-dark">Alur Prosedur</h1>
@stop

@section('content')
    <div class="card col-md-6">
        <div class="card-header">
            <h2 class="card-title fw-bold fs-4">Detail Alur Prosedur</h2>
            <div class="card-tools">
                @can('admin.sop.index')
                    <a class="btn btn-sm btn-primary" href="{{ route('admin.sop.index') }}">
                        <i class="fa fa-arrow-left" aria-hidden="true"></i> Kembali
                    </a>
                @endcan
            </div>
        </div>
        <div class="card-body">
            @include('vendor.adminlte.sops.form-edit-flow-step')
        </div>
    </div>
@endsection
