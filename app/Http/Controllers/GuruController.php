<?php

namespace App\Http\Controllers;

use App\Guru;
use Exception;
use Illuminate\Http\Request;
use KKSI;

class GuruController extends Controller
{
    public function process_add(Request $request)
    {
        try {
            $nama = $request->post('nama');
            $email = $request->post('email');
            $password = $request->post('password');
            $confirmpassword = $request->post('confirmpassword');

            $checkEmail = Guru::find($email, array('email'));

            if ($checkEmail !== null) {
                return JSONResponseDefault(KKSI::FAILED, 'Alamat email yang anda masukkan sudah terdaftar');
            } else if ($password !== $confirmpassword) {
                return JSONResponseDefault(KKSI::FAILED, 'Password yang anda masukkan tidak sesuai');
            }

            $guru = new Guru();
            $guru->nama = $nama;
            $guru->email = $email;
            $guru->password = $password;

            $save = $guru->save();

            if ($save) {
                return JSONResponseDefault(KKSI::OK, 'Data berhasil ditambahkan');
            } else {
                return JSONResponseDefault(KKSI::FAILED, 'Gagal menambahkan data');
            }
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function process_edit(Request $request)
    {
        try {
            $id_guru = $request->post('id_guru');
            $nama = $request->post('nama');
            $email = $request->post('email');
            $password = $request->post('password');
            $confirmpassword = $request->post('confirmpassword');

            $guru = Guru::find($id_guru);

            if ($guru == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            } else {
                if ($guru->email != $email) {
                    $checkEmail = Guru::find($email, array('email'));

                    if ($checkEmail !== null) {
                        return JSONResponseDefault(KKSI::FAILED, 'Alamat email yang anda masukkan sudah terdaftar');
                    }
                } else if ($guru->password != $password) {
                    if ($password !== $confirmpassword) {
                        return JSONResponseDefault(KKSI::FAILED, 'Password yang anda masukkan tidak sesuai');
                    }
                }
            }

            $guru->nama = $nama;
            $guru->email = $email;
            $guru->password = $password;

            $save = $guru->save();

            if ($save) {
                return JSONResponseDefault(KKSI::OK, 'Data berhasil diubah');
            } else {
                return JSONResponseDefault(KKSI::FAILED, 'Gagal mengubah data');
            }
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function process_delete(Request $request)
    {
        try {
            $id_guru = $request->get('id_guru');

            $guru = Guru::find($id_guru);

            if ($guru == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $delete = $guru->delete();

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
            $id_guru = $request->get('id_guru');

            $guru = Guru::find($id_guru);

            if ($guru == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $data = array();
            $data['guru'] = $guru;

            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('guru.edit', $data)->render()
            ));
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }
}
