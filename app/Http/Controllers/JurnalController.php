<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Jurnal;
use PDF;

class JurnalController extends Controller
{
    public function index()
    {
        $jurnal = Jurnal::all();
        return view('jurnal.index', ['jurnal' => $jurnal]);
    }

    public function report_jurnal(Request $request)
    {
        $jurnal = new Jurnal();
        $first =  $request->get('first');
        $last = $request->get('last');
        $nis = $request->get('nis');
        $pdf = PDF::loadview('jurnal.lapor_jurnal', [
            'jurnal' => $jurnal->JurnalDate($nis, $first, $last),
            'siswa' => $jurnal->JurnalSiswa($nis),
            'first' => $first,
            'last' => $last
        ]);
        return $pdf->stream();
    }
}
