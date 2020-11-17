<?php

namespace App\Http\Controllers;

use App\Kategori;
use Exception;
use Illuminate\Http\Request;
use KKSI;

class KategoriController extends Controller
{
    public function index(Request $request)
    {
        $data = array();
        $data['kategori'] = Kategori::when($request->get('q'), function ($query) use ($request) {
            $query->where('kategori', 'like', "%{$request->get('q')}%");
        })->paginate(15);

        return view('kategori.index', $data);
    }
    public function process_add(Request $request)
    {
        try {
            $kategoris =  $request->post('kategori');

            $kategori = new Kategori();
            $kategori->kategori =  $kategoris;

            $save = $kategori->save();

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
            $id_kategori = $request->post('id_kategori');
            $nama = $request->post('kategori');
            $kategori = Kategori::find($id_kategori);

            if ($kategori == null) {
                return JSONResponseDefault(KKSI::FAILED, "Data tidak ditemukan");
            }

            $kategori->kategori =  $nama;

            $save = $kategori->save();

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

            $id_kategori = $request->get('id');
            $kategori = Kategori::find($id_kategori);

            if ($kategori == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $delete = $kategori->delete();

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
            $id_kategori = $request->get('id');

            $kategori = Kategori::find($id_kategori);

            if ($kategori == null) {
                return JSONResponseDefault(KKSI::FAILED, 'Data tidak ditemukan');
            }

            $data = array();
            $data['kategori'] = $kategori;


            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('kategori.edit', $data)->render()
            ));
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }

    public function modal_add()
    {
        try {
            return JSONResponse(array(
                'RESULT' => KKSI::OK,
                'CONTENT' => view('kategori.add')->render()
            ));
        } catch (Exception $ex) {
            return JSONResponseDefault(KKSI::ERROR, $ex->getMessage());
        }
    }
}
