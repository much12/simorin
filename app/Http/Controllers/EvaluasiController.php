<?php

namespace App\Http\Controllers;

use App\Monitoring;
use App\MonitoringDetail;
use Exception;
use PDF;
use Illuminate\Http\Request;
use KKSI;

class EvaluasiController extends Controller
{
    public function index(Request $request)
    {
        $q = $request->get('q');
        $bln = $request->get('bulan');
        if ($bln == null && $q == null) {
            $monitoring = Monitoring::leftJoin('mscompany', 'tb_monitoring.id_company', '=', 'mscompany.id')
                ->leftJoin('mspembimbing', 'tb_monitoring.id_user', '=', 'mspembimbing.id')
                ->paginate(15);
        } else if ($bln != null && $q == null) {
            $tahun = date('Y', strtotime($bln));
            $bulan = date('m', strtotime($bln));

            $monitoring = Monitoring::whereMonth('tgl_monitoring', '=', $bulan)
                ->leftJoin('mscompany', 'tb_monitoring.id_company', '=', 'mscompany.id')
                ->leftJoin('mspembimbing', 'tb_monitoring.id_user', '=', 'mspembimbing.id')
                ->whereYear('tgl_monitoring', '=', $tahun)
                ->get();
        } else if ($bln !== null && $q !== null) {
            $tahun = date('Y', strtotime($bln));
            $bulan = date('m', strtotime($bln));

            $monitoring = Monitoring::leftJoin('mscompany', 'tb_monitoring.id_company', '=', 'mscompany.id')
                ->leftJoin('mspembimbing', 'tb_monitoring.id_user', '=', 'mspembimbing.id')
                ->whereMonth('waktu_masuk', '=', $bulan)
                ->whereYear('waktu_masuk', '=', $tahun)
                ->where('nama_perusahaan', 'LIKE', "%$q%")
                ->get();
        } else if ($bln == null && $q !== null) {
            $monitoring = Monitoring::leftJoin('mscompany', 'tb_monitoring.id_company', '=', 'mscompany.id')
                ->leftJoin('mspembimbing', 'tb_monitoring.id_user', '=', 'mspembimbing.id')
                ->where('nama_perusahaan', 'LIKE', "%$q%")
                ->get();
        }
        return view('evaluasi.index', [
            'monitoring' => $monitoring,
            'q' => $q
        ]);
    }

    public function viewRecord(Request $request)
    {
        $mon = new Monitoring();
        $det = new MonitoringDetail();
        $id = base64_decode($request->get('id'));
        $pdf = PDF::loadview('evaluasi.record', [
            'monitoring' => $mon->getRecord($id),
            'detail' => $det->getRecord($id)
        ]);
        return $pdf->stream();
    }


    public function modalcetak(Request $request)
    {
        try {
            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('evaluasi.modal')->render()
            ));
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function report(Request $request)
    {
        $first =  $request->post('first');
        $last = $request->post('last');

        $pdf = PDF::loadview('evaluasi.lapor_evaluasi', [
            'first' => $first,
            'last' => $last,
            'monitoring' => Monitoring::leftJoin('mscompany', 'tb_monitoring.id_company', '=', 'mscompany.id')
                ->leftJoin('mspembimbing', 'tb_monitoring.id_user', '=', 'mspembimbing.id')
                ->whereBetween('tgl_monitoring', [$first, $last])->get()
        ]);
        return $pdf->download("report-evaluasi$first-$last.pdf");
    }
}
