@extends('siswa/template')
@section('content')
<div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            @if ($cekSiswa != 0)
            <div class="card-body border-top">
                <h5 class="card-title">Terima Kasih</h5>
                <div class="alert alert-danger" role="alert">
                    <h4 class="alert-heading">Kamu sudah selesai mengerjakan soal</h4>
                    <p>Terima kasih sudah berpartisipasi dalam mengerjakan soal penelitian tentang Ekstrakulikuler Terfavorit</p>
                    <hr>
                </div>
            </div>
            @else
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Soal</h4>
                        <div class="ms-auto text-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Data Kriteria</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>            
            <form method="POST" action="{{ route('simpan-soal') }}">
                @csrf
            <div class="container-fluid">
                @foreach ($ekstra as $item)  
                <div class="card">
                        <div class="card-body">
                            <h5 class="card-title" style="color: red;">Ekstrakulikuler {{$item->nama_ekstra}}</h5>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Pertanyaan</th>
                                            <th>Setuju (S)</th>
                                            <th>Kurang Setuju (KS)</th>
                                            <th>Tidak setuju (TS)</th>
                                            <th>Sangat Tidak Setuju (STS)</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($soal as $s)
                                        <tr>
                                            <td><h5>{{$s->pertanyaan}}</h5></td>
                                            <td>
                                            <input type="radio" class="form-check-input"
                                            id="customControlValidation1" name="radioid[{{$item->id.$s->id}}]" value="40" required>
                                            </td>
                                            <td>
                                            <input type="radio" class="form-check-input"
                                            id="customControlValidation1" name="radioid[{{$item->id.$s->id}}]" value="30" required>
                                            </td>
                                            <td>
                                            <input type="radio" class="form-check-input"
                                            id="customControlValidation1" name="radioid[{{$item->id.$s->id}}]" value="20" required>
                                            </td>
                                            <td>
                                            <input type="radio" class="form-check-input"
                                            id="customControlValidation1" name="radioid[{{$item->id.$s->id}}]" value="10" required>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    @endforeach
                    <div class="d-flex justify-content-center">
                        <button type="submit" class="btn btn-primary" style="margin-bottom: 60px;">Simpan Jawaban</button>
                    </div>
                </div>
                </form>
                @endif
</div>
@endsection