<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use KKSI;
use App\PembimbingPerusahaan;
use Session;

class LoginController extends Controller
{
    public function index()
    {
        return view('login');
    }

    public function proses(Request $request)
    {
        $email = $request->get('email');
        $password = $request->get('password');

        $pembimbing = $this->cek_pembimbing_perusahaan($email,$password);
        $admin = $this->cek_admin($email,$password);

        if ($pembimbing != null) {
            return JSONResponseDefault(KKSI::OK, 'Login Pembimbing Berhasil');
        }else if($admin != null){
            return JSONResponseDefault(KKSI::OK, 'Login Admin Berhasil');
        }else{
            return JSONResponseDefault(KKSI::FAILED, 'Access Denied');
        }
    }

    public function cek_admin($email,$password)
    {
        
    }

    public function cek_pembimbing_perusahaan($email,$password)
    {
        return PembimbingPerusahaan::where('email',$email)->where('password',$password)->first();
    }
}
