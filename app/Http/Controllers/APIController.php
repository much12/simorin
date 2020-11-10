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
            $latitude = $request->post('latitude');
            $longitude = $request->post('longitude');

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
                    $jurnal->longitude = $longitude;
                    $jurnal->latitude = $latitude;

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

    public function inputJurnal(Request $request)
    {
        date_default_timezone_set('Asia/Jakarta');

        $user_id = $request->post('user_id');
        $kegiatan_kerja = $request->post('kegiatan_kerja');
        $prosedur_pengerjaan = $request->post('prosedur_pengerjaan');
        $spesifikasi_bahan = $request->post('spesifikasi_bahan');

        $jurnal = Jurnal::where('nis', $user_id)->whereDate('waktu_masuk', '=', date('Y-m-d'))->first();

        if ($jurnal == null) {
            return JSONResponseDefault(KKSI::FAILED, 'Anda belum melakukan absensi pada hari ini');
        } else {
            $updateArr = array();
            $updateArr['kegiatan_kerja'] = $kegiatan_kerja;
            $updateArr['prosedur_pengerjaan'] = $prosedur_pengerjaan;
            $updateArr['spesifikasi_bahan'] = $spesifikasi_bahan;

            $update = DB::table('tbjurnal')
                ->where('nis', $user_id)
                ->whereDate('waktu_masuk', '=', date('Y-m-d'))
                ->update($updateArr);

            if ($update) {
                return JSONResponseDefault(KKSI::OK, 'Input jurnal berhasil');
            } else {
                return JSONResponseDefault(KKSI::FAILED, 'Input jurnal gagal');
            }
        }
    }

    public function listAbsensi(Request $request)
    {
        try {
            date_default_timezone_set('Asia/Jakarta');

            $id_pembimbing_perusahaan = $request->post('id_pembimbing_perusahaan');

            $select = array(
                'tbjurnal.id AS id_absen',
                'mssiswa.nis AS id_siswa',
                'mssiswa.nama AS nama_siswa',
                'tbjurnal.waktu_masuk',
                'tbjurnal.waktu_pulang',
                'tbjurnal.status',
                'tbjurnal.longitude',
                'tbjurnal.latitude'
            );

            $pembimbingpers = DB::table('mspembimbingperusahaan')
                ->join('mscompany', 'mscompany.id_pembimbing_perusahaan', '=', 'mspembimbingperusahaan.id')
                ->join('mssiswa', 'mssiswa.id_company', '=', 'mscompany.id')
                ->join('tbjurnal', 'tbjurnal.nis', '=', 'mssiswa.nis')
                // ->select('tbjurnal.id AS id_absen, mssiswa.nis AS id_siswa, mssiswa.nama AS nama_siswa, tbjurnal.waktu_masuk. tbjurnal.waktu_pulang, tbjurnal.status, tbjurnal.longitude, tbjurnal.latitude')
                ->select($select)
                ->where('mspembimbingperusahaan.id', $id_pembimbing_perusahaan)
                ->get();

            $data = array();
            foreach ($pembimbingpers as $key => $value) {
                $detail = array();

                $detail['id_absen'] = $value->id_absen;
                $detail['id_siswa'] = $value->id_siswa;
                $detail['nama_siswa'] = $value->nama_siswa;
                $detail['tanggal'] = date('Y-m-d', strtotime($value->waktu_masuk));
                $detail['waktu_masuk'] = date('H:i', strtotime($value->waktu_masuk));
                $detail['waktu_pulang'] = $value->waktu_pulang == null ? null : date('H:i', strtotime($value->waktu_pulang));
                $detail['status'] = $value->status;
                $detail['latitude'] = $value->latitude;
                $detail['longitude'] = $value->longitude;

                $data[] = $detail;
            }

            echo json_encode($data);
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::FAILED, $ex->getMessage());
        }
    }
}
