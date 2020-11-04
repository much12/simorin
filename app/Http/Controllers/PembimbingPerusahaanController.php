<?php

namespace App\Http\Controllers;

use App\PembimbingPerusahaan;
use Exception;
use Illuminate\Http\Request;
use KKSI;

class PembimbingPerusahaanController extends Controller
{
    public function index(Request $request)
    {
        $data = array();
        $data['q'] = $request;
        $data['pembimbing'] = PembimbingPerusahaan::when($request->get('q'), function ($query) use ($request) {
            $query->where('nama_pembimbing', 'like', "%{$request->get('q')}%");
        })->paginate(15);

        return view('pembimbingperusahaan.index', $data);
    }

    public function create()
    {
        try {
            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('pembimbingperusahaan.add')->render()
            ));
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function store(Request $request)
    {
        try {
            $nama = $request->post('nama');
            $email = $request->post('email');
            $password = $request->post('password');
            $confirmpassword = $request->post('confirmpassword');

            $checkEmail = checkEmail($email);

            if ($checkEmail == false) {
                return JSONResponseDefault(KKSI::FAILED, 'Alamat email yang anda masukkan sudah terdaftar');
            } else if ($password !== $confirmpassword) {
                return JSONResponseDefault(KKSI::FAILED, 'Password yang anda masukkan tidak sesuai');
            }

            $pembimbing = new PembimbingPerusahaan();
            $pembimbing->nama_pembimbing = $nama;
            $pembimbing->email = $email;
            $pembimbing->password = $password;
            $pembimbing->role = 4; // Pembimbing Perusahaan

            $save = $pembimbing->save();

            if ($save) {
                return JSONResponseDefault(KKSI::OK, 'Data berhasil ditambahkan');
            } else {
                return JSONResponseDefault(KKSI::FAILED, 'Gagal menambahkan data');
            }
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function show($id)
    {
        //
    }

    public function edit(Request $request)
    {
        try {
            $id_pembimbing = $request->get('id');

            $pembimbing = PembimbingPerusahaan::find($id_pembimbing);

            if ($pembimbing == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $data = array();
            $data['pembimbing'] = $pembimbing;

            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('pembimbingperusahaan.edit', $data)->render()
            ));
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function update(Request $request)
    {
        try {
            $id_pembimbing = $request->post('id');
            $nama = $request->post('nama');
            $email = $request->post('email');
            $password = $request->post('password');
            $confirmpassword = $request->post('confirmpassword');

            $pembimbing = PembimbingPerusahaan::find($id_pembimbing);

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

            $pembimbing->nama_pembimbing = $nama;
            $pembimbing->email = $email;
            $pembimbing->password = $password;

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

    public function destroy(Request $request)
    {
        try {
            $id_pembimbing = $request->get('id');

            $pembimbing = PembimbingPerusahaan::find($id_pembimbing);

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
}
