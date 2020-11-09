<?php

namespace App\Http\Controllers;

use App\Jurnal;
use App\Pembimbing;
use App\PembimbingPerusahaan;
use App\Siswa;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use KKSI;
use stdClass;

class APIController extends Controller
{
    public function process_login(Request $request)
    {
        try {
            $username = $request->post('username');
            $password = $request->post('password');

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

    public function absenSiswa(Request $request)
    {
        try {
            date_default_timezone_set('Asia/Jakarta');

            $user_id = $request->post('user_id');
            $date = $request->post('date');

            $siswa = Siswa::where('nis', $user_id)->first();

            if ($siswa !== null) {
                $dateWithoutTime = date('Y-m-d', strtotime($date));
                $jurnal = Jurnal::where('nis', $user_id)->whereDate('waktu_masuk', '=', $dateWithoutTime)->first();

                if ($jurnal != null) {
                    $data = new stdClass;
                    $data->status = $jurnal->status;
                    $data->waktu_masuk = date('d F Y / H:i', strtotime($jurnal->waktu_masuk));

                    return JSONResponse(array(
                        'RESULT' => 'DONE',
                        'DATA' => $data
                    ));
                } else {
                    $jurnal = new Jurnal();
                    $jurnal->nis = $user_id;
                    $jurnal->waktu_masuk = date('Y-m-d H:i:s', strtotime($date));
                    $jurnal->status = 0;

                    $save = $jurnal->save();

                    if ($save) {
                        return JSONResponseDefault(KKSI::OK, 'Berhasil melakukan absensi');
                    } else {
                        return JSONResponseDefault(KKSI::FAILED, 'Gagal melakukan absensi');
                    }
                }
            } else {
                return JSONResponseDefault(KKSI::FAILED, 'Akun anda tidak ditemukan');
            }
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }
}
