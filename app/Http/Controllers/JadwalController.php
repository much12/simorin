<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Bidang;
use App\Kategori;
use KKSI;
use App\Company;
use App\Pembimbing;
use App\Jadwal;
use Illuminate\Support\Facades\Session;

class JadwalController extends Controller
{
    public function index()
    {
        $where = array();
        if (!isAdmin()) {
            $where = array(
                'mscompany.id' => Session::get('id')
            );
        }

        $jadwal = Jadwal::join('mscompany', 'mscompany.id', '=', 'tbjadwal.id_company')
            ->join('mspembimbing', 'mspembimbing.id', '=', 'tbjadwal.id_pembimbing')
            ->join('mskategori', 'mscompany.id_kategori', '=', 'mskategori.id_kategori')
            ->where($where)
            ->get();

        return view('jadwal.index', [
            'jadwal' => $jadwal
        ]);
    }

    public function modal_add()
    {
        try {
            $data = array();
            $data['pembimbing'] = Pembimbing::all();
            $data['bidang'] = Bidang::all();
            $data['kategori'] = Kategori::all();

            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('jadwal.add', $data)->render()
            ));
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function getTempat(Request $request)
    {
        $tempat = Company::where('id_kategori', $request->get('id'))->get();

        foreach ($tempat as $key => $value) {
            echo "<option value='" . $value->id . "'>" . $value->nama_perusahaan . "</option>";
        }
    }

    public function process_add(Request $request)
    {
        try {
            $id_pembimbing = $request->post('id_pembimbing');
            $id_company = $request->post('id_company');
            $tanggal = $request->post('tanggal');

            $jadwal = new Jadwal();
            $jadwal->id_pembimbing = $id_pembimbing;
            $jadwal->id_company = $id_company;
            $jadwal->tanggal = $tanggal;
            $save = $jadwal->save();

            if ($save) {
                return JSONResponseDefault(KKSI::OK, 'Data berhasil ditambahkan');
            } else {
                return JSONResponseDefault(KKSI::FAILED, 'Gagal menambahkan data');
            }
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }
}
