@extends('admin/template')
@section('content')
<div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Data Siswa</h4>
                        <div class="ms-auto text-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Data Siswa</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="ms-auto text-end" style="margin-top: 10px;">
                    <a href="{{URL::route('tambah-siswa')}}" class="btn btn-primary"><i class="fas fa-plus-circle"></i> tambah data</a>
                </div>
            </div>
            <div class="container-fluid">
                @if ($aksi == 'tampil')
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Tabel Siswa</h5>
                        <div class="table-responsive">
                            <table id="zero_config" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>Nama</th>
                                        <th>Kelas</th>
                                        <th>Jenis Kelamin</th>
                                        <th>Username</th>
                                        <th>Password</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($siswa as $item)
                                        <tr>
                                        <td>{{$item->nama_siswa}}</td>
                                        <td>{{$item->kelas}}</td>
                                        <td>{{$item->jen_kel}}</td>
                                        <td>{{$item->username}}</td>
                                        <td>{{$item->password}}</td>
                                        @foreach ($jawab as $j)
                                            @if ($item->id == $j->siswa_id)
                                                <td><span class="badge bg-success">Sudah</span></td>
                                            @else
                                                <td><span class="badge bg-danger">Belum</span></td>  
                                            @endif
                                        @endforeach
                                        <td>
                                            <a href="{{ route('ubah-siswa', ['id'=>$item->id]) }}" class="btn btn-outline-primary"><i class="fas fa-edit"></i></a>
                                            <a href="{{ route('hapus-siswa', ['id'=>$item->id]) }}" class="btn btn-outline-danger"><i class="fas fa-trash"></i></a>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Nama</th>
                                        <th>Kelas</th>
                                        <th>Jenis Kelamin</th>
                                        <th>Username</th>
                                        <th>Password</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
                @elseif ($aksi == 'tambah')
                {{-- form tambah --}}
                <div class="card">
                    <form method="post" action="{{URL::Route('proses-tambah-siswa')}}">
                        @csrf
                        <div class="card-body">
                            <h5 class="card-title">Form Tambah</h5>
                                <div class="form-group row">
                                    <label for="nama"
                                        class="col-sm-3 text-end control-label col-form-label">Nama Lengkap</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="nama" id="nama">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="kelas"
                                        class="col-sm-3 text-end control-label col-form-label">Kelas</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="kelas" name="kelas">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="jenkel"
                                        class="col-sm-3 text-end control-label col-form-label">Jenis Kelamin</label>
                                    <div class="col-md-9">
                                        <div class="form-check">
                                            <input type="radio" class="form-check-input"
                                                id="customControlValidation1" name="jen_kel" value="Laki-laki" required>
                                            <label class="form-check-label mb-0" for="customControlValidation1">Laki-laki</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="radio" class="form-check-input"
                                                id="customControlValidation2" name="jen_kel" value="Perempuan" required>
                                            <label class="form-check-label mb-0" for="customControlValidation2">Perempuan</label>
                                        </div>
                                    </div>
                                </div>
                        </div>
                        <div class="border-top">
                            <div class="card-body">
                                <button type="submit" class="btn btn-primary">Simpan</button>
                                <a href="{{URL::route('data-siswa')}}" class="btn btn-secondary">Batal</a>
                            </div>
                        </div>
                        </form>
                </div>
                @else
                {{-- form edit --}}
                <div class="card">
                        <form method="post" action="{{URL::Route('proses-ubah-siswa')}}">
                        @csrf
                        <input type="hidden" class="form-control" name="id" value="{{$siswa[0]->id}}">
                        <div class="card-body">
                            <h5 class="card-title">Form Edit</h5>
                                <div class="form-group row">
                                    <label for="nama"
                                        class="col-sm-3 text-end control-label col-form-label">Nama Lengkap</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="nama" id="nama" value="{{$siswa[0]->nama_siswa}}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="kelas"
                                        class="col-sm-3 text-end control-label col-form-label">Kelas</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="kelas" name="kelas" value="{{$siswa[0]->kelas}}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="jenkel"
                                        class="col-sm-3 text-end control-label col-form-label">Jenis Kelamin</label>
                                    <div class="col-md-9">
                                        <div class="form-check">
                                            <input type="radio" class="form-check-input"
                                                id="customControlValidation1" name="jen_kel"  value="Laki-laki" {{ $siswa[0]->jen_kel = 'Laki-laki' ? 'checked' : '' ; }} required>
                                            <label class="form-check-label mb-0" for="customControlValidation1">Laki-laki</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="radio" class="form-check-input"
                                                id="customControlValidation2"  name="jen_kel" value="Perempuan" {{ $siswa[0]->jen_kel = 'Perempuan' ? 'checked' : '' ; }}  required>
                                            <label class="form-check-label mb-0" for="customControlValidation2">Perempuan</label>
                                        </div>
                                    </div>
                                </div>
                        </div>
                        <div class="border-top">
                            <div class="card-body">
                                <button type="submit" class="btn btn-primary">Ubah</button>
                                <a href="{{URL::route('data-siswa')}}" class="btn btn-secondary">Batal</a>
                            </div>
                        </div>
                        </form>
                </div>                 
                @endif
            </div>
</div>
@endsection