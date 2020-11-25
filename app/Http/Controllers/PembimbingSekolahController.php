<?php

namespace App\Http\Controllers;

use App\Guru;
use App\Kategori;
use App\Pembimbing;
use App\PembimbingPerusahaan;
use App\Siswa;
use Exception;
use Illuminate\Http\Request;
use KKSI;

class PembimbingSekolahController extends Controller
{
    public function index()
    {
        $data = array();
        $data['pembimbing'] = Pembimbing::paginate(15);

        return view('pembimbingsekolah.index', $data);
    }

    public function modal_add()
    {
        try {
            $data = array();
            $data['kategori'] = Kategori::all();

            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('pembimbingsekolah.add', $data)->render()
            ));
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function process_add(Request $request)
    {
        try {
            $nama_pembimbing = $request->post('nama_pembimbing');
            $email = $request->post('email');
            $kategori = $request->post('kategori');
            $password = $request->post('password');
            $confirmpassword = $request->post('confirmpassword');

            $checkEmail = checkEmail($email);

            if ($checkEmail == false) {
                return JSONResponseDefault(KKSI::FAILED, 'Alamat email yang anda masukkan sudah terdaftar');
            }

            if ($password !== $confirmpassword) {
                return JSONResponseDefault(KKSI::FAILED, 'Password yang anda masukkan tidak sesuai');
            }

            $pembimbingsekolah = new Pembimbing();
            $pembimbingsekolah->nama_pembimbing = $nama_pembimbing;
            $pembimbingsekolah->email = $email;
            $pembimbingsekolah->password = $password;
            $pembimbingsekolah->id_kategori = $kategori;
            $pembimbingsekolah->role = 3; // Pembimbing Sekolah

            $save = $pembimbingsekolah->save();

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
            $id_pembimbing = $request->get('id_pembimbing');

            $pembimbing = Pembimbing::find($id_pembimbing);

            if ($pembimbing == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $delete = $pembimbing->delete();

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
            $id_pembimbing = $request->get('id');

            $pembimbing = Pembimbing::find($id_pembimbing);

            if ($pembimbing == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $data = array();
            $data['pembimbing'] = $pembimbing;
            $data['kategori'] = Kategori::all();

            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('pembimbingsekolah.edit', $data)->render()
            ));
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function process_edit(Request $request)
    {
        try {
            $id_pembimbing = $request->post('id_pembimbing');
            $nama_pembimbing = $request->post('nama_pembimbing');
            $email = $request->post('email');
            $kategori = $request->post('kategori');
            $password = $request->post('password');
            $confirmpassword = $request->post('confirmpassword');

            $pembimbing = Pembimbing::find($id_pembimbing);

            if ($pembimbing == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            } else {
                if ($pembimbing->email != $email) {
                    $checkEmail = checkEmail($email);

                    if ($checkEmail == false) {
                        return JSONResponseDefault(KKSI::FAILED, 'Alamat email yang anda masukkan sudah terdaftar');
                    }
                }

                if ($pembimbing->password != $password) {
                    if ($password !== $confirmpassword) {
                        return JSONResponseDefault(KKSI::FAILED, 'Password yang anda masukkan tidak sesuai');
                    }
                }
            }

            $pembimbing->nama_pembimbing = $nama_pembimbing;
            $pembimbing->email = $email;
            $pembimbing->password = $password;
            $pembimbing->id_kategori = $kategori;

            $save = $pembimbing->save();

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
