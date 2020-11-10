@extends('master')
@section('title', 'Jurnal')

@section('content')
<div class="container-fluid">
    <div class="row clearfix">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="header">
                    <h2>JURNAL</h2>
                </div>

                <div class="body">
                    <div class="row">
                        <form action="{{ url()->current() }}" method="GET" autocomplete="off">
                            <div class="col-md-5">
                                <label>Pencarian Berdasarkan Nama</label>
                                <input type="search" name="q" class="form-control" placeholder="Pencarian...">
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

                <label class="cbx">Check All
                    <input type="checkbox" id="cbParent">
                    <span class="checkmark"></span>
                    <div class="actjurnal" style="float: right; margin: 0 20px 0 0;">
                        <button class="btn btn-primary" id="accButton">ACC Jurnal</button>
                        <button class="btn btn-success">Cetak PDF</button>
                    </div>
                </label>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover">
                        <form action="">
                            <thead>
                                <tr>
                                    <th style="width: 9rem;">
                                    </th>
                                    <th>No</th>
                                    <th>Tempat</th>
                                    <th>Nama</th>
                                    <th>Status</th>
                                    <th>Tanggal</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>

                            <tbody>
                                @php $no =1 ;
                                @endphp
                                @foreach ($jurnal as $j)
                                <tr>
                                    <td>
                                        {{-- @if ($j->status == 0) --}}
                                        <div class="text-center">
                                            <input type="checkbox" id="cb{{$no}}" name="cb[]" id-data="{{$j->id}}" class="cbChild filled-in" />
                                            <label for="cb{{$no}}">
                                            </label>
                                        </div>
                                        {{-- @endif --}}
                                    </td>
                                    <td>{{$no++}}</td>
                                    <td>tempat</td>
                                    <td>{{$j->nis}}</td>
                                    <td>
                                        @if ($j->status_jurnal == 0)
                                        <span class="label label-warning">Pending</span>
                                        @elseif($j->status_jurnal == 1)
                                        <span class="label label-success">Success</span>
                                        @endif
                                    </td>
                                    <td>{{\Carbon\Carbon::parse($j->tgl_jurnal)->isoFormat('DD MMMM gggg')}}</td>
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
</script>
@endsection