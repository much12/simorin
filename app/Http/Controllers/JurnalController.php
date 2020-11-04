<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Jurnal;

class JurnalController extends Controller
{
    public function index()
    {
        $jurnal =Jurnal::all();
        return view('jurnal.index',['jurnal'=>$jurnal]);
    }
}
