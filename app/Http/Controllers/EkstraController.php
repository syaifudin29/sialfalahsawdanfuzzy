<?php

namespace App\Http\Controllers;

use App\Models\EkstraModel;
use Illuminate\Http\Request;

class EkstraController extends Controller
{
    public function index(){
        $data = [
                    'menu'      => 'ekstra',
                    'aksi'      => 'tampil',
                    'ekstra'    => EkstraModel::where('is_active', '1')->get()
                ];
        return view('admin/ekstra', $data);
    }
    public function tambah(){
        $data = [
                    'menu'      => 'ekstra',
                    'aksi'      => 'tambah'
                ];
        return view('admin/ekstra', $data);
    }
    public function prosesTambah(Request $req){
        EkstraModel::create(['nama_ekstra' => $req->nama, 'is_active' => '1']);
        return to_route('data-ekstra');
    }
    public function hapus(Request $req){
        EkstraModel::where('id', $req->id)->update(['is_active' => '0']);
        return to_route('data-ekstra');
    }
}
