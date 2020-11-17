<div class="modal-dialog modal-md">
    <div class="modal-content">
        <form id="frmEdit" action="{{ url()->current() . '/process' }}" method="POST" autocomplete="off">
            {{ csrf_field() }}
            <div class="modal-header">
                <h4 class="modal-title">Cetak PDF</h4>
            </div>

            <div class="modal-body">
                <div class="form-group">
                    <label>Nama Perusahaan</label>

                    <div class="form-line">
                        <select name="id_company" id="id_company" class="form-control select2" onchange="get_siswa();" required>
                            @foreach ($company as $c)
                                <option value="{{$c->id}}">{{$c->nama_perusahaan}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label>Nama Siswa</label>

                    <div class="form-line">
                        <select name="nis" id="nis" class="form-control select2" required>
                            <option value="">Pilih Siswa</option>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Tanggal Awal</label>
        
                            <div class="form-line">
                                <input type="date" name="first" id="first" class="form-control" required>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Tanggal Akhir</label>
        
                            <div class="form-line">
                                <input type="date" name="last" id="last" class="form-control" required>
                            </div>
                        </div>
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
    $('.select2').select2({
        width: '100%',
        allowClear: true,
        placeholder: 'Select an item',
        dropdownParent: $('#ModalGlobal')
    });

    function get_siswa() {
        var id = $('#id_company').val();
        $.ajax({
            url:"{{url()->current() . '/get'}}",
            method:'GET',
            data:{id:id},
        }).done(function (response) {
            $('#nis').html(response);
        })
    }    

    // $('#frmEdit').submit(function(e) {
    //     e.preventDefault();

    //     let formData = new FormData(this);
    //     let elementsForm = $(this).find('input, textarea, button');

    //     elementsForm.attr('disabled', true);

    //     $.ajax({
    //         url: $(this).attr('action'),
    //         method: $(this).attr('method'),
    //         data: formData,
    //         processData: false,
    //         contentType: false,
    //         success: function(response) {
    //             elementsForm.removeAttr('disabled');
    //             return response;
    //         }
    //     }).fail(function() {
    //         elementsForm.removeAttr('disabled');
    //         swalError();
    //     });
    // });
</script>