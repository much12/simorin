@extends('master')
@section('title', 'Master Siswa')

@section('content')
<div class="container-fluid">
    <div class="row clearfix">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="header">
                    <div class="pull-left">
                        <h2>DATA SISWA</h2>
                    </div>

                    <div class="pull-right">
                        <button type="button" class="btn btn-primary btn-xs" onclick="addSiswa()">
                            <i class="material-icons">add</i>
                        </button>
                    </div>

                    <div class="clearfix"></div>
                </div>

                <div class="body">
                    <form action="{{ url()->current() }}" method="GET" autocomplete="off">
                        <div class="row">
                            <div class="col-md-3">
                                <label></label>
                                <input type="search" name="q" class="form-control" value="{{ app('request')->get('q') }}" placeholder="Pencarian...">
                            </div>

                            <div class="col-md-2">
                                <div class="form-group">
                                    <label>&nbsp;</label>
                                    <button type="submit" class="btn btn-primary btn-block">Cari</button>
                                </div>
                            </div>
                        </div>
                    </form>

                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>NIS</th>
                                    <th>Nama</th>
                                    <th>Jurusan</th>
                                    <th>Guru</th>
                                    <th>Tempat Prakerin</th>
                                    <th>Email</th>
                                    <th>Jam Masuk</th>
                                    <th>Jam Pulang</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>

                            <tbody>
                                @php ($num = 1)

                                @foreach($siswa as $key => $value)
                                <tr>
                                    <td>{{ $num++ }}</td>
                                    <td>{{ $value->nis }}</td>
                                    <td>{{ $value->nama }}</td>
                                    <td>
                                        @if($value->jurusan !== null)
                                        {{ $value->jurusan->nama_jurusan }}
                                        @endif
                                    </td>
                                    <td>
                                        @if($value->guru !== null)
                                        {{ $value->guru->nama }}
                                        @endif
                                    </td>
                                    <td>
                                        @if($value->company !== null)
                                        {{ $value->company->nama_perusahaan }}
                                        @endif
                                    </td>
                                    <td>{{ $value->email }}</td>
                                    <td>{{ $value->jam_masuk }}</td>
                                    <td>{{ $value->jam_pulang }}</td>
                                    <td>
                                        <button type="button" class="btn btn-primary btn-xs waves-effect" onclick="editSiswa(<?= $value->nis ?>)">
                                            <i class="material-icons">edit</i>
                                        </button>

                                        <button type="button" class="btn btn-danger btn-xs waves-effect" onclick="deleteSiswa(<?= $value->nis ?>)">
                                            <i class="material-icons">delete</i>
                                        </button>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>

                        {{ $siswa->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function editSiswa(id) {
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

    function deleteSiswa(id) {
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
                        id_siswa: id
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

    function addSiswa() {
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