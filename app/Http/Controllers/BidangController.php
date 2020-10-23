<?php

namespace App\Http\Controllers;

use App\Bidang;
use Exception;
use Illuminate\Http\Request;
use KKSI;

class BidangController extends Controller
{
    public function process_add(Request $request)
    {
        try {
            $nama_bidang = $request->post('nama_bidang');

            $bidang = new Bidang();
            $bidang->nama_bidang = $nama_bidang;

            $save = $bidang->save();

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
            $id_bidang = $request->post('id_bidang');
            $nama_bidang = $request->post('nama_bidang');

            $bidang = Bidang::find($id_bidang);

            if ($bidang == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $bidang->nama_bidang = $nama_bidang;

            $save = $bidang->save();

            if ($save) {
                return JSONResponseDefault(KKSI::OK, 'Data berhasil diupdate');
            } else {
                return JSONResponseDefault(KKSI::FAILED, 'Gagal mengupdate data');
            }
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function process_delete(Request $request)
    {
        try {
            $id_bidang = $request->get('id_bidang');

            $bidang = Bidang::find($id_bidang);

            if ($bidang == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $delete = $bidang->delete();

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
            $id_bidang = $request->get('id_bidang');

            $bidang = Bidang::find($id_bidang);

            if ($bidang == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $data = array();
            $data['bidang'] = $bidang;

            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('bidang.edit', $data)->render()
            ));
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }
}
