@extends('master')
@section('title', 'Jurnal')

@section('content')
<div class="container-fluid">
    <div class="row clearfix">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="header">
                    <div class="pull-left">
                        <h2>JURNAL</h2>
                    </div>

                    <div class="clearfix"></div>
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
                    <input type="checkbox" checked="checked">
                    <span class="checkmark"></span>
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
                                            <input type="checkbox" id="cb" name="cb[]" class="filled-in" />
                                            <label for="cb"></label>
                                        </div>
                                        {{-- @endif --}}
                                    </td>
                                    <td>
                                        {{$no++}}
                                    </td>
                                    <td>tempat</td>
                                    <td>{{$j->nis}}</td>
                                    <td>
                                        @if ($j->status == 0)
                                        <span class="label label-warning">Pending</span>
                                        @elseif($j->status == 1)
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