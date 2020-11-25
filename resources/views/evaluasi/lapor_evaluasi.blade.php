<!DOCTYPE html>
<html lang="en">

<head>
    <title>Laporan</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style>
        .page-break {
            page-break-after: always;
        }

        @page {
            margin: 0cm 0cm;
        }

        body {
            margin-top: 2cm;
            margin-left: 2cm;
            margin-right: 2cm;
            margin-bottom: 2cm;
        }

        table {
            border-collapse: collapse;
        }

        .table {
            width: 100%;
            margin-bottom: 1rem;
            color: #212529;
        }

        .tables {
            width: 100%;
            margin-bottom: 1rem;
            color: #212529;
        }

        .tables td,
        .tables th {
            padding: .75rem;
            vertical-align: top;
            border-top: 0px solid #000000;
        }

        .tables thead th {
            vertical-align: bottom;
            border-bottom: 0px solid #000000;
        }

        .tables tbody+tbody {
            border-top: 0px solid #000000;
        }

        .table td,
        .table th {
            padding: .75rem;
            vertical-align: top;
            border-top: 1px solid #000000
        }

        .table thead th {
            vertical-align: bottom;
            border-bottom: 2px solid #000000
        }

        .table tbody+tbody {
            border-top: 2px solid #000000
        }


        .table-borderless tbody+tbody,
        .table-borderless td,
        .table-borderless th,
        .table-borderless thead th {
            border: 0
        }

        .custom-checkbox .custom-control-label::before {
            border-radius: .25rem;
        }

        label {
            display: inline-block;
            margin-bottom: .5rem;
        }

        body {
            font-size: 14px;
            font-family: Century;
        }

        th {
            text-align: inherit;
        }

        h4 {
            margin: 7px;
        }
    </style>
</head>

<body>

    <p>Jangka Waktu : {{\Carbon\Carbon::parse($first)->isoFormat('DD MMMM gggg')}} s/d {{\Carbon\Carbon::parse($last)->isoFormat('DD MMMM gggg')}}</p>
    
    <table class="table table-bordered table-sm" border="1">
        <tbody>
            <tr>
                <th>No</th>
                <th>Nama Tempat</th>
                <th>Pembimbing Sekolah</th>
                <th>Tanggal</th>
            </tr>
        </tbody>
        
        <tbody>
            @php $no = 1; @endphp
            @foreach ($monitoring as $mon)
            <tr>
                <td>{{$no++}}</td>
                <td>{{$mon->nama_perusahaan}}</td>
                <td>{{$mon->nama_pembimbing}}</td>
                <td>{{\Carbon\Carbon::parse($mon->tgl_monitoring)->isoFormat('DD MMMM gggg')}}</td>
            </tr>
            @endforeach
        </tbody>
    </table>

    <br>
</body>

</html>