    <div class="row mb-1">
        <div class="col-xs-12 col-sm-12 border">
            <div class="row">
                <div class="col-sm-4 p-0 bg-secondary text-white px-1 d-flex justify-content-start align-items-center">
                    <div class="form-group mb-0">
                        <span>Kode</span>
                    </div>
                </div>
                <div class="col-sm-8 p-1">
                    <p class="form-text">{{ $sop?->kode }}</p>
                </div>
            </div>
        </div>
    </div>
    
    <div class="row mb-1">
        <div class="col-xs-12 col-sm-12 border">
            <div class="row">
                <div class="col-sm-4 p-0 bg-secondary text-white px-1 d-flex justify-content-start align-items-center">
                    <div class="form-group mb-0">
                        <span>Nama SOP</span>
                    </div>
                </div>
                <div class="col-sm-8 p-1">
                    <p class="form-text">{{ $sop?->sop }}</p>
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
                    <p class="form-text">{{ $sop?->prosedur }}</p>
                </div>
            </div>
        </div>
    </div>
