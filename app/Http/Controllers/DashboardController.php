<?php

namespace App\Http\Controllers;

use App\Company;
use App\Jurnal;
use App\Pembimbing;
use App\PembimbingPerusahaan;
use App\Siswa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class DashboardController extends Controller
{
    public function index()
    {
        $data['company'] = Company::count();
        $data['siswa'] = Siswa::count();
        $data['pembimbing_sekolah'] = Pembimbing::count();
        $data['pembimbing_perusahaan'] = PembimbingPerusahaan::count();

        $where = array();
        if (!isAdmin()) {
            $where = array(
                'mssiswa.id_company' => Session::get('id')
            );
        }

        $data['history_jurnal'] = Jurnal::join('mssiswa', 'mssiswa.nis', '=', 'tbjurnal.nis')
            ->whereNotNull('waktu_pulang')
            ->where($where)
            ->orderBy('tbjurnal.waktu_pulang', 'DESC')
            ->limit(10)
            ->get();

        return view('dashboard.index', $data);
    }
}
