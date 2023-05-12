<?php

namespace App\Http\Controllers;

use App\Models\HasilModel;
use App\Models\EkstraModel;
use Illuminate\Http\Request;
use App\Models\KriteriaModel;
use App\Models\AlternatifModel;
use App\Models\JawabSiswaModel;

class ProsesController extends Controller
{

    public function index(){
        //  JawabSiswaModel::getQuery()->delete();
        $alternatif = AlternatifModel::get();
        $kriteria = KriteriaModel::where('is_active', '1')->get();
        $ekstra = EkstraModel::where('is_active', '1')->get();
        HasilModel::getQuery()->delete();

        function nilaiCrips($nilai){
            switch (true) {
            case ($nilai <= 30):
                return 1;
                break;
            case ($nilai <= 60):
                return 2;
                break;
            case ($nilai <= 80):
                return 3;
                break;
            case ($nilai <= 100):
                return 4;
                break;
            }
        }
        for ($i=1; $i <= count($kriteria); $i++) { 
            $kris[$i] = [];
        }
        //matriks
        foreach ($ekstra as $e) {
            foreach ($kriteria as $k) {
                foreach ($alternatif as $a) {
                    if ($e->id == $a->ekstra_id &&  $k->id == $a->kriteria_id) {
                        array_push($kris[$k->id], nilaiCrips($a->nilai));
                    }
                }
            }
        }

        //hasil
        foreach ($ekstra as $e) {
            $jum=0;
            foreach ($kriteria as $k) {
                foreach ($alternatif as $a) {
                    if ($e->id == $a->ekstra_id &&  $k->id == $a->kriteria_id) {
                        $jum = (nilaiCrips($a->nilai)/max($kris[$k->id]))*$k->bobot+$jum;
                    }
                }
            }
            HasilModel::create(['ekstra_id' => $e->id, 'total' => $jum, 'metode' => 1]);
            $jum=0;
        }
        $hasil_saw = HasilModel::where('metode', 1)->orderByDesc('total')->get();

        // Fuzzy
        $data_fuzzy = []; 
        $ttl_fuzzy = 0;
        foreach ($ekstra as $e) {
            $jum=0;
            foreach ($kriteria as $k) {
                foreach ($alternatif as $a) {
                    if ($e->id == $a->ekstra_id &&  $k->id == $a->kriteria_id) {
                        $jum = round(pow(nilaiCrips($a->nilai), ($k->bobot/100)), 3)+$jum;
                    }
                }
            }
            array_push($data_fuzzy, ['ekstra_id' => $e->id, 'total' => $jum]);
            $ttl_fuzzy = $ttl_fuzzy+$jum;
            $jum=0;
        }

        $ko = 0;
        foreach ($data_fuzzy as $key) {
            HasilModel::create(['ekstra_id' => $key['ekstra_id'], 'total' => ($key['total']/$ttl_fuzzy), 'metode' => 2]);
        }
        $hasil_fuzzy = HasilModel::where('metode', 2)->orderByDesc('total')->get();

        $data = [
                    'menu' => 'proses',
                    'alternatif' => $alternatif,
                    'kriteria'  => $kriteria,
                    'ekstra'  => $ekstra,
                    'hasil_saw'  => $hasil_saw,
                    'hasil_fuzzy'  => $hasil_fuzzy,
                ];
        return view('admin/proses', $data);
    }
}
