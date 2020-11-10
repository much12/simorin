<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Jurnal;
use PDF;
use KKSI;
use Exception;

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

    public function acc_jurnal(Request $request){
        try{
            $hasil = [];
            $save = true;
            foreach($request->input('dataId') as $key => $id){
                $jurnal = Jurnal::find($id);
                $jurnal->status_jurnal = 1;
                $jurnal->status_hadir = 1;
                if( !$jurnal->save() )
                    $save = false;
            }

            if ($save) {
                return JSONResponseDefault(KKSI::OK, 'Data berhasil diubah');
            } else {
                return JSONResponseDefault(KKSI::FAILED, 'Gagal mengubah data');
            }
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }
}
