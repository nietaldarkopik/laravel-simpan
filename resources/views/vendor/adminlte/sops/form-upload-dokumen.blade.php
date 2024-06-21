<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <form action="{{ route('admin.sop.uploadDokumen', ['sop' => $sop]) }}"
                method="POST" enctype="multipart/form-data">
                <div class="card text-left card-primary card-ourline border border-primary card-psu-list">
                    <div class="card-header">
                        <h4 class="card-title">Upload Data Dokumen</h4>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="document-dropzone-{{ $sop->id }}">Upload Contoh File</label>
                                    <div class="needsclick dropzone dropzone-document dropzonePsu"
                                        id="document-dropzone-{{ $sop->id }}">
                                        <input type="hidden" class="input-id_sop"
                                        name="id_sop"
                                        value="{{ $sop->id }}" placeholder="sop" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 mb-2">
                                <div class="card card-primary border-primary">
                                    <div class="card-header">
                                        <h4 class="card-title">Daftar File</h4>
                                    </div>
                                    <div class="card-body">
                                        <p class="card-text">Silahkan upload contoh file pendukung lainnya berupa .doc, .docx, .xls, atau .xlsx</p>
                                        <ul class="list-group list-group-flushx file-list-dokumen">
                                            @foreach (\App\Models\SopDokumenModel::where('id_sop','=',$sop->id)->get() as $i => $f)
                                                <li class="list-group-item row d-flex">
                                                    <div class="col-sm-10">
                                                        {{ basename($f->judul) }}
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <a href="{{ asset('storage/uploads/sop/'.$f->file) }}" target="_blank" class="btn btn-primary btn-sm">
                                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                                        </a>
                                                        <button type="button" class="btn btn-danger btn-sm">
                                                            <i class="fa fa-trash" aria-hidden="true"></i>
                                                        </button>
                                                    </div>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
{{-- psusop.storeFromsop
['sop' => $soppsusop.updateFromsop
psusop.destroyFromsop --}}

<script>

    var uploadedDocumentDokumen = {}
    $(".dropzone-document").dropzone({
        url: '{{ route('admin.sop.uploadDokumen', ['sop' => $sop]) }}',
        maxFilesize: 512, // MB
        dataType: "json",
        addRemoveLinks: true,
        headers: {
            'X-CSRF-TOKEN': "{{ csrf_token() }}"
        },
        sending: function(file, xhr, formData) {
            //console.log(file, xhr, formData, $(this));
            var form = $(this)[0].clickableElements[0];
            formData.append("id_sop", $(form).find('.input-id_sop').val());
        },
        success: function(file, response) {
            var form = $(this)[0].clickableElements[0];
            $(form).append('<input type="hidden" name="document[]" value="' + response.file + '">');
            uploadedDocumentDokumen[file.name] = response.file;
            this.removeFile(file);
            addFileToListDokumen(file,$(this)[0].clickableElements,response);
        },
        queuecomplete: function () {
            // Event ini dipanggil ketika semua file dalam antrian selesai diupload
            // Optional: Membersihkan semua preview (ini mencakup file yang gagal diupload)
            this.removeAllFiles(true);
        },
        error: function(file, response) {
            var form = $(this)[0].clickableElements[0];
            $(form).append('<input type="hidden" name="document[]" value="' + response.name + '">')
            //uploadedDocumentDokumen[file.name] = response.name
        },
        removedfile: function(file) {
            file.previewElement.remove()
            var name = ''
            if (typeof file.file_name !== 'undefined') {
                name = file.file_name
            } else {
                name = uploadedDocumentDokumen[file.name]
            }
            var form = $(this)[0].clickableElements[0];
            $(form).find('input[name="document[]"][value="' + name + '"]').remove()
        },
        init: function(e) {
            var clickableElements = $(this)[0].clickableElements;
            /* this.on("success", function (file, response) {
                // Setelah upload berhasil, tambahkan file ke daftar
            }); */
            //console.log(clickableElements);
            {{-- @if (isset($psusop) && $psusop->document)
                var files =
                    {!! json_encode($psusop) !!};
                for (var i in files) {
                    var file = files[i]
                    this.options.addedfile.call(this, file)
                    file.previewElement.classList.add('dz-complete')
                    var form = $(this)[0].clickableElements[0];
                    $(form).append('<input type="hidden" name="document[]" value="' + file.file_name +
                        '">')
                }
            @endif --}}
        }
    });

</script>