@extends('adminlte::page')

@section('title', 'Data Perumahan')

@section('content_header')
    <h1 class="m-0 text-dark">Data Perumahan</h1>
@stop

@section('content')
    <div class="card col-md-6">
        <div class="card-header">
            <h2 class="card-title fw-bold fs-4">Detail Perumahan</h2>
            <div class="card-tools">
                @can('admin.sop.index')
                    <a class="btn btn-sm btn-primary" href="{{ route('admin.sop.index') }}">
                        <i class="fa fa-arrow-left" aria-hidden="true"></i> Kembali
                    </a>
                @endcan
            </div>
        </div>
        <div class="card-body">
            @include('vendor.adminlte.sops.form-sop')
        </div>
    </div>
@endsection
