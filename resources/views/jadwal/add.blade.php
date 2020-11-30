<div class="modal-dialog modal-md">
    <div class="modal-content">
        <form id="frmAdd" action="{{ url()->current() . '/process' }}" method="POST" autocomplete="off">
            {{ csrf_field() }}
            <div class="modal-header">
                <h4 class="modal-title">Tambah Data Jadwal</h4>
            </div>

            <div class="modal-body">
                <div class="form-group">
                    <label>Nama Pembimbing</label>

                    <div class="form-line">
                        <select name="id_pembimbing" class="form-control select2" id="id_pembimbing" required>
                            <option value=""></option>
                            @foreach($pembimbing as $key => $value)
                            <option value="{{ $value->id }}">{{ $value->nama_pembimbing }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label>Kategori</label>

                    <div class="form-line">
                        <select name="id_kategori" class="form-control select2" onchange="getTempat()" id="idKategori" required>
                            <option value=""></option>
                            @foreach($kategori as $key => $value)
                            <option value="{{ $value->id_kategori }}">{{ $value->kategori }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label>Tempat</label>

                    <div class="form-line">
                        <select name="id_company" id="id_company" class="form-control select2" required>
                            <option value="">Pilih Tempat</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label>Tanggal</label>

                    <div class="form-line">
                        <input type="date" class="form-control" name="tanggal" required>
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">Tambah</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Tutup</button>
            </div>
        </form>
    </div>
</div>
<script>
    $('#frmAdd').submit(function(e) {
        e.preventDefault();

        let formData = new FormData(this);
        let elementsForm = $(this).find('input, textarea, button');

        elementsForm.attr('disabled', true);

        $.ajax({
            url: $(this).attr('action'),
            method: $(this).attr('method'),
            dataType: 'json',
            data: formData,
            processData: false,
            contentType: false,
            success: function(response) {
                elementsForm.removeAttr('disabled');

                if (response.RESULT == 'OK') {
                    swalMessageSuccess(response.MESSAGE);

                    setTimeout(function() {
                        window.location.reload();
                    }, 1000);
                } else {
                    swalMessageFailed(response.MESSAGE);
                }
            }
        }).fail(function() {
            elementsForm.removeAttr('disabled');
            swalError();
        });
    });

    $('.select2').select2({
        width: '100%',
        allowClear: true,
        placeholder: 'Select an item',
        dropdownParent: $('#ModalGlobal')
    });

    function getTempat() {
        var id = $('#idKategori').val();
        $.ajax({
            url: "{{url()->current() . '/get'}}",
            method: "GET",
            data: {
                id: id
            },
        }).done(function(response) {
            $('#id_company').html(response);
        })
    }
</script>