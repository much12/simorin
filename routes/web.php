<?php

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
    return view('dashboard.index');
});

Route::get('login', function () {
    return view('login');
});

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
