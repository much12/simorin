@extends('master')
@section('title', 'Dashboard')

@section('content')
<div class="container-fluid">
    <div class="row clearfix">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="header">
                    <div class="row clearfix">
                        <div class="col-xs-12 col-sm-6">
                            <h2>DASHBOARD</h2>
                        </div>
                    </div>
                </div>

                <div class="body">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card mb-3" style="max-width: 540px;">
                                <div class="row no-gutters">
                                    <div class="col-md-4 text-center">
                                       <i class="h1 fas fa-building"></i>
                                    </div>
                                    <div class="col-md-8 text-center">
                                        <div class="card-body">
                                            <h5 class="card-title text-center">Jumlah Perusahaan</h5>
                                            <p class="card-text text-center"><strong id="jum_perusahaan">330</strong></p>   
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card mb-3" style="max-width: 540px;">
                                <div class="row no-gutters">
                                    <div class="col-md-4 text-center">
                                       <i class="h1 fas fa-user-tie"></i>
                                    </div>
                                    <div class="col-md-8 text-center">
                                        <div class="card-body">
                                            <h5 class="card-title text-center">Jumlah Pembimbing</h5>
                                            <p class="card-text text-center"><strong id="jum_pembimbing">330</strong></p>   
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card mb-3" style="max-width: 540px;">
                                <div class="row no-gutters">
                                    <div class="col-md-4 text-center">
                                       <i class="h1 fas fa-users"></i>
                                    </div>
                                    <div class="col-md-8 text-center">
                                        <div class="card-body">
                                            <h5 class="card-title text-center">Siswa Prakerin</h5>
                                            <p class="card-text text-center"><strong id="jum_siswa">330</strong></p>   
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="list-group" id="histori_jurnal">
                                <li href="#" class="list-group-item disabled text-center">
                                    Histori Pengumpulan Jurnal
                                </li>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('script')
<script>
    $(document).ready(function(){
        var jum_perusahaan = 320;
        var jum_pembimbing = 100;
        var jum_siswa = 450;

        $("#jum_perusahaan").text(jum_perusahaan);
        $("#jum_pembimbing").text(jum_pembimbing);
        $("#jum_siswa").text(jum_siswa);

        var siswa_jurnal =[
            {'nama':'Ahmad Andika','tanggal':'2020-11-02'},
            {'nama':'Bayu Anglita','tanggal':'2020-11-02'},
            {'nama':'Putra Bayu','tanggal':'2020-11-02'},
            {'nama':'Prawira Eka','tanggal':'2020-11-02'},
            {'nama':'Pasha','tanggal':'2020-11-02'},
            {'nama':'Robby','tanggal':'2020-11-02'},
        ];

        siswa_jurnal.forEach((e) => $("#histori_jurnal").append(`<li class='list-group-item'>${e.nama}<span class='badge'>${e.tanggal}</span></li>`));
    });
</script>
@endsection