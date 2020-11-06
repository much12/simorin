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
            $username = $request->get('username');
            $password = $request->get('password');

            $siswa = Siswa::where('nis', $username)->first();

            if ($siswa !== null) {
                if ($siswa->password == $password) {
                    return JSONResponse(array(
                        'RESULT' => KKSI::OK,
                        'USER' => array(
                            'ID' => $siswa->nis,
                            'NAMA' => $siswa->nama,
                            'ROLE' => $siswa->roleRel->role,
                            'PSB' => $siswa->company->nama_perusahaan
                        )
                    ));
                } else {
                    return JSONResponseDefault(KKSI::FAILED, 'Username atau password yang anda masukkan salah');
                }
            } else {
                $pembimbing = Pembimbing::where('email', $username)->first();

                if ($pembimbing !== null) {
                    if ($pembimbing->password == $password) {
                        return JSONResponse(array(
                            'RESULT' => KKSI::OK,
                            'USER' => array(
                                'ID' => $pembimbing->id,
                                'NAMA' => $pembimbing->nama_pembimbing,
                                'PSB' => $pembimbing->bagian,
                                'ROLE' => $pembimbing->roleRel->role
                            )
                        ));
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
                                    'PSB' => $pembimbingpers->perusahaan->nama_perusahaan,
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
