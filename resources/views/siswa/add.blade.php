<div class="modal-dialog modal-md">
    <div class="modal-content">
        <form id="frmAdd" action="{{ url()->current() . '/process' }}" method="POST" autocomplete="off">
            {{ csrf_field() }}
            <div class="modal-header">
                <h4 class="modal-title">Tambah Data Siswa</h4>
            </div>

            <div class="modal-body">
                <div class="form-group">
                    <label>NIS</label>

                    <div class="form-line">
                        <input type="number" name="nis" class="form-control" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Nama Siswa</label>

                    <div class="form-line">
                        <input type="text" name="nama_siswa" class="form-control" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Jurusan</label>

                    <div class="form-line">
                        <select name="jurusan" class="form-control" required>
                            @foreach($jurusan as $key => $value)
                            <option value="{{ $value->id }}">{{ $value->nama_jurusan }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label>Guru Wali</label>

                    <div class="form-line">
                        <select name="guru" class="form-control" required>
                            @foreach($guru as $key => $value)
                            <option value="{{ $value->id }}">{{ $value->nama }}</option>
                            @endforeach
                        </select>
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

                <div class="form-group">
                    <label>Jam Masuk</label>

                    <div class="form-line">
                        <input type="time" name="jam_masuk" class="form-control" required>
                    </div>
                </div>

                <div class="form-group">
                    <label>Jam Pulang</label>

                    <div class="form-line">
                        <input type="time" name="jam_pulang" class="form-control" required>
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
</script>