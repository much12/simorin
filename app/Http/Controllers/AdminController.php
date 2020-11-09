<?php

namespace App\Http\Controllers;

use App\Admin;
use Exception;
use Illuminate\Http\Request;
use KKSI;

class AdminController extends Controller
{
    public function index(Request $request)
    {
        $data = array();
        $data['q'] = $request;
        $data['admin'] = Admin::when($request->get('q'), function ($query) use ($request) {
            $query->where('nama', 'like', "%{$request->get('q')}%");
        })->paginate(15);

        return view('admin.index', $data);
    }

    public function create()
    {
        try {
            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('admin.add')->render()
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

            $pembimbing = new Admin();
            $pembimbing->nama = $nama;
            $pembimbing->email = $email;
            $pembimbing->password = $password;
            // $pembimbing->role = ; // Pembimbing Perusahaan

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
            $id_admin = $request->get('id');

            $admin = Admin::find($id_admin);

            if ($admin == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $data = array();
            $data['admin'] = $admin;

            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('admin.edit', $data)->render()
            ));
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function update(Request $request)
    {
        try {
            $id_admin = $request->post('id');
            $nama = $request->post('nama');
            $email = $request->post('email');
            $password = $request->post('password');
            $confirmpassword = $request->post('confirmpassword');

            $admin = Admin::find($id_admin);

            if ($admin == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            } else {
                if ($admin->email != $email) {
                    $checkEmail = checkEmail($email);

                    if ($checkEmail == false) {
                        return JSONResponseDefault(KKSI::FAILED, 'Alamat email yang anda masukkan sudah terdaftar');
                    }
                }

                if ($admin->password != $password) {
                    if ($password !== $confirmpassword) {
                        return JSONResponseDefault(KKSI::FAILED, 'Password yang anda masukkan tidak sesuai');
                    }
                }
            }

            $admin->nama = $nama;
            $admin->email = $email;
            $admin->password = $password;

            $save = $admin->save();

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
            $id_admin = $request->get('id');

            $admin = Admin::find($id_admin);

            if ($admin == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $delete = $admin->delete();

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
