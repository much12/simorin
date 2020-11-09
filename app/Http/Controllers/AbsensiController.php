<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Jurnal;

class AbsensiController extends Controller
{
    public function index()
    {
        $absensi = Jurnal::all();
        return view('absensi.index', ['jurnal' => $absensi]);
    }
}
