<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\KriteriaModel;
use App\Models\PertanyaanModel;

class PertanyaanController extends Controller
{
    public function index(){
        $data = [
                    'menu' => 'pertanyaan',
                    'aksi' => 'tampil',
                    'pertanyaan' => PertanyaanModel::where('is_active', '1')->orderBy('kriteria_id')->get()
                ];
        return view('admin/pertanyaan', $data);
    }
    public function tambah(){
        $data = [
                    'menu' => 'pertanyaan',
                    'aksi' => 'tambah',
                    'kriteria' => KriteriaModel::where('is_active', '1')->get()
                ];
        return view('admin/pertanyaan', $data);
    }
    public function prosesUbah(Request $req){
        $data = [
            'pertanyaan' => $req->nama, 
            'kriteria_id' => $req->kriteria, 
        ];
        $cek = PertanyaanModel::where('id', $req->id)->update($data);
        
        return to_route('pertanyaan');
    }
    public function prosesTambah(Request $req){
        PertanyaanModel::create(['pertanyaan' => $req->nama,'kriteria_id' => $req->kriteria, 'is_active' => '1']);
        return to_route('pertanyaan');
    }
    public function hapus(Request $req){
        PertanyaanModel::where('id', $req->id)->update(['is_active' => '0']);
        return to_route('pertanyaan');
    }
    public function ubah(Request $req){
        $data = [
                    'menu' => 'pertanyaan',
                    'aksi' => 'ubah',
                    'kriteria' => KriteriaModel::where('is_active', '1')->get(),
                    'pertanyaan' => PertanyaanModel::where('id', $req->id)->get()
                ];
        return view('admin/pertanyaan', $data);
    }
} 
