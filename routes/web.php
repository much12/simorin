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
    return view('master');
});

Route::post('company/add/process', 'CompanyController@process_add');
Route::get('company/edit', 'CompanyController@modal_edit');
Route::post('company/edit/process', 'CompanyController@process_edit');
Route::get('company/delete', 'CompanyController@process_delete');

Route::post('bidang/add/process', 'BidangController@process_add');
Route::get('bidang/edit', 'BidangController@modal_edit');
Route::post('bidang/edit/process', 'BidangController@process_edit');
Route::get('bidang/delete', 'BidangController@process_delete');

Route::post('jurusan/add/process', 'JurusanController@process_add');
Route::get('jurusan/edit', 'JurusanController@modal_edit');
Route::post('jurusan/edit/process', 'JurusanController@process_edit');
Route::get('jurusan/delete', 'JurusanController@process_delete');

Route::post('guru/add/process', 'GuruController@process_add');
Route::get('guru/edit', 'GuruController@modal_edit');
Route::post('guru/edit/process', 'GuruController@process_edit');
Route::get('guru/delete', 'GuruController@process_delete');
