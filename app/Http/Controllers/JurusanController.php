<?php

namespace App\Http\Controllers;

use App\Jurusan;
use Exception;
use Illuminate\Http\Request;
use KKSI;

class JurusanController extends Controller
{
    public function process_add(Request $request)
    {
        try {
            $nama_jurusan = $request->post('nama_jurusan');
            $id_bidang = $request->post('id_bidang');

            $jurusan = new Jurusan();
            $jurusan->nama_jurusan = $nama_jurusan;
            $jurusan->id_bidang = $id_bidang;

            $save = $jurusan->save();

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
            $id_jurusan = $request->post('id_jurusan');
            $nama_jurusan = $request->post('nama_jurusan');
            $id_bidang = $request->post('id_bidang');

            $jurusan = Jurusan::find($id_jurusan);

            if ($jurusan == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $jurusan->nama_jurusan = $nama_jurusan;
            $jurusan->id_bidang = $id_bidang;

            $save = $jurusan->save();

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
            $id_jurusan = $request->get('id_jurusan');

            $jurusan = Jurusan::find($id_jurusan);

            if ($jurusan == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $delete = $jurusan->delete();

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
            $id_jurusan = $request->get('id_jurusan');

            $jurusan = Jurusan::find($id_jurusan);

            if ($jurusan == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $data = array();
            $data['jurusan'] = $jurusan;

            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('jurusan.edit', $data)->render()
            ));
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }
}
