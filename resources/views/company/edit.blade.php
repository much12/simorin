<div class="modal-dialog modal-md">
    <div class="modal-content">
        <form id="frmEdit" action="{{ url()->current() . '/process' }}" method="POST" autocomplete="off">
            {{ csrf_field() }}
            <input type="hidden" name="id_company" value="{{ $company->id }}">
            <div class="modal-header">
                <h4 class="modal-title">Edit Data Perusahaan</h4>
            </div>

            <div class="modal-body">
                <div class="form-group">
                    <label>Nama Perusahaan</label>

                    <div class="form-line">
                        <input type="text" name="nama_perusahaan" class="form-control" value="{{ $company->nama_perusahaan }}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Alamat</label>

                    <div class="form-line">
                        <textarea name="alamat" class="form-control" style="resize: vertical;" required>{{ $company->alamat_perusahaan }}</textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label>Telepon Perusahaan</label>

                    <div class="form-line">
                        <input type="text" name="telp" class="form-control" value="{{ $company->telp_perusahaan }}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Bidang</label>

                    <div class="form-line">
                        <select name="id_bidang" class="form-control" required>
                            @foreach($bidang as $key => $value)
                            <option value="{{ $value->id }}" {{ $value->id !== $company->id_bidang ?: 'selected' }}>{{ $value->nama_bidang }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">Update</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
        </form>
    </div>
</div>
<script>
    $('#frmEdit').submit(function(e) {
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
</script>