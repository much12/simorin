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
                if ($j->waktu_masuk > $j->jam_masuk) {
                    $waktu_masuk = date('H', strtotime($j->waktu_masuk));
                    $jam_masuk = date('H', strtotime($j->jam_masuk));

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
                    <td>{{ $j->nama_perusahaan }}</td>
                    <td>{{ $j->nama }}</td>
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