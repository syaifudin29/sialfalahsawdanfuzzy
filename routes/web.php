<?php

use App\Http\Middleware\CekAdmin;
use App\Http\Middleware\CekSiswa;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SoalController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\SiswaController;
use App\Http\Controllers\EkstraController;
use App\Http\Controllers\ProsesController;
use App\Http\Controllers\KriteriaController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\PertanyaanController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/data-siswa', function () {
//     return view('admin/siswa');
// });
// Route::get('/data-ekstra', function () {
//     return view('admin/ekstra');
// });
// Route::get('/data-kriteria', function () {
//     return view('admin/kriteria');
// });
// Route::get('/pertanyaan', function () {
//     return view('admin/pertanyaan');
// });
// Route::get('/proses-analisis', function () {
//     return view('admin/proses');
// });

Route::middleware([CekAdmin::class])->group(function () {

    // dashboard
    Route::get('/', [DashboardController::class, 'index'])->name('dashboard');
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    // data siswa
    Route::get('/data-siswa', [SiswaController::class, 'index'])->name('data-siswa');
    Route::get('/tambah-siswa', [SiswaController::class, 'tambah'])->name('tambah-siswa');
    Route::post('/proses-tambah-siswa', [SiswaController::class, 'prosesTambah'])->name('proses-tambah-siswa');
    Route::post('/proses-ubah-siswa', [SiswaController::class, 'prosesUbah'])->name('proses-ubah-siswa');
    Route::get('/ubah-siswa', [SiswaController::class, 'ubah'])->name('ubah-siswa');
    Route::get('/hapus-siswa', [SiswaController::class, 'hapus'])->name('hapus-siswa');

    // data ekstra
    Route::get('/data-ekstra', [EkstraController::class, 'index'])->name('data-ekstra');
    Route::get('/tambah-ekstra', [EkstraController::class, 'tambah'])->name('tambah-ekstra');
    Route::post('/proses-tambah-ekstra', [EkstraController::class, 'prosesTambah'])->name('proses-tambah-ekstra');
    Route::get('/hapus-ekstra', [SiswaController::class, 'hapus'])->name('hapus-ekstra');

    // data kriteria
    Route::get('/data-kriteria', [KriteriaController::class, 'index'])->name('data-kriteria');
    Route::get('/tambah-kriteria', [KriteriaController::class, 'tambah'])->name('tambah-kriteria');
    Route::post('/proses-tambah-kriteria', [KriteriaController::class, 'prosesTambah'])->name('proses-tambah-kriteria');
    Route::get('/hapus-kriteria', [KriteriaController::class, 'hapus'])->name('hapus-kriteria');

    // proses
    Route::get('/proses', [ProsesController::class, 'index'])->name('proses');

    // pertanyaan
    Route::get('/pertanyaan', [PertanyaanController::class, 'index'])->name('pertanyaan');
    Route::get('/tambah-pertanyaan', [PertanyaanController::class, 'tambah'])->name('tambah-pertanyaan');
    Route::post('/proses-tambah-pertanyaan', [PertanyaanController::class, 'prosesTambah'])->name('proses-tambah-pertanyaan');
    Route::post('/proses-ubah-pertanyaan', [PertanyaanController::class, 'prosesubah'])->name('proses-ubah-pertanyaan');
    Route::get('/hapus-pertanyaan', [PertanyaanController::class, 'hapus'])->name('hapus-pertanyaan');
    Route::get('/ubah-pertanyaan', [PertanyaanController::class, 'ubah'])->name('ubah-pertanyaan');

});

// // profile
// Route::get('/proses-', [SiswaController::class, 'index'])->name('data-analisis');
Route::middleware([CekSiswa::class])->group(function () {
    //siswa soal
    Route::get('/soal', [SoalController::class, 'index'])->name('soal');
    Route::post('/simpan-soal', [SoalController::class, 'simpan'])->name('simpan-soal');
});

Route::get('/login', [LoginController::class, 'index'])->name('login');
Route::post('/proses-login', [LoginController::class, 'prosesLogin'])->name('proses-login');
Route::get('/proses-logout', [LoginController::class, 'prosesLogout'])->name('proses-logout');




