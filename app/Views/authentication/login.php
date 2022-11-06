    <?php echo $this->extend('layout/template-authentication'); ?>

    <?php echo $this->section('contents'); ?>
    <div class="card card-outline ">
        <div class="card-header text-center">
            <p class="h6 mt-2 text-muted"> <b>Masuk Untuk Menggunakan E-Cuti</b> </p>
        </div>
        <div class="card-body login-card-body">
            <form action="" method="post">
                <div class="form-group">
                    <div class="input-group mb-1">
                        <input type="text" name="nip" class="form-control" placeholder="Nomor Identitas Pegawai">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-user"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group mb-1">
                        <input type="password" name="password" class="form-control" placeholder="Kata Sandi">
                        <div class="input-group-append">
                            <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6 mt-2">
                        <a href="<?php echo base_url().'/forgot-password'; ?>">Lupa Kata Sandi?</a>
                    </div>
                    <!-- /.col -->
                    <div class="col-6">
                        <button type="submit" class="btn btn-primary btn-block"> <i class="fas fa-sign-in-alt fa-fw"></i> Masuk</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>
        </div>
        <!-- /.card-body -->
    </div>
    <?php echo $this->endSection(''); ?>