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
                        <form action="{{ url()->current() }}" method="GET" autocomplete="off">
                            <div class="col-md-5">
                                <label>Pencarian Berdasarkan Nama</label>
                                <input type="search" name="q" class="form-control" placeholder="Pencarian..." value="{{ $q }}">
                            </div>

                            <div class="col-md-5">
                                <label for="">Pencarian Berdasarkan Bulan</label>
                                <input type="month" name="bulan" id="bulan" class="form-control">
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

                <div class="row" style="margin-bottom: 1rem;">
                    <div class="col-md-6">
                        @if(!isAdmin())
                        <label class="cbx">
                            Check All
                            <input type="checkbox" id="cbParent">
                            <span class="checkmark"></span>
                        </label>
                        @endif
                    </div>

                    <div class="col-md-6">
                        <div class="pull-right" style="margin-right: 1rem;">
                            @if(!isAdmin())
                            <button class="btn btn-primary" id="accButton">ACC Jurnal</button>
                            @endif
                            <button class="btn btn-success" onclick="modalCetak()">Cetak PDF</button>
                        </div>
                    </div>
                </div>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover">
                        <form action="">
                            <thead>
                                <tr>
                                    @if(!isAdmin())
                                    <th style="width: 9rem;"></th>
                                    @endif
                                    <th>No</th>
                                    <th>Tanggal</th>
                                    <th>Tempat</th>
                                    <th>Nama</th>
                                    <th>Jam Datang</th>
                                    <th>Jam Pulang</th>
                                    <th>Alpha (Jam)</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>

                            <tbody>
                                @php $no =1 ;
                                @endphp
                                @foreach ($jurnal as $j)

                                <?php
                                $alpha = 0;
                                if ($j->waktu_masuk > $j->siswa->jam_masuk) {
                                    $waktu_masuk = date('H', strtotime($j->waktu_masuk));
                                    $jam_masuk = date('H', strtotime($j->siswa->jam_masuk));

                                    $alphaCheck = $waktu_masuk - $jam_masuk;

                                    if ($alphaCheck == 0) {
                                        $alpha = 1; // Jam
                                    } else if ($alphaCheck > 0) {
                                        $alpha = $alphaCheck + 1;
                                    }

                                    if ($alpha > 8) {
                                        $alpha = 8;
                                    }
                                }
                                ?>

                                <tr>
                                    @if(!isAdmin())
                                    <td>
                                        @if ($j->status == 0)
                                        <div class="text-center">
                                            <input type="checkbox" id="cb{{ $no }}" name="cb[]" id-data="{{ $j->id }}" class="cbChild filled-in">
                                            <label for="cb{{ $no }}">
                                            </label>
                                        </div>
                                        @else
                                        <div class="text-center">
                                            N/A
                                        </div>
                                        @endif
                                    </td>
                                    @endif
                                    <td>{{ $no++ }}</td>
                                    <td>{{\Carbon\Carbon::parse($j->waktu_masuk)->isoFormat('DD MMMM gggg')}}</td>
                                    <td>{{ $j->siswa->company->nama_perusahaan }}</td>
                                    <td>{{ $j->siswa->nama }}</td>
                                    <td>{{ date('H:i:s', strtotime($j->waktu_masuk)) }}</td>
                                    <td>{{ $j->waktu_pulang == null ? '-' : date('H:i:s', strtotime($j->waktu_pulang)) }}</td>
                                    <td>{{ $alpha == 0 ? '-' : $alpha }}</td>
                                    <td>
                                        <button type="button" class="btn btn-primary btn-xs waves-effect" onclick="viewJurnal(<?= $j->id ?>)">
                                            <i class="material-icons">remove_red_eye</i>
                                        </button>
                                    </td>
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
@endsection

@section('script')
<script>
    document.querySelector('#cbParent').onclick = function() {
        checkOrUncheck(this, 'cbChild');
    }

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

    document.getElementById('accButton').onclick = function() {
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
    }

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
</script>
@endsection