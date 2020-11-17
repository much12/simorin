<?php

namespace App\Http\Controllers;

use App\Bidang;
use App\Company;
use App\Kategori;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use KKSI;

class CompanyController extends Controller
{
    public function index(Request $request)
    {
        $data = array();
        $data['company'] = Company::when($request->get('q'), function ($query) use ($request) {
            $query->where('nama_perusahaan', 'like', "%{$request->get('q')}%");
        })->paginate(15);
        return view('company.index', $data);
    }

    public function process_add(Request $request)
    {
        try {
            $nama_perusahaan = $request->post('nama_perusahaan');
            $alamat_perusahaan = $request->post('alamat');
            $telp_perusahaan = $request->post('telp');
            $id_bidang = $request->post('id_bidang');
            $id_kategori = $request->post('id_kategori');
            $nama_pembimbing_perusahaan = $request->post('pembimbing');
            $email = $request->post('email');
            $password = $request->post('password');
            $confirmpassword = $request->post('confirmpassword');
            // $id_pembimbing = $request->post('id_pembimbing');
            // $long = $request->post('long');
            // $lat = $request->post('lat');
            // $radius = $request->post('radius');

            if (!is_numeric($telp_perusahaan)) {
                return JSONResponseDefault(KKSI::FAILED, 'Nomor telepon perusahaan harus berupa angka');
            }

            $checkEmail = checkEmail($email);

            if (!$checkEmail) {
                return JSONResponseDefault(KKSI::FAILED, 'Alamat email yang anda masukkan sudah terdaftar');
            } else if ($password !== $confirmpassword) {
                return JSONResponseDefault(KKSI::FAILED, 'Password yang anda masukkan tidak sesuai');
            }

            $company = new Company();
            $company->nama_perusahaan = $nama_perusahaan;
            $company->alamat_perusahaan = $alamat_perusahaan;
            $company->telp_perusahaan = $telp_perusahaan;
            $company->id_bidang = $id_bidang;
            $company->id_kategori = $id_kategori;
            $company->nama_pembimbing_perusahaan = $nama_pembimbing_perusahaan;
            $company->email = $email;
            $company->password = $password;
            // $company->id_pembimbing = $id_pembimbing;
            // $company->longitude = $long;
            // $company->latitude = $lat;
            // $company->radius = $radius;

            $save = $company->save();

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
            $id_company = $request->post('id_company');
            $nama_perusahaan = $request->post('nama_perusahaan');
            $alamat_perusahaan = $request->post('alamat');
            $telp_perusahaan = $request->post('telp');
            $id_bidang = $request->post('id_bidang');
            $id_kategori = $request->post('id_kategori');
            $nama_pembimbing_perusahaan = $request->post('pembimbing');
            $email = $request->post('email');
            $password = $request->post('password');
            $confirmpassword = $request->post('confirmpassword');
            // $id_pembimbing = $request->post('id_pembimbing');
            // $long = $request->post('long');
            // $lat = $request->post('lat');
            // $radius = $request->post('radius');

            if (!is_numeric($telp_perusahaan)) {
                return JSONResponseDefault(KKSI::FAILED, 'Nomor telepon perusahaan harus berupa angka');
            }

            $company = Company::find($id_company);

            if ($company == null) {
                return JSONResponseDefault(KKSI::FAILED, "Data tidak ditemukan");
            } else {
                if ($company->email != $email) {
                    $checkEmail = checkEmail($email);

                    if (!$checkEmail) {
                        return JSONResponseDefault(KKSI::FAILED, 'Alamat email yang anda masukkan sudah terdaftar');
                    }
                }

                if ($company->password != $password) {
                    if ($password !== $confirmpassword) {
                        return JSONResponseDefault(KKSI::FAILED, 'Password yang anda masukkan tidak sesuai');
                    }
                }
            }

            $company->nama_perusahaan = $nama_perusahaan;
            $company->alamat_perusahaan = $alamat_perusahaan;
            $company->telp_perusahaan = $telp_perusahaan;
            $company->id_bidang = $id_bidang;
            $company->id_kategori = $id_kategori;
            $company->nama_pembimbing_perusahaan = $nama_pembimbing_perusahaan;
            $company->email = $email;
            $company->password = $password;
            // $company->id_pembimbing = $id_pembimbing;
            // $company->longitude = $long;
            // $company->latitude = $lat;
            // $company->radius = $radius;

            $save = $company->save();

            if ($save) {
                return JSONResponseDefault(KKSI::OK, 'Data berhasil diupdate');
            } else {
                return JSONResponseDefault(KKSI::FAILED, 'Gagal update data');
            }
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function process_delete(Request $request)
    {
        try {
            $id_company = $request->get('id_company');

            $company = Company::find($id_company);

            if ($company == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $delete = $company->delete();

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
            $id_company = $request->get('id');

            $company = Company::find($id_company);

            if ($company == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $data = array();
            $data['company'] = $company;
            $data['bidang'] = Bidang::all();
            $data['kategori'] = Kategori::all();

            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('company.edit', $data)->render()
            ));
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function modal_add()
    {
        try {
            $data = array();
            $data['bidang'] = Bidang::all();
            $data['kategori'] = Kategori::all();

            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('company.add', $data)->render()
            ));
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }
}
