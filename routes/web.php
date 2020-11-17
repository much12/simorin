<?php

use Illuminate\Routing\RouteGroup;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect('login');
});

Route::get('login', 'LoginController@index');
Route::get('login/proses', 'LoginController@proses');
Route::get('logout', 'LoginController@logout');

Route::group(['middleware' => ['CekLogin']], function () {

    Route::get('dashboard', 'DashboardController@index');

    Route::group(['middleware' => ['isAdmin']], function () {
        # code...
        Route::get('company', 'CompanyController@index');
        Route::get('company/add', 'CompanyController@modal_add');
        Route::post('company/add/process', 'CompanyController@process_add');
        Route::get('company/edit', 'CompanyController@modal_edit');
        Route::post('company/edit/process', 'CompanyController@process_edit');
        Route::get('company/delete', 'CompanyController@process_delete');

        Route::get('bidang', 'BidangController@index');
        Route::get('bidang/add', 'BidangController@modal_add');
        Route::post('bidang/add/process', 'BidangController@process_add');
        Route::get('bidang/edit', 'BidangController@modal_edit');
        Route::post('bidang/edit/process', 'BidangController@process_edit');
        Route::get('bidang/delete', 'BidangController@process_delete');

        Route::get('jurusan', 'JurusanController@index');
        Route::get('jurusan/add', 'JurusanController@modal_add');
        Route::post('jurusan/add/process', 'JurusanController@process_add');
        Route::get('jurusan/edit', 'JurusanController@modal_edit');
        Route::post('jurusan/edit/process', 'JurusanController@process_edit');
        Route::get('jurusan/delete', 'JurusanController@process_delete');

        Route::get('guru', 'GuruController@index');
        Route::get('guru/add', 'GuruController@modal_add');
        Route::post('guru/add/process', 'GuruController@process_add');
        Route::get('guru/edit', 'GuruController@modal_edit');
        Route::post('guru/edit/process', 'GuruController@process_edit');
        Route::get('guru/delete', 'GuruController@process_delete');

        Route::get('pembimbing_sekolah', 'PembimbingSekolahController@index');
        Route::get('pembimbing_sekolah/add', 'PembimbingSekolahController@modal_add');
        Route::post('pembimbing_sekolah/add/process', 'PembimbingSekolahController@process_add');
        Route::get('pembimbing_sekolah/edit', 'PembimbingSekolahController@modal_edit');
        Route::post('pembimbing_sekolah/edit/process', 'PembimbingSekolahController@process_edit');
        Route::get('pembimbing_sekolah/delete', 'PembimbingSekolahController@process_delete');

        Route::get('siswa', 'SiswaController@index');
        Route::get('siswa/add', 'SiswaController@modal_add');
        Route::post('siswa/add/process', 'SiswaController@process_add');
        Route::get('siswa/edit', 'SiswaController@modal_edit');
        Route::post('siswa/edit/process', 'SiswaController@process_edit');
        Route::get('siswa/delete', 'SiswaController@process_delete');

        // Route::get('/pembimbing_perusahaan', 'PembimbingPerusahaanController@index');
        // Route::get('/pembimbing_perusahaan/add', 'PembimbingPerusahaanController@create');
        // Route::post('/pembimbing_perusahaan/add', 'PembimbingPerusahaanController@store');
        // Route::get('/pembimbing_perusahaan/edit', 'PembimbingPerusahaanController@edit');
        // Route::post('/pembimbing_perusahaan/edit', 'PembimbingPerusahaanController@update');
        // Route::get('/pembimbing_perusahaan/delete', 'PembimbingPerusahaanController@destroy');

        Route::get('/admin', 'AdminController@index');
        Route::get('/admin/add', 'AdminController@create');
        Route::post('/admin/add', 'AdminController@store');
        Route::get('/admin/edit', 'AdminController@edit');
        Route::post('/admin/edit', 'AdminController@update');
        Route::get('/admin/delete', 'AdminController@destroy');

        Route::get('/kategori', 'KategoriController@index');
        Route::get('kategori/add', 'KategoriController@modal_add');
        Route::post('kategori/add/process', 'KategoriController@process_add');
        Route::get('kategori/edit', 'KategoriController@modal_edit');
        Route::post('kategori/edit/process', 'KategoriController@process_edit');
        Route::get('kategori/delete', 'KategoriController@process_delete');
    });

    Route::get('absensi', 'AbsensiController@index');

    Route::get('jurnal', 'JurnalController@index');
    Route::post('jurnal/acc', 'JurnalController@acc_jurnal');
    Route::get('jurnal/view', 'JurnalController@view_jurnal');
    Route::get('jurnal/cetak', 'JurnalController@modal_cetak');
    Route::get('jurnal/cetak/get', 'JurnalController@get_siswa');
    Route::post('jurnal/cetak/process', 'JurnalController@report_jurnal');
});
