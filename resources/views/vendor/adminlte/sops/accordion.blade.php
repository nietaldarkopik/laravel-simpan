<div id="accordionContainer{{ $node_level }}" role="tablist" aria-multiselectable="true" class="card-sortable pr-0 py-2" @if (isset($data) and count($data) > 0) @else data-empty="true" @endif>
@if (isset($data) and count($data) > 0)
	@foreach ($data as $i => $d)
		<div class="card card-accordion-items card-warning" data-id="{{ $d->id }}" data-id="{{ $d->id }}"
			data-parent_id="{{ $d->parent_id }}">
			<div class="card-header pr-0" role="tab" id="sectionHeader{{ $d->id }}">
				<h5 class="mb-0 d-flex justify-content-between pr-0 flex-nowrap">
					<a class="float-start collapsed col-10 col-md-10" data-toggle="collapse"
						data-parent="#accordionContainer{{ $node_level }}"
						href="#sectionContent{{ $d->id }}" aria-expanded="true"
						aria-controls="sectionContent{{ $d->id }}">
						<div class="row align-items-center">
							<div class="col-1">
								<i class="fa fa-plus icon-expand" aria-hidden="true"></i>
								<i class="fa fa-minus icon-collapse" aria-hidden="true"></i>
							</div>
							<div class="col-11">
								<span class="card-title-accordion">
									{{ $d->$title }}
								</span>
							</div>
						</div>
					</a>
					<div class="card-tools float-end flex-nowrap col-2 col-md-2 text-right">
						<form method="post" action="{{ route('admin.unit.destroy', ['unit' => $d]) }}">
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
			<div id="sectionContent{{ $d->id }}" class="collapse in" role="tabpanel"
				aria-labelledby="sectionHeader{{ $d->id }}">
				<div class="card-body bg-secondary">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="input-unit_id-{{ $d->id }}" class="form-label">Unit</label>
								<select
									class="form-select form-control form-custom select-custom custom-select2"
									name="unit_id[]" id="input-unit_id-{{ $d->id }}">
									<option value="-1">--- Pemohon --- </option>
									@foreach ($units as $iu => $u)
										<option value="{{ $u->id }}" @selected($u->id == $d->unit_id)>{{ $u->nama }}
										</option>
									@endforeach
								</select>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="input-status-{{ $d->id }}" class="form-label">Status Unit</label>
								<select
									class="form-select form-control form-custom select-custom"
									name="status[]" id="input-status-{{ $d->id }}">
									<option value="pemohon"  @selected("pemohon" == $d->status)>Pemohon</option>
									<option value="menyetujui"  @selected("menyetujui" == $d->status)>Menyetujui</option>
									<option value="mengetahui"  @selected("mengetahui" == $d->status)>Mengetahui</option>
									<option value="tembusan"  @selected("tembusan" == $d->status)>Tembusan</option>
								</select>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="form-group">
								<label for="input-keterangan" class="form-label">Keterangan</label>
								<textarea class="form-control" name="keterangan[]" rows="3">{{ $d->keterangan }}</textarea>
								<input type="hidden" name="id[]" value="{{ $d->id }}">
							</div>
						</div>
					</div>
				</div>
				<div class="card-body pr-0 pl-5">
					@php
						$query = $d;
						$query = $query
							->newQuery()
							->where(function ($query) use ($parent_id, $child_id, $d) {
								$query->where($parent_id, '=', $d->$child_id);
								$query->where($parent_id, '!=', '0');
								$query->whereNotNull($parent_id);
							})
							->orderBy('sort_order', 'asc')
							->get();
						$subdata = [
							'data' => $query,
							'title' => $title,
							'parent_id' => $parent_id,
							'child_id' => $child_id,
							'node' => $node_level,
							'node_level' => $node_level + 1,
						];
					@endphp
					@include('vendor.adminlte.sops.accordion', $subdata)
				</div>
			</div>
		</div>
	@endforeach
@endif</div>
