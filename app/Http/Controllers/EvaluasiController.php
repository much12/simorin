<?php

namespace App\Http\Controllers;

use App\Monitoring;
use Illuminate\Http\Request;

class EvaluasiController extends Controller
{
    public function index(Request $request)
    {
        $mon = new Monitoring();
        $data['monitoring'] = $mon->GetAll();

        dd($data);
        return view('evaluasi.index', $data);
    }
}
