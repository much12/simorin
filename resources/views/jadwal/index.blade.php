@extends('master')
@section('title', 'Jadwal')

@section('content')
<div class="container-fluid">
    <div class="row clearfix">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="header">
                    <div class="pull-left">
                        <h2>JADWAL</h2>
                    </div>

                    @if(isAdmin())
                    <div class="pull-right">
                        <button type="button" class="btn btn-primary btn-xs" onclick="addJadwal()">
                            <i class="material-icons">add</i>
                        </button>
                    </div>
                    @endif

                    <div class="clearfix"></div>
                </div>

                <div class="body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover">
                            <form action="">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Pembimbing</th>
                                        <th>Tempat</th>
                                        <th>Tanggal</th>
                                        <th>Kategori</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    @php ($num = 1)
                                    @foreach($jadwal as $key => $value)
                                    <tr>
                                        <td>{{ $num++ }}</td>
                                        <td>{{ $value->nama_pembimbing }}</td>
                                        <td>{{ $value->nama_perusahaan }}</td>
                                        <td>{{ date('d F Y', strtotime($value->tanggal)) }}</td>
                                        <td>{{ $value->kategori }}</td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </form>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('script')
<script>
    document.querySelector('#cbParent').onclick = function() {
        checkOrUncheck(this, 'cbChild');
    }

    function checkOrUncheck(ele, eleChild) {
        var cbChild = document.querySelectorAll("." + eleChild);
        if (ele.checked)
            cbChild.forEach((e) => {
                e.checked = true
            });
        else
            cbChild.forEach((e) => {
                e.checked = false
            });
    }

    function addJadwal() {
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