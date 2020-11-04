@extends('master')
@section('title', 'Master Perusahaan')

@section('content')
<div class="container-fluid">
    <div class="row clearfix">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="header">
                    <div class="pull-left">
                        <h2>DATA PERUSAHAAN</h2>
                    </div>

                    <div class="pull-right">
                        <button type="button" class="btn btn-primary btn-xs" onclick="addCompany()">
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
                                    <th width="20%">Nama Perusahaan</th>
                                    <th width="15%">Alamat</th>
                                    <th width="10%">Telepon</th>
                                    <th width="5%">Bidang Perusahaan</th>
                                    <th width="5%">Pembimbing Sekolah</th>
                                    <th width="5%">Pembimbing Perusahaan</th>
                                    <th width="8%">Aksi</th>
                                </tr>
                            </thead>

                            <tbody>
                                @php ($num = 1)
                                @foreach($company as $key => $value)
                                <tr>
                                    <td>{{ $num++ }}</td>
                                    <td>{{ $value->nama_perusahaan }}</td>
                                    <td>{{ $value->alamat_perusahaan }}</td>
                                    <td>{{ $value->telp_perusahaan }}</td>
                                    <td>
                                        @if($value->bidang !== null)
                                        {{ $value->bidang->nama_bidang }}
                                        @endif
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <button type="button" class="btn btn-primary btn-xs waves-effect" onclick="editCompany(<?= $value->id ?>)">
                                            <i class="material-icons">edit</i>
                                        </button>

                                        <button type="button" class="btn btn-danger btn-xs waves-effect" onclick="deleteCompany(<?= $value->id ?>)">
                                            <i class="material-icons">delete</i>
                                        </button>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>

                        {{ $company->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function editCompany(id) {
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

    function deleteCompany(id) {
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
                        id_company: id
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

    function addCompany() {
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