<?php

namespace App\Http\Controllers;

use App\Company;
use Illuminate\Http\Request;
use App\Jurnal;

class AbsensiController extends Controller
{
    public function index(Request $request)
    {
        // $q = $request->get('q');
        // $bln = $request->get('bulan');

        // if ($bln == null && $q == null) {
        //     $absensi = Jurnal::all();
        // } else if ($bln !== null && $q == null) {
        //     $tahun = date('Y', strtotime($bln));
        //     $bulan = date('m', strtotime($bln));

        //     $absensi = Jurnal::whereMonth('waktu_masuk', '=', $bulan)
        //         ->whereYear('waktu_masuk', '=', $tahun)
        //         ->get();
        // } else if ($bln !== null && $q !== null) {
        //     $tahun = date('Y', strtotime($bln));
        //     $bulan = date('m', strtotime($bln));

        //     $absensi = Jurnal::join('mssiswa', 'mssiswa.nis', '=', 'tbjurnal.nis')
        //         ->whereMonth('waktu_masuk', '=', $bulan)
        //         ->whereYear('waktu_masuk', '=', $tahun)
        //         ->where('mssiswa.nama', 'LIKE', "%$q%")
        //         ->get();
        // } else if ($bln == null && $q !== null) {
        //     $absensi = Jurnal::join('mssiswa', 'mssiswa.nis', '=', 'tbjurnal.nis')
        //         ->where('mssiswa.nama', 'LIKE', "%$q%")
        //         ->get();
        // }

        return view('absensi.index', [
            'company' => Company::all()
        ]);
    }

    public function content(Request $request)
    {
        $perusahaan = $request->get('perusahaan');
        $siswa = $request->get('siswa');
        $fromdate = $request->get('fromdate');
        $todate = $request->get('todate');

        $jurnal = new Jurnal();
        $absensi = $jurnal->getContentWithFilter($perusahaan, $siswa, $fromdate, $todate);

        return view('absensi.content', [
            'jurnal' => $absensi
        ]);
    }
}
