@extends('master')
@section('title', 'Absensi')

@section('content')
<div class="container-fluid">
    <div class="row clearfix">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="header">
                    <h2>ABSENSI</h2>
                </div>

                <div class="body">
                    <div class="row">
                        <form id="frmFilter" action="{{ url()->current() . '/content' }}" method="GET" autocomplete="off">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Perusahaan</label>

                                    <div class="form-line">
                                        <select name="perusahaan" class="form-control select2" onchange="get_siswa()">
                                            <option value=""></option>
                                            @foreach($company as $key => $value)
                                            <option value="{{ $value->id }}">{{ $value->nama_perusahaan }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Siswa</label>

                                    <div class="form-line">
                                        <select name="siswa" class="form-control select2">
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-2">
                                <div class="form-group">
                                    <label>Tanggal Dari</label>

                                    <div class="form-line">
                                        <input type="date" name="fromdate" class="form-control">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-2">
                                <div class="form-group">
                                    <label>Tanggal Sampai</label>

                                    <div class="form-line">
                                        <input type="date" name="todate" class="form-control">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-2">
                                <div class="form-group">
                                    <label>&nbsp;</label>
                                    <button type="submit" class="btn btn-primary btn-block">Cari</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <div id="content_filter"></div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('script')
<script>
    $('#cbParent').click(function() {
        checkOrUncheck(this, 'cbChild');
    });

    function checkOrUncheck(ele, eleChild) {
        var cbChild = document.querySelectorAll("." + eleChild);
        if (ele.checked) {
            cbChild.forEach((e) => {
                e.checked = true
            });
        } else {
            cbChild.forEach((e) => {
                e.checked = false
            });
        }
    }

    $('#accButton').click(function() {
        let data = [];

        document.querySelectorAll('.cbChild').forEach((e) => {
            e.checked ? data.push(e.getAttribute('id-data')) : ''
        });

        if (data.length == 0) {
            return false;
        }

        $.ajax({
            url: "{{ url()->current() }}/acc",
            type: 'POST',
            data: {
                "_token": "{{ csrf_token() }}",
                "dataId": data
            },
            dataType: 'json',
            success: function(response, status, xhr) {
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
            swalError();
        });
    });

    function viewJurnal(id) {
        $.ajax({
            url: "{{ url()->current() . '/view' }}",
            method: 'GET',
            data: {
                id: id
            },
            dataType: 'json',
            success: function(response) {
                if (response.RESULT == 'OK') {
                    $('#ModalGlobal').html(response.CONTENT);
                    $('#ModalGlobal').modal('show');
                } else {
                    swalMessageFailed(response.MESSAGE);
                }
            }
        }).fail(function() {
            swalError();
        });
    }

    function modalCetak() {
        $.ajax({
            url: "{{url()->current().'/cetak'}}",
            method: 'GET',
            dataType: 'json',
            success: function(response) {
                if (response.RESULT == 'OK') {
                    $('#ModalGlobal').html(response.CONTENT);
                    $('#ModalGlobal').modal('show');
                } else {
                    swalMessageFailed(response.MESSAGE);
                }
            }
        }).fail(function() {
            swalError();
        })
    }

    $('.select2').select2({
        width: '100%',
        allowClear: true,
        placeholder: 'Select an item'
    });

    $("#frmFilter").submit(function(e) {
        e.preventDefault();

        let elementsForm = $(this).find('input, select');
        let perusahaan = $('select[name=perusahaan]').val();
        let siswa = $('select[name=siswa]').val();
        let fromdate = $('input[name=fromdate]').val();
        let todate = $('input[name=todate]').val();

        $('#content_filter').html(`<div class="text-center" style="padding-bottom: 2rem;">Tunggu sebentar...</div>`);

        elementsForm.attr('disabled', true);

        $.ajax({
            url: $(this).attr('action'),
            method: $(this).attr('method'),
            data: {
                perusahaan: perusahaan,
                siswa: siswa,
                fromdate: fromdate,
                todate: todate
            },
            success: function(response) {
                elementsForm.removeAttr('disabled');

                $('#content_filter').html(response);
            }
        }).fail(function() {
            elementsForm.removeAttr('disabled');

            swalError();
        });
    });

    function get_siswa() {
        var id = $('select[name=perusahaan]').val();
        $.ajax({
            url: "{{url('jurnal/cetak/get')}}",
            method: 'GET',
            data: {
                id: id
            },
        }).done(function(response) {
            $('select[name=siswa]').html(response);
        })
    }
</script>
@endsection