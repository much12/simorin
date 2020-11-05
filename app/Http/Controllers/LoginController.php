<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use KKSI;
use App\PembimbingPerusahaan;
use Session;
use DB;
use Auth;

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

        $pembimbing = $this->cek_pembimbing_perusahaan($email, $password);
        $admin = $this->cek_admin($email, $password);

        if ($pembimbing != null) {
            Session::put('is_login',true);
            Session::put('id',$pembimbing->id);
            Session::put('nama',$pembimbing->nama_pembimbing);
            Session::put('role','Perusahaan');
            return JSONResponseDefault(KKSI::OK, 'Login Berhasil');
        } else if ($admin != null) {
            Session::put('is_login',true);
            Session::put('id',$admin->id);
            Session::put('nama',$admin->nama_admin);
            Session::put('role','Admin');
            return JSONResponseDefault(KKSI::OK, 'Login Berhasil');
        } else {
            return JSONResponseDefault(KKSI::FAILED, 'Email atau Password Salah');
        }
    }

    public function cek_admin($email, $password)
    {
        return DB::table('msadmin')->where('email',$email)->where('password',$password)->first();
    }

    public function cek_pembimbing_perusahaan($email, $password)
    {
        return PembimbingPerusahaan::where('email', $email)->where('password', $password)->first();
    }

    public function logout()
    {
        Auth::logout();
        Session::flush();
        return redirect('login');
    }
}
