    <?php echo $this->extend('layout/template-authentication'); ?>

    <?php echo $this->section('contents'); ?>
    <div class="card card-outline">
        <div class="card-header text-center">
            <p class="h6 mt-2 text-muted"> <b>Lupa Kata Sandi E-Cuti</b> </p>
        </div>
        <div class="card-body login-card-body">
            <p class="text-justify small"> Cukup masukkan alamat email Anda yang sudah terdaftar pada SIKEP dan kami akan mengirimkan tautan untuk mengatur ulang kata sandi Anda! </p>
            <form action="" method="post">
                <div class="form-group">
                    <div class="input-group mb-1">
                        <input type="email" name="email" class="form-control" placeholder="Email">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-envelope"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6 mt-2">
                        <a href="<?php echo base_url().'/';?>"> Kembali </a>
                    </div>
                    <div class="col-6">
                        <button type="submit" class="btn btn-primary btn-block"> <i class="fas fa-paper-plane fa-fw"></i> Kirim </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <?php echo $this->endSection(''); ?>