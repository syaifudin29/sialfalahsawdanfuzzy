<?php

namespace App\Http\Controllers;

use App\Models\SiswaModel;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\JawabSiswaModel;

class SiswaController extends Controller
{
    public function index(){
        $data = [
                    'menu'  => 'siswa',
                    'aksi' => 'tampil',
                    'siswa' => SiswaModel::where('is_active', '1')->get(),
                    'jawab' => JawabSiswaModel::select('siswa_id')->distinct()->get()
                ];
        return view('admin/siswa', $data);
    }
    public function tambah(){
        $data = [
                    'menu'  => 'siswa',
                    'aksi' => 'tambah',
                    'siswa' => SiswaModel::get(),
                ];
        return view('admin/siswa', $data);
    }
    public function prosesTambah(Request $req){
        $jmlSiswa = SiswaModel::count()+1;
        $pass = Str::random(5);
        $data = [
            'nama_siswa' => $req->nama, 
            'kelas' => $req->kelas, 
            'jen_kel' => $req->jen_kel,
            'password' => $pass,
            'status' => '0', 
            'is_active' => '1', 
            'username' => 'sis25'.$jmlSiswa
        ];
        $cek = SiswaModel::create($data);
        return to_route('data-siswa');
    }
    public function ubah(Request $req){
        $siswa = SiswaModel::where('id', $req->id)->get();
        $data = [
                    'menu'  => 'siswa',
                    'aksi' => 'ubah',
                    'siswa' => $siswa,
                ];
        return view('admin/siswa', $data);
    }
    public function prosesUbah(Request $req){
        $data = [
            'nama_siswa' => $req->nama, 
            'kelas' => $req->kelas, 
            'jen_kel' => $req->jen_kel,
        ];
        $cek = SiswaModel::where('id', $req->id)->update($data);
        return to_route('data-siswa');
    }
    public function hapus(Request $req){
        SiswaModel::where('id', $req->id)->update(['is_active' => '0']);
        return to_route('data-siswa');
    }
}
