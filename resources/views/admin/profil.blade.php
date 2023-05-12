@extends('admin/template')
@section('content')
<div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Profil</h4>
                        <div class="ms-auto text-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Profil</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="card">
                    <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Ubah Username</h5>
                                    <div class="form-group row">
                                        <label for="nama"
                                            class="col-sm-3 text-end control-label col-form-label">Username</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="nama" id="nama" value="Julia Sofia" disabled>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="nama"
                                            class="col-sm-3 text-end control-label col-form-label">Username Baru</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="nama" id="nama">
                                        </div>
                                    </div>
                                     <div class="form-group row">
                                        <label for="nama"
                                            class="col-sm-3 text-end control-label col-form-label">Password</label>
                                        <div class="col-sm-9">
                                            <input type="password" class="form-control" name="nama" id="nama">
                                        </div>
                                    </div>
                            </div>
                            <div class="border-top">
                                <div class="card-body">
                                    <button type="button" class="btn btn-primary">Ubah</button>
                                </div>
                            </div>
                    </div>
                </div>
                 <div class="card">
                    <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Ubah Password</h5>
                                    <div class="form-group row">
                                        <label for="nama"
                                            class="col-sm-3 text-end control-label col-form-label">Password baru</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="nama" id="nama">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="nama"
                                            class="col-sm-3 text-end control-label col-form-label">Password lama</label>
                                        <div class="col-sm-9">
                                            <input type="password" class="form-control" name="nama" id="nama">
                                        </div>
                                    </div>
                            </div>
                            <div class="border-top">
                                <div class="card-body">
                                    <button type="button" class="btn btn-primary">Ubah</button>
                                </div>
                            </div>
                    </div>
                </div>
</div>
@endsection