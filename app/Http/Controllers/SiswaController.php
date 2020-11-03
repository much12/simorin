<?php

namespace App\Http\Controllers;

use App\Guru;
use App\Jurusan;
use App\Siswa;
use Exception;
use Illuminate\Http\Request;
use KKSI;

class SiswaController extends Controller
{
    public function index(Request $request)
    {
        $data = array();
        $data['siswa'] = Siswa::when($request->get('q'), function ($query) use ($request) {
            $query->where('nama', 'like', "%{$request->get('q')}%");
        })->paginate(15);

        return view('siswa.index', $data);
    }

    public function modal_add()
    {
        try {
            $data = array();
            $data['jurusan'] = Jurusan::all();
            $data['guru'] = Guru::all();

            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('siswa.add', $data)->render()
            ));
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function process_add(Request $request)
    {
        try {
            $nis = $request->post('nis');
            $nama_siswa = $request->post('nama_siswa');
            $jurusan = $request->post('jurusan');
            $guru = $request->post('guru');
            $email = $request->post('email');
            $password = $request->post('password');
            $confirmpassword = $request->post('confirmpassword');
            $jam_masuk = $request->post('jam_masuk');
            $jam_pulang = $request->post('jam_pulang');

            $checkNis = Siswa::find($nis);

            if ($checkNis !== null) {
                return JSONResponseDefault(KKSI::FAILED, 'NIS yang anda masukkan sudah terdaftar');
            }

            $checkEmail = checkEmail($email);

            if ($checkEmail == false) {
                return JSONResponseDefault(KKSI::FAILED, 'Alamat email yang anda masukkan sudah terdaftar');
            }

            if ($password !== $confirmpassword) {
                return JSONResponseDefault(KKSI::FAILED, 'Password yang anda masukkan tidak sesuai');
            }

            $siswa = new Siswa();
            $siswa->nis = $nis;
            $siswa->nama = $nama_siswa;
            $siswa->id_jurusan = $jurusan;
            $siswa->id_guru = $guru;
            $siswa->email = $email;
            $siswa->password = $password;
            $siswa->jam_masuk = date('H:i:00', strtotime($jam_masuk));
            $siswa->jam_pulang = date('H:i:00', strtotime($jam_pulang));

            $save = $siswa->save();

            if ($save) {
                return JSONResponseDefault(KKSI::OK, 'Data berhasil ditambahkan');
            } else {
                return JSONResponseDefault(KKSI::FAILED, 'Gagal menambahkan data');
            }
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function process_delete(Request $request)
    {
        try {
            $id_siswa = $request->get('id_siswa');

            $siswa = Siswa::find($id_siswa);

            if ($siswa == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $delete = $siswa->delete();

            if ($delete) {
                return JSONResponseDefault(KKSI::OK, 'Data berhasil dihapus');
            } else {
                return JSONResponseDefault(KKSI::FAILED, 'Gagal menghapus data');
            }
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function modal_edit(Request $request)
    {
        try {
            $id_siswa = $request->get('id');

            $siswa = Siswa::find($id_siswa);

            if ($siswa == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $data = array();
            $data['siswa'] = $siswa;
            $data['jurusan'] = Jurusan::all();
            $data['guru'] = Guru::all();

            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('siswa.edit', $data)->render()
            ));
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function process_edit(Request $request)
    {
        try {
            $id_siswa = $request->post('id_siswa');
            $nis = $request->post('nis');
            $nama_siswa = $request->post('nama_siswa');
            $jurusan = $request->post('jurusan');
            $guru = $request->post('guru');
            $email = $request->post('email');
            $password = $request->post('password');
            $confirmpassword = $request->post('confirmpassword');
            $jam_masuk = $request->post('jam_masuk');
            $jam_pulang = $request->post('jam_pulang');

            $siswa = Siswa::find($id_siswa);

            if ($siswa == null) {
                return JSONResponseDefault(KKSI::ERROR, 'Data tidak ditemukan');
            } else {
                if ($siswa->email != $email) {
                    $checkEmail = checkEmail($email);

                    if ($checkEmail == false) {
                        return JSONResponseDefault(KKSI::ERROR, 'Alamat email yang anda masukkan sudah terdaftar');
                    }
                }

                if ($siswa->password != $password) {
                    if ($password !== $confirmpassword) {
                        return JSONResponseDefault(KKSI::ERROR, 'Password yang anda masukkan tidak sesuai');
                    }
                }
            }

            $siswa->nis = $nis;
            $siswa->nama = $nama_siswa;
            $siswa->id_jurusan = $jurusan;
            $siswa->id_guru = $guru;
            $siswa->email = $email;
            $siswa->password = $password;
            $siswa->jam_masuk = date('H:i:00', strtotime($jam_masuk));
            $siswa->jam_pulang = date('H:i:00', strtotime($jam_pulang));

            $save = $siswa->save();

            if ($save) {
                return JSONResponseDefault(KKSI::OK, 'Data berhasil diubah');
            } else {
                return JSONResponseDefault(KKSI::FAILED, 'Gagal mengubah data');
            }
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }
}
