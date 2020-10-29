<?php

namespace App\Http\Controllers;

use App\Pembimbing;
use App\PembimbingPerusahaan;
use App\Siswa;
use Exception;
use Illuminate\Http\Request;
use KKSI;

class APIController extends Controller
{
    public function process_login(Request $request)
    {
        try {
            $username = $request->post('username');
            $password = $request->post('password');

            $siswa = Siswa::find(
                $username,
                array('nis')
            );

            if ($siswa !== null) {
                if ($siswa->password == $password) {
                    return JSONResponseDefault(KKSI::OK, 'Login Berhasil Sebagai Siswa');
                } else {
                    return JSONResponseDefault(KKSI::FAILED, 'Username atau password yang anda masukkan salah');
                }
            } else {
                $pembimbing = Pembimbing::find($username, array('email'));

                if ($pembimbing !== null) {
                    if ($pembimbing->password == $password) {
                        return JSONResponseDefault(KKSI::OK, 'Login Berhasil Sebagai Pembimbing Sekolah');
                    } else {
                        return JSONResponseDefault(KKSI::FAILED, 'Username atau password yang anda masukkan salah');
                    }
                } else {
                    $pembimbingpers = PembimbingPerusahaan::find($username, array('email'));

                    if ($pembimbingpers !== null) {
                        if ($pembimbingpers->password == $password) {
                            return JSONResponseDefault(KKSI::OK, 'Login Berhasil Sebagai Pembimbing Perusahaan');
                        } else {
                            return JSONResponseDefault(KKSI::FAILED, 'Username atau password yang anda masukkan salah');
                        }
                    } else {
                        return JSONResponseDefault(KKSI::FAILED, 'Username atau password yang anda masukkan salah');
                    }
                }
            }
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }
}
