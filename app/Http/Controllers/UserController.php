<?php

namespace App\Http\Controllers;

use App\Admin;
use App\Company;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use KKSI;

class UserController extends Controller
{
    public function change_password()
    {
        return view('user/change_password');
    }

    public function process_change_password(Request $request)
    {
        try {
            $newpassword = $request->post('newpassword');
            $confirmpassword = $request->post('confirmpassword');
            $password = $request->post('password');

            if (Session::get('role') == 'Admin') {
                $admin = Admin::find(Session::get('id'));

                if ($admin->password == $password) {
                    if ($newpassword == $confirmpassword) {
                        $admin->password = $newpassword;

                        $save = $admin->save();

                        if ($save) {
                            $login = new LoginController();
                            $login->logout();

                            return JSONResponseDefault(KKSI::OK, 'Password berhasil diubah, Silahkan login kembali');
                        } else {
                            return JSONResponseDefault(KKSI::FAILED, 'Gagal mengubah password');
                        }
                    } else {
                        return JSONResponseDefault(KKSI::FAILED, 'Password yang anda masukkan tidak sesuai');
                    }
                } else {
                    return JSONResponseDefault(KKSI::FAILED, 'Password yang anda masukkan salah');
                }
            } else if (Session::get('role') == 'Perusahaan') {
                $perusahaan = Company::find(Session::get('id'));

                if ($perusahaan->password == $password) {
                    if ($newpassword == $confirmpassword) {
                        $perusahaan->password = $newpassword;

                        $save = $perusahaan->save();

                        if ($save) {
                            $login = new LoginController();
                            $login->logout();

                            return JSONResponseDefault(KKSI::OK, 'Password berhasil diubah, Silahkan login kembali');
                        } else {
                            return JSONResponseDefault(KKSI::FAILED, 'Gagal mengubah password');
                        }
                    } else {
                        return JSONResponseDefault(KKSI::FAILED, 'Password yang anda masukkan tidak sesuai');
                    }
                } else {
                    return JSONResponseDefault(KKSI::FAILED, 'Password yang anda masukkan salah');
                }
            }
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }
}
