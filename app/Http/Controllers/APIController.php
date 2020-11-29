<?php

namespace App\Http\Controllers;

use App\Company;
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
          // $pembimbingpers = PembimbingPerusahaan::where('email', $username)->first();
          $pembimbingpers = Company::where('email', $username)->first();

          if ($pembimbingpers !== null) {
            if ($pembimbingpers->password == $password) {
              return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'USER' => array(
                  'ID' => $pembimbingpers->id,
                  'NAMA' => $pembimbingpers->nama_pembimbing_perusahaan,
                  'PSB' => $pembimbingpers->nama_perusahaan,
                  'ROLE' => "Pembimbing Perusahaan"
                )
              ));
            } else {
              return JSONResponseDefault(KKSI::FAILED, 'Username atau password yang anda masukkan salah');
            }
          } else {
            $orangtua = Siswa::where('email', $username)->first();

            if ($orangtua !== null) {
              if ($orangtua->nis == $password) {
                return JSONResponse(array(
                  'RESULT' => KKSI::OK,
                  'USER' => array(
                    'ID' => $orangtua->nis,
                    'NAMA' => $orangtua->nama,
                    'ROLE' => "Orang Tua",
                    'PSB' => $orangtua->company->nama_perusahaan
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
      $updateArr['waktu_pulang'] = date('Y-m-d H:i:s');

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

  public function listAbsensiOrtu(Request $request)
  {
    try {
      date_default_timezone_set('Asia/Jakarta');

      $nis = $request->post('id');

      $total_alpha = Jurnal::where('nis', $nis)
        ->where('status', 2)
        ->select(DB::raw('COUNT(*) AS count'))
        ->first()
        ->count;

      $total_hadir = Jurnal::where('nis', $nis)
        ->where('status', 1)
        ->select(DB::raw('COUNT(*) AS count'))
        ->first()
        ->count;

      $select = array(
        'a.id AS id_absen',
        'a.nis AS id_siswa',
        'b.nama AS nama_siswa',
        'c.nama_perusahaan AS perusahaan',
        'a.longitude',
        'a.latitude'
      );

      $list = DB::table('tbjurnal')
        ->join('mssiswa', 'mssiswa.nis = tbjurnal.nis')
        ->join('mscompany', 'mscompany.id = mssiswa.id_company')
        ->select($select)
        ->where('tbjurnal.nis', $nis)
        ->get();

      $data = array();
      foreach ($list as $key => $value) {
        $detail = array();

        $detail['id_absen'] = $value->id_absen;
        $detail['id_siswa'] = $value->id_siswa;
        $detail['nama_siswa'] = $value->nama_siswa;
        $detail['perusahaan'] = $value->perusahaan;
        $detail['longitude'] = $value->longitude;
        $detail['latitude'] = $value->latitude;

        $data[] = $detail;
      }

      return JSONResponse(array(
        'RESULT' => KKSI::OK,
        'TOTAL_HADIR' => $total_hadir,
        'TOTAL_ALPHA' => $total_alpha,
        'ABSENSI' => $data
      ));
    } catch (Exception $ex) {
      return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
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

      // $pembimbingpers = DB::table('mspembimbingperusahaan')
      //     ->join('mscompany', 'mscompany.id_pembimbing_perusahaan', '=', 'mspembimbingperusahaan.id')
      //     ->join('mssiswa', 'mssiswa.id_company', '=', 'mscompany.id')
      //     ->join('tbjurnal', 'tbjurnal.nis', '=', 'mssiswa.nis')
      //     ->select($select)
      //     ->where('mspembimbingperusahaan.id', $id_pembimbing_perusahaan)
      //     ->get();

      $pembimbingpers = DB::table('mscompany')
      ->join('mssiswa', 'mssiswa.id_company', '=', 'mscompany.id')
      ->join('tbjurnal', 'tbjurnal.nis', '=', 'mssiswa.nis')
      ->orderBy('status', 'ASC')
      ->select($select)
      ->where('mscompany.id', $id_pembimbing_perusahaan)
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

  public function listAperusahaan(Request $request)
  {
    try {
      // SELECT *, COUNT(nis) FROM mscompany JOIN mssiswa ON mssiswa.id_company = mscompany.id WHERE mscompany.id_pembimbing = 9 GROUP BY mscompany.nama_perusahaan;
      date_default_timezone_set('Asia/Jakarta');

      $id_pembimbing = $request->post('id_pemsekolah');

      $select = array(
        'mscompany.id AS id_perusahaan',
        'nama_perusahaan AS perusahaan',
        'alamat_perusahaan AS alamat',
        DB::raw('COUNT(nis) AS total_siswa')
      );

      $perusahaan = DB::table('mscompany')
        ->join('mssiswa', 'mssiswa.id_company', '=', 'mscompany.id')
        ->where('mscompany.id_pembimbing', $id_pembimbing)
        ->select($select)
        ->groupBy('mscompany.id')
        ->get();

      return response()->json($perusahaan);
    } catch (Exception $ex) {
      return JSONResponseDefault(KKSI::FAILED, $ex->getMessage());
    }
  }

  public function listArekap(Request $request)
  {
    try {
      // date_default_timezone_set('Asia/Jakarta');

      $id_company = $request->post('id_company');
      $tgl_mulai = $request->post('tgl_mulai');
      $tgl_akhir = $request->post('tgl_akhir');

      $select = array(
        'mssiswa.nis',
        'mssiswa.nama',
        'mscompany.nama_perusahaan',
        DB::raw('(SELECT COUNT(status) FROM tbjurnal t2 WHERE status = 2 AND t2.nis = tbjurnal.nis) * 8 AS total_jam')
      );

      if ($tgl_akhir != "") {
        $select = array(
          'mssiswa.nis',
          'mssiswa.nama',
          'mscompany.nama_perusahaan',
          DB::raw("(SELECT COUNT(status) FROM tbjurnal t2 WHERE status = 2 AND t2.nis = tbjurnal.nis AND t2.waktu_masuk < DATE('" . $tgl_akhir . "')) * 8 AS total_jam")
        );
      }

      $data = DB::table('tbjurnal')
        ->join('mssiswa', 'mssiswa.nis', '=', 'tbjurnal.nis')
        ->join('mscompany', 'mssiswa.id_company', '=', 'mscompany.id')
        ->where('mscompany.id', $id_company);

      if ($tgl_akhir != "")
        $data = $data->where('tbjurnal.waktu_masuk', '<', $tgl_akhir);

      $data = $data->select($select)
        ->groupBy('mssiswa.nis')
        ->get();
      // $data = DB::select("SELECT *,(SELECT COUNT(status) FROM tbjurnal t2 WHERE status = 2 AND t2.nis = t1.nis) * 8 AS TOTAL_JAM FROM tbjurnal t1 JOIN mssiswa ON t1.nis = mssiswa.nis JOIN mscompany ON mssiswa.id_company = mscompany.id WHERE mscompany.id = 1 GROUP BY mssiswa.nis");

      return response()->json($data);
    } catch (Exception $ex) {
      return JSONResponseDefault(KKSI::FAILED, $ex->getMessage());
    }
  }

  public function listJurnal(Request $request)
  {
    try {
      date_default_timezone_set('Asia/Jakarta');

      $id_pembimbing_perusahaan = $request->post('id_pembimbing_perusahaan');

      $select = array(
        'tbjurnal.id AS id_jurnal',
        'tbjurnal.waktu_masuk',
        'tbjurnal.waktu_pulang',
        'tbjurnal.kegiatan_kerja',
        'tbjurnal.prosedur_pengerjaan',
        'tbjurnal.spesifikasi_bahan',
        'mssiswa.nama AS nama_siswa'
      );

      // $pembimbingpers = DB::table('mspembimbingperusahaan')
      //     ->join('mscompany', 'mscompany.id_pembimbing_perusahaan', '=', 'mspembimbingperusahaan.id')
      //     ->join('mssiswa', 'mssiswa.id_company', '=', 'mscompany.id')
      //     ->join('tbjurnal', 'tbjurnal.nis', '=', 'mssiswa.nis')
      //     ->select($select)
      //     ->where('mspembimbingperusahaan.id', $id_pembimbing_perusahaan)
      //     ->get();

      $pembimbingpers = DB::table('mscompany')
        ->join('mssiswa', 'mssiswa.id_company', '=', 'mscompany.id')
        ->join('tbjurnal', 'tbjurnal.nis', '=', 'mssiswa.nis')
        ->select($select)
        ->where('mscompany.id', $id_pembimbing_perusahaan)
        ->get();

      $data = array();
      foreach ($pembimbingpers as $key => $value) {
        if ($value->waktu_pulang == null) continue;

        $detail = array();

        $detail['id_jurnal'] = $value->id_jurnal;
        $detail['tanggal'] = date('d F Y', strtotime($value->waktu_masuk));
        $detail['waktu_masuk'] = date('H:i', strtotime($value->waktu_masuk));
        $detail['waktu_pulang'] = $value->waktu_pulang == null ? null : date('H:i', strtotime($value->waktu_pulang));
        $detail['kegiatan'] = $value->kegiatan_kerja;
        $detail['prosedur'] = $value->prosedur_pengerjaan;
        $detail['spek'] = $value->spesifikasi_bahan;
        $detail['nama_siswa'] = $value->nama_siswa;

        $data[] = $detail;
      }

      echo json_encode($data);
    } catch (Exception $ex) {
      return JSONResponseDefault(KKSI::FAILED, $ex->getMessage());
    }
  }

  public function listJurnalSiswa(Request $request)
  {
    try {
      // SELECT * FROM tbjurnal JOIN mssiswa ON tbjurnal.nis = mssiswa.nis WHERE mssiswa.nis = 18411;
      // date_default_timezone_set('Asia/Jakarta');

      $id_siswa = $request->post('id_siswa');

      $select = array(
        'tbjurnal.id',
        'mssiswa.nama AS nama_siswa',
        'tbjurnal.waktu_masuk',
        'tbjurnal.waktu_pulang',
        'tbjurnal.kegiatan_kerja AS kegiatan',
        'tbjurnal.prosedur_pengerjaan AS prosedur',
        'tbjurnal.spesifikasi_bahan AS spek',
        'tbjurnal.status'
      );

      $jurnal = DB::table('tbjurnal')
        ->join('mssiswa', 'mssiswa.nis', '=', 'tbjurnal.nis')
        ->where('mssiswa.nis', $id_siswa)
        ->select($select)
        ->get();

      $data = array();
      foreach ($jurnal as $j) {
        $detail = array();

        $detail['id_jurnal'] = $j->id;
        $detail['tanggal'] = date('d F Y', strtotime($j->waktu_masuk));
        $detail['waktu_masuk'] = date('H:i', strtotime($j->waktu_masuk));
        $detail['waktu_pulang'] = $j->waktu_pulang == null ? null : date('H:i', strtotime($j->waktu_pulang));
        $detail['kegiatan'] = $j->kegiatan;
        $detail['prosedur'] = $j->prosedur;
        $detail['spek'] = $j->spek;
        $detail['nama_siswa'] = $j->nama_siswa;

        $data[] = $detail;
      }

      echo json_encode($data);
    } catch (Exception $ex) {
      return JSONResponseDefault(KKSI::FAILED, $ex->getMessage());
    }
  }

  public function jurnalSiswa(Request $request)
  {
    try {
      $id_siswa = $request->post('id_siswa');
      $tanggal = $request->post('tanggal');

      $data = DB::table('tbjurnal')

      ->where('nis', $id_siswa)
      ->where('waktu_masuk', 'LIKE', "%".$tanggal."%")
      ->get();

      if ($data == "[]") {
        return JSONResponseDefault(KKSI::ERROR, "Anda belum melakukan absen untuk hari ini");
      } else {
        foreach ($data as $k) {
          if ($k->waktu_pulang == null) {
            return JSONResponseDefault("KOSONG", "");
          } else {
            return JSONResponseDefault(KKSI::FAILED, "Anda sudah memasukkan jurnal kegiatan pada hari ini dan juga berhasil untuk absen pulang!");
          }
        }
      } 
    } catch (Exception $e) {
      return JSONResponseDefault(KKSI::ERROR, $e->getMessage());
    }
  }

  public function searchJurnalSiswa(Request $request)
  {
    try {
            // SELECT * FROM tbjurnal JOIN mssiswa ON tbjurnal.nis = mssiswa.nis WHERE mssiswa.nis = 18411;
            // date_default_timezone_set('Asia/Jakarta');

      $id_siswa = $request->post('id');
      $mulai = $request->post('mulai');
      $sampai = $request->post('sampai');

      $select = array(
        'tbjurnal.id',
        'mssiswa.nama AS nama_siswa',
        'tbjurnal.waktu_masuk',
        'tbjurnal.waktu_pulang',
        'tbjurnal.kegiatan_kerja AS kegiatan',
        'tbjurnal.prosedur_pengerjaan AS prosedur',
        'tbjurnal.spesifikasi_bahan AS spek',
        'tbjurnal.status'
      );

      $jurnal = DB::table('tbjurnal')
      ->join('mssiswa', 'mssiswa.nis', '=', 'tbjurnal.nis')
      ->where('mssiswa.nis', $id_siswa)
      ->whereBetween('waktu_masuk', [$mulai, $sampai])
      ->select($select)
      ->get();

      $data = array();
      foreach ($jurnal as $j) {
        $detail = array();

        $detail['id_jurnal'] = $j->id;
        $detail['tanggal'] = date('d F Y', strtotime($j->waktu_masuk));
        $detail['waktu_masuk'] = date('H:i', strtotime($j->waktu_masuk));
        $detail['waktu_pulang'] = $j->waktu_pulang == null ? null : date('H:i', strtotime($j->waktu_pulang));
        $detail['kegiatan'] = $j->kegiatan;
        $detail['prosedur'] = $j->prosedur;
        $detail['spek'] = $j->spek;
        $detail['nama_siswa'] = $j->nama_siswa;

        $data[] = $detail;
      }

      echo json_encode($data);
    } catch (Exception $ex) {
      return JSONResponseDefault(KKSI::FAILED, $ex->getMessage());
    }
  }

  public function setujuiSemuaAbsen(Request $req)
  {  
    try {
      $id_absen = $req->post("id_absen");

      $data = explode(',', $id_absen);

      $update = DB::table('tbjurnal')
      ->whereIn('id', $data)
      ->where('status', 0)
      ->update(['status' => 1]);

      if ($update) {
        return JSONResponseDefault(KKSI::OK, 'Berhasil mensetujui semua absen siswa!');
      } else {
        return JSONResponseDefault(KKSI::FAILED, 'Gagal mensetujui semua absen siswa!');
      }

    } catch (Exception $e) {
      return JSONResponseDefault(KKSI::ERROR, $e->getMessage());
    }
  }

  public function tolakSemuaAbsen(Request $req)
  {  
    try {
      $id_absen = $req->post("id_absen");

      $data = explode(',', $id_absen);

      $update = DB::table('tbjurnal')
      ->whereIn('id', $data)
      ->where('status', 0)
      ->update(['status' => 2]);

      if ($update) {
        return JSONResponseDefault(KKSI::OK, 'Berhasil menolak semua absen siswa!');
      } else {
        return JSONResponseDefault(KKSI::FAILED, 'Gagal menolak semua absen siswa!');
      }

    } catch (Exception $e) {
      return JSONResponseDefault(KKSI::ERROR, $e->getMessage());
    }
  }

  public function setujuiPilihanAbsen(Request $req)
  {  
    try {
      $id_absen = $req->post("id_absen");

      $data = explode(',', $id_absen);

      $update = DB::table('tbjurnal')
      ->whereIn('id', $data)
      ->update(['status' => 1]);

      if ($update) {
        return JSONResponseDefault(KKSI::OK, 'Berhasil mensetujui semua absen yang sudah anda pilih!');
      } else {
        return JSONResponseDefault(KKSI::FAILED, 'Gagal mensetujui semua absen yang sudah anda pilih!');
      }

    } catch (Exception $e) {
      return JSONResponseDefault(KKSI::ERROR, $e->getMessage());
    }
  }

  public function tolakPilihanAbsen(Request $req)
  {  
    try {
      $id_absen = $req->post("id_absen");

      $data = explode(',', $id_absen);

      $update = DB::table('tbjurnal')
      ->whereIn('id', $data)
      ->update(['status' => 2]);

      if ($update) {
        return JSONResponseDefault(KKSI::OK, 'Berhasil menolak absen siswa yang sudah anda pilih!');
      } else {
        return JSONResponseDefault(KKSI::FAILED, 'Gagal menolak absen siswa yang sudah anda pilih!');
      }

    } catch (Exception $e) {
      return JSONResponseDefault(KKSI::ERROR, $e->getMessage());
    }
  }
}
