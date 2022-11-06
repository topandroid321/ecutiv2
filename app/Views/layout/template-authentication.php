<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title> <?php echo $title; ?> </title>
  <link rel="icon" type="image/x-icon" href="<?php echo base_url().'/favicon.ico'; ?>" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback" />
  <link rel="stylesheet" href="<?php echo base_url().'/assets/plugins/fontawesome-free/css/all.min.css'; ?>" />
  <link rel="stylesheet" href="<?php echo base_url().'/assets/dist/css/adminlte.min.css'; ?>" />
</head>
<body class="hold-transition login-page" ondragstart="return false;" ondrop="return false;" />
  <div class="text-center mb-2">
      <img src="<?php echo base_url().'/assets/dist/img/logo_mari.png'; ?>" style="max-width: 85px;max-heigth: auto;"   alt="" class="mb-2">
      <p class="h5 text-secondary text-bold"> Pengadilan Negeri Jakarta Utara Kelas I A Khusus </p>
  </div>
  <div class="login-box">
    <?php echo $this->renderSection('contents'); ?>
  </div>
  <div class="fixed-bottom mb-3 text-secondary">
    <footer class="footer">
        <strong class="ml-5"> Hak Cipta <a href=""> E-Cuti </a> &copy; <?php echo date('Y'); ?> </strong>
      <div class="mr-5 float-right d-none d-sm-inline-block">
        <strong> Dibuat Dengan <i class="fas fa-heart text-danger"></i> </strong>
      </div>
    </footer>
  </div>
  <script src="<?php echo base_url().'/assets/plugins/jquery/jquery.min.js'; ?>"></script>
  <script src="<?php echo base_url().'/assets/plugins/bootstrap/js/bootstrap.bundle.min.js'; ?>"></script>
  <script src="<?php echo base_url().'/assets/dist/js/adminlte.min.js'; ?>"></script>
</body>
</html>