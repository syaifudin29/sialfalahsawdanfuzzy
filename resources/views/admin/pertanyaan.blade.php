@extends('admin/template')
@section('content')
<div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Data Pertanyaan</h4>
                        <div class="ms-auto text-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Data Pertanyaan</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="ms-auto text-end" style="margin-top: 10px;">
                    <a href="{{URL::route('tambah-pertanyaan')}}" class="btn btn-primary"><i class="fas fa-plus-circle"></i> tambah data</a>
                </div>
            </div>
            <div class="container-fluid">
                @if ($aksi == 'tampil')
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Tabel Pertanyaan</h5>
                        <div class="table-responsive">
                            <table id="zero_config" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Pertanyaan</th>
                                        <th>Kriteria</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $no=1;
                                    @endphp
                                    @foreach ($pertanyaan as $item)
                                    <tr>
                                        <td>{{$no++}}</td>
                                        <td>{{$item->pertanyaan}}</td>
                                        <td>{{$item->kriteria->nama_kriteria}}</td>
                                        <td>
                                            <a href="{{ route('ubah-pertanyaan', ['id'=>$item->id]) }}" class="btn btn-outline-primary"><i class="fas fa-edit"></i></a>
                                            <a href="{{ route('hapus-pertanyaan', ['id'=>$item->id]) }}" class="btn btn-outline-danger"><i class="fas fa-trash"></i></a>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>No</th>
                                        <th>Pertanyaan</th>
                                        <th>Kriteria</th>
                                        <th>Action</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
                @elseif($aksi == 'tambah')
                {{-- form tambah --}}
                <div class="card">
                    <form method="post" action="{{URL::route('proses-tambah-pertanyaan')}}">
                        @csrf
                        <div class="card-body">
                            <h5 class="card-title">Form Tambah</h5>
                                <div class="form-group row">
                                    <label for="nama"
                                        class="col-sm-3 text-end control-label col-form-label">Pertanyaan</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="nama" id="nama">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="kelas"
                                        class="col-sm-3 text-end control-label col-form-label">Kriteria</label>
                                    <div class="col-sm-9">
                                        <select name="kriteria" id="kriteria" class="form-control">
                                            @foreach ($kriteria as $item)
                                                <option value="{{$item->id}}">{{$item->nama_kriteria}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                        </div>
                        <div class="border-top">
                            <div class="card-body">
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <a href="{{URL::route('pertanyaan')}}" class="btn btn-secondary">Batal</a>
                            </div>
                        </div>
                    </form>
                </div>
                @else
                {{-- form edit --}}
                <div class="card">
                    <form method="post" action="{{URL::route('proses-ubah-pertanyaan')}}">
                        @csrf
                        <input type="hidden" name="id" value="{{$pertanyaan[0]->id}}">
                        <div class="card-body">
                            <h5 class="card-title">Form Edit</h5>
                                <div class="form-group row">
                                    <label for="nama"
                                        class="col-sm-3 text-end control-label col-form-label">Pertanyaan</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="nama" id="nama" value="{{$pertanyaan[0]->pertanyaan}}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="kelas"
                                        class="col-sm-3 text-end control-label col-form-label">Kriteria</label>
                                    <div class="col-sm-9">
                                        <select name="kriteria" id="kriteria" class="form-control">
                                            @foreach ($kriteria as $item)
                                                @php
                                                    if ($item->id == $pertanyaan[0]->kriteria_id) {
                                                        $select = 'selected';
                                                    } else {
                                                        $select = '';
                                                    }
                                                    
                                                @endphp
                                                <option value="{{$item->id}}" {{$select}}>{{$item->nama_kriteria}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                        </div>
                        <div class="border-top">
                            <div class="card-body">
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <a href="{{URL::route('pertanyaan')}}" class="btn btn-secondary">Batal</a>
                            </div>
                        </div>
                    </form>
                </div>
                @endif
            </div>
</div>
@endsection