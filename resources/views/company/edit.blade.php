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
                        <input type="number" name="telp" class="form-control" value="{{ $company->telp_perusahaan }}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Bidang</label>

                    <div class="form-line">
                        <select name="id_bidang" class="form-control select2" required>
                            <option value=""></option>
                            @foreach($bidang as $key => $value)
                            <option value="{{ $value->id }}" {{ $value->id !== $company->id_bidang ?: 'selected' }}>{{ $value->nama_bidang }}</option>
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
                            <option value="{{ $value->id_kategori }}" {{ $value->id_kategori !== $company->id_kategori ?: 'selected' }}>{{ $value->kategori }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label>Nama Pembimbing Perusahaan</label>

                    <div class="form-line">
                        <input type="text" name="pembimbing" class="form-control" value="{{ $company->nama_pembimbing_perusahaan }}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Email</label>

                    <div class="form-line">
                        <input type="email" name="email" class="form-control" value="{{ $company->email }}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Password</label>

                    <div class="form-line">
                        <input type="password" name="password" class="form-control" value="{{ $company->password }}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Konfirmasi Password</label>

                    <div class="form-line">
                        <input type="password" name="confirmpassword" class="form-control">
                    </div>
                    <small>*Kosongkan Konfirmasi Password Jika Tidak Merubah Password</small>
                </div>
            </div>

            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">Update</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Tutup</button>
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

    $('.select2').select2({
        width: '100%',
        allowClear: true,
        placeholder: 'Select an item',
        dropdownParent: $('#ModalGlobal')
    });
</script>