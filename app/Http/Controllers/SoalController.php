<?php

namespace App\Http\Controllers;

use App\Models\EkstraModel;
use Illuminate\Http\Request;
use App\Models\KriteriaModel;
use App\Models\AlternatifModel;
use App\Models\JawabSiswaModel;
use App\Models\PertanyaanModel;

class SoalController extends Controller
{
    //
    public function index(){
        $cekSiswa = JawabSiswaModel::where('siswa_id', session()->get('id_user'))->count();
        $data = [
                    'menu'  => 'soal',
                    'aksi' => 'tampil',
                    'soal' => PertanyaanModel::get(),
                    'ekstra' => EkstraModel::get(),
                    'cekSiswa' => $cekSiswa
                ];
        return view('siswa/soal', $data);
    }
    public function simpan(Request $req){
        JawabSiswaModel::getQuery()->delete();
        foreach (EkstraModel::get() as $key) {
            foreach (PertanyaanModel::get() as $s) {
                $cek = JawabSiswaModel::create(['siswa_id' => session()->get('id_user'), 'pertanyaan_id' => $s->id, 'ekstra_id' => $key->id, 'nilai' => $req->radioid[$key->id.$s->id]]);
            }
        }
    }
    
    public function data_update(){
        $ekstra = EkstraModel::get();
        $soal = PertanyaanModel::get();
        $jawab = JawabSiswaModel::get();
        $kriteria = KriteriaModel::get();
        $jml_siswa = 2;

        $data_jawab = [];
        $jum = 0;
        $jum2 = 0;
        AlternatifModel::getQuery()->delete();
        foreach ($ekstra as $e) {
            foreach ($kriteria as $k) {
                        foreach ($soal as $s) {
                            if ($s->kriteria_id == $k->id) {
                                foreach ($jawab as $j) {
                                    if ($j->pertanyaan_id == $s->id && $e->id == $j->ekstra_id) {
                                        $jum = $jum+($j->nilai);
                                    }
                                }
                                $jum2 = $jum2+($jum/4); 
                                $jum = 0;
                            }
                    }
                    if ($jum2 != 0) {
                        AlternatifModel::create(['ekstra_id' => $e->id, 'kriteria_id' => $k->id, 'nilai' => ($jum2/$jml_siswa)]);
                    }
                    echo "ekstra : ".$e->nama_ekstra." kriteria ".($k->nama_kriteria)." nilai ".($jum2/$jml_siswa)."<br>";
                    $jum2 = 0;
            }
        }
    }
}
