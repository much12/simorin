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
                    @if(isAdmin())
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
                                            <p class="card-text text-center"><strong id="jum_perusahaan">{{ $company }}</strong></p>
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
                                            <p class="card-text text-center"><strong id="jum_pembimbing">{{ $pembimbing_sekolah + $pembimbing_perusahaan }}</strong></p>
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
                                            <p class="card-text text-center"><strong id="jum_siswa">{{ $siswa }}</strong></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif

                    <div class="row">
                        <div class="col-md-12">
                            <div class="list-group" id="histori_jurnal">
                                <li href="#" class="list-group-item disabled text-center">
                                    10 Histori Pengumpulan Jurnal Terbaru
                                </li>

                                @if(count($history_jurnal) > 0)
                                @foreach($history_jurnal as $key => $value)
                                <li class='list-group-item'>
                                    {{ $value->nama }}

                                    <span class='badge'>{{ date('d F Y H:i:s', strtotime($value->waktu_pulang))}}</span>
                                </li>
                                @endforeach
                                @else
                                <li class="list-group-item text-center">
                                    Tidak Ada Data Yang Ditemukan
                                </li>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection