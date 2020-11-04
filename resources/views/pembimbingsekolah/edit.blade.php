<div class="modal-dialog modal-md">
    <div class="modal-content">
        <form id="frmEdit" action="{{ url()->current() . '/process' }}" method="POST" autocomplete="off">
            {{ csrf_field() }}
            <input type="hidden" name="id_pembimbing" value="{{ $pembimbing->id }}">

            <div class="modal-header">
                <h4 class="modal-title">Edit Data Pembimbing</h4>
            </div>

            <div class="modal-body">
                <div class="form-group">
                    <label>Nama Pembimbing</label>

                    <div class="form-line">
                        <input type="text" name="nama_pembimbing" class="form-control" value="{{ $pembimbing->nama_pembimbing }}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Email</label>

                    <div class="form-line">
                        <input type="email" name="email" class="form-control" value="{{ $pembimbing->email }}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Bagian</label>

                    <div class="form-line">
                        <input type="text" name="bagian" class="form-control" value="{{ $pembimbing->bagian }}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Password</label>

                    <div class="form-line">
                        <input type="password" name="password" class="form-control" value="{{ $pembimbing->password }}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Konfirmasi Password</label>

                    <div class="form-line">
                        <input type="password" name="confirmpassword" class="form-control">
                    </div>

                    <small style="color: red;">*Masukkan Konfirmasi Password Jika Password Akan Diubah</small>
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