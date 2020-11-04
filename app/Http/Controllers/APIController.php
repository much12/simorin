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
                    $pembimbingpers = PembimbingPerusahaan::where('email', $username)->first();

                    if ($pembimbingpers !== null) {
                        if ($pembimbingpers->password == $password) {
                            return JSONResponse(array(
                                'RESULT' => KKSI::OK,
                                'USER' => array(
                                    'ID' => $pembimbingpers->id,
                                    'NAMA' => $pembimbingpers->nama_pembimbing,
                                    'NAMA_PERUSAHAAN' => $pembimbingpers->perusahaan->nama_perusahaan,
                                    'ROLE' => $pembimbingpers->roleRel->role
                                )
                            ));
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
