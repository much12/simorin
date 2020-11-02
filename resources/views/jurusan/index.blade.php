@extends('master')
@section('title', 'Jurusan')

@section('content')
<div class="container-fluid">
    <div class="row clearfix">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="header">
                    <div class="pull-left">
                        <h2>DATA JURUSAN</h2>
                    </div>

                    <div class="pull-right">
                        <button type="button" class="btn btn-primary btn-xs" onclick="addJurusan()">
                            <i class="material-icons">add</i>
                        </button>
                    </div>

                    <div class="clearfix"></div>
                </div>

                <div class="body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama Jurusan</th>
                                    <th>Bidang Jurusan</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>

                            <tbody>
                                @php ($num = 1)
                                @foreach($jurusan as $key => $value)
                                <tr>
                                    <td>{{ $num++ }}</td>
                                    <td>{{ $value->nama_jurusan }}</td>
                                    <td>
                                        @if($value->bidang !== null)
                                        {{ $value->bidang->nama_bidang }}
                                        @endif
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-primary btn-xs waves-effect" onclick="editJurusan(<?= $value->id ?>)">
                                            <i class="material-icons">edit</i>
                                        </button>

                                        <button type="button" class="btn btn-danger btn-xs waves-effect" onclick="deleteJurusan(<?= $value->id ?>)">
                                            <i class="material-icons">delete</i>
                                        </button>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>

                        {{ $jurusan->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function editJurusan(id) {
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

    function deleteJurusan(id) {
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
                        id_jurusan: id
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

    function addJurusan() {
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