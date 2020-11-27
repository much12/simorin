<div class="modal-dialog modal-md">
    <div class="modal-content">
        <form id="frmAdd" action="{{ url()->current() . '/process' }}" method="POST" autocomplete="off">
            {{ csrf_field() }}

            <div class="modal-header">
                <h4 class="modal-title">Tambah Data Perusahaan</h4>
            </div>

            <div class="modal-body">
                <div class="form-group">
                    <label>Nama Perusahaan</label>

                    <div class="form-line">
                        <input type="text" name="nama_perusahaan" class="form-control" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Alamat</label>

                    <div class="form-line">
                        <textarea name="alamat" class="form-control" style="resize: vertical;" required></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label>Telepon Perusahaan</label>

                    <div class="form-line">
                        <input type="number" name="telp" class="form-control" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Bidang</label>

                    <div class="form-line">
                        <select name="id_bidang" class="form-control select2" required>
                            <option value=""></option>
                            @foreach($bidang as $key => $value)
                            <option value="{{ $value->id }}">{{ $value->nama_bidang }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label>Kelompok</label>

                    <div class="form-line">
                        <select name="id_kategori" class="form-control select2" required>
                            <option value=""></option>
                            @foreach($kategori as $key => $value)
                            <option value="{{ $value->id_kategori }}">{{ $value->kategori }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label>Nama Pembimbing Perusahaan</label>

                    <div class="form-line">
                        <input type="text" name="pembimbing" class="form-control" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Email</label>

                    <div class="form-line">
                        <input type="email" name="email" class="form-control" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Password</label>

                    <div class="form-line">
                        <input type="password" name="password" class="form-control" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Konfirmasi Password</label>

                    <div class="form-line">
                        <input type="password" name="confirmpassword" class="form-control" required>
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">Add</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
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
</script>