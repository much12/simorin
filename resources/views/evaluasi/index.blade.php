@extends('master')
@section('title', 'Evaluasi Kunjungan')

@section('content')
<div class="container-fluid">
    <div class="row clearfix">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="header">
                    <h2>Evaluasi Kunjungan</h2>
                </div>

                <div class="body">
                    <div class="row">
                        <form action="{{ url()->current() }}" method="GET" autocomplete="off">
                            <div class="col-md-5">
                                <label>Pencarian Berdasarkan Nama Perushaaan</label>
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
                        
                        @endif
                    </div>

                    <div class="col-md-6">
                        <div class="pull-right" style="margin-right: 1rem;">
                            <button class="btn btn-success" onclick="modalCetak()">Cetak PDF</button>
                        </div>
                    </div>
                </div>

                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Tempat</th>
                                <th>Pembimbing Sekolah</th>
                                <th>Tanggal</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>

                        <tbody>
                            @php $no = 1;
                            @endphp
                            @foreach ($monitoring as $j)
                            <tr>
                                <td>
                                    <div class="text-center">
                                        {{$no++}}
                                    </div>
                                </td>
                                <td>{{$j->nama_perusahaan}}</td>
                                <td>{{$j->nama_pembimbing}}</td>
                                <td>{{\Carbon\Carbon::parse($j->tgl_monitoring)->isoFormat('DD MMMM gggg')}}</td>
                                <td>
                                    <button type="button" class="btn btn-primary btn-xs waves-effect" onclick="viewRecord('<?= base64_encode($j->id_monitoring) ?>')">
                                        <i class="material-icons">remove_red_eye</i>
                                    </button>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
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
   function viewRecord(id) {
       $.ajax({
           url : "{{url()->current() .'/view-record' }}",
           data:{id:id},
           method:"GET",
       }).done(function (response) {
           console.log(response);
           window.open("{{url()->current() .'/view-record'}}?id="+id,"_blank");
           location.reload();
       })
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