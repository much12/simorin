@extends('master')
@section('title', 'Master Kategori')

@section('content')
<div class="container-fluid">
    <div class="row clearfix">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="header">
                    <div class="pull-left">
                        <h2>DATA KATEGORI</h2>
                    </div>

                    <div class="pull-right">
                        <button type="button" class="btn btn-primary btn-xs" onclick="addKategori()">
                            <i class="material-icons">add</i>
                        </button>
                    </div>

                    <div class="clearfix"></div>
                </div>

                <div class="body">
                    <form action="{{ url()->current() }}" method="GET" autocomplete="off">
                        <div class="row">
                            <div class="col-md-3">
                                <input type="search" name="q" class="form-control" value="{{ app('request')->get('q') }}" placeholder="Pencarian...">
                            </div>

                            <div class="col-md-2">
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-block">Cari</button>
                                </div>
                            </div>
                        </div>
                    </form>

                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover">
                            <thead>
                                <tr>
                                    <th width="5%">No</th>
                                    <th width="20%">Nama Kategori</th>
                                    <th width="8%">Aksi</th>
                                </tr>
                            </thead>

                            <tbody>
                                @php ($num = 1)
                                @foreach($kategori as $key => $value)
                                <tr>
                                    <td>{{ $num++ }}</td>
                                    <td>{{ $value->kategori }}</td>
                                    <td>
                                        <button type="button" class="btn btn-primary btn-xs waves-effect" onclick="editKategori(<?= $value->id_kategori ?>)">
                                            <i class="material-icons">edit</i>
                                        </button>

                                        <button type="button" class="btn btn-danger btn-xs waves-effect" onclick="deleteKategori(<?= $value->id_kategori ?>)">
                                            <i class="material-icons">delete</i>
                                        </button>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>

                        {{ $kategori->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function editKategori(id) {
        $.ajax({
            url: "{{ url()->current() . '/edit' }}",
            method: 'GET',
            dataType: 'json',
            data: {
                id: id
            },
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

    function deleteKategori(id) {
        Swal.fire({
            title: 'Apakah anda yakin ingin menghapus data?',
            showCancelButton: true,
            confirmButtonText: 'Ya',
            cancelButtonText: 'Tidak',
            icon: 'warning'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: "{{ url()->current() . '/delete' }}",
                    method: 'GET',
                    dataType: 'json',
                    data: {
                        id: id
                    },
                    success: function(response) {
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
            }
        });
    }

    function addKategori() {
        $.ajax({
            url: "{{ url()->current() . '/add' }}",
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
        });
    }
</script>
@endsection