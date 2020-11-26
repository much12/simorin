<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('login', 'APIController@process_login');
Route::post('absen_siswa', 'APIController@absenSiswa');
Route::post('input_jurnal', 'APIController@inputJurnal');
Route::post('list-absen', 'APIController@listAbsensi');
Route::post('list-jurnal', 'APIController@listJurnal');
Route::post('list-absen-ortu', 'APIController@listAbsensiOrtu');
Route::post('list-aperusahaan', 'APIController@listAperusahaan');
Route::post('list-arekap', 'APIController@listArekap');
Route::post('list-jurnal-siswa', 'APIController@listJurnalSiswa');
Route::post('get-jurnal-siswa', 'APIController@jurnalSiswa');
