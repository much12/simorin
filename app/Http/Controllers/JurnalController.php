<?php

namespace App\Http\Controllers;

use App\Company;
use Illuminate\Http\Request;
use App\Jurnal;
use App\Siswa;
use PDF;
use KKSI;
use Exception;

class JurnalController extends Controller
{
    public function index(Request $request)
    {
        $q = $request->get('q');
        $bln = $request->get('bulan');

        if ($bln == null && $q == null) {
            $jurnal = Jurnal::all();
        } else if ($bln !== null && $q == null) {
            $tahun = date('Y', strtotime($bln));
            $bulan = date('m', strtotime($bln));

            $jurnal = Jurnal::whereMonth('waktu_masuk', '=', $bulan)
                ->whereYear('waktu_masuk', '=', $tahun)
                ->get();
        } else if ($bln !== null && $q !== null) {
            $tahun = date('Y', strtotime($bln));
            $bulan = date('m', strtotime($bln));

            $jurnal = Jurnal::join('mssiswa', 'mssiswa.nis', '=', 'tbjurnal.nis')
                ->whereMonth('waktu_masuk', '=', $bulan)
                ->whereYear('waktu_masuk', '=', $tahun)
                ->where('mssiswa.nama', 'LIKE', "%$q%")
                ->get();
        } else if ($bln == null && $q !== null) {
            $jurnal = Jurnal::join('mssiswa', 'mssiswa.nis', '=', 'tbjurnal.nis')
                ->where('mssiswa.nama', 'LIKE', "%$q%")
                ->get();
        }

        return view('jurnal.index', [
            'jurnal' => $jurnal,
            'q' => $q
        ]);
    }

    public function report_jurnal(Request $request)
    {
        $jurnal = new Jurnal();
        $first =  $request->post('first');
        $last = $request->post('last');
        $nis = $request->post('nis');

        $cetak = true;
        if ($last < $first) {
            $cetak = false;
        }
        if ($cetak) {
            $pdf = PDF::loadview('jurnal.lapor_jurnal', [
                'jurnal' => $jurnal->JurnalDate($nis, $first, $last),
                'siswa' => $jurnal->JurnalSiswa($nis),
                'first' => $first,
                'last' => $last
            ]);
        }

        return $pdf->download('report.pdf');
    }

    public function acc_jurnal(Request $request)
    {
        try {
            $hasil = [];
            $save = true;

            foreach ($request->input('dataId') as $key => $id) {
                $jurnal = Jurnal::find($id);
                $jurnal->status = 1;

                if (!$jurnal->save())
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

    public function view_jurnal(Request $request)
    {
        try {
            $id = $request->get('id');

            $jurnal = Jurnal::join('mssiswa', 'mssiswa.nis', '=', 'tbjurnal.nis')
                ->where('id', $id)->get();

            if ($jurnal == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $data = array();
            $data['jurnal'] = $jurnal;

            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('jurnal.view', $data)->render()
            ));
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function modal_cetak(Request $request)
    {
        try {

            $company = Company::all();

            if ($company == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $data = array();
            $data['company'] = $company;


            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('jurnal.modal', $data)->render()
            ));
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function get_siswa(Request $request)
    {

        $siswa = Siswa::where('id_company', $request->get('id'))->get();

        foreach ($siswa as $key => $value) {
            echo "<option value='" . $value->nis . "'>" . $value->nama . "</option>";
        }
    }
}
