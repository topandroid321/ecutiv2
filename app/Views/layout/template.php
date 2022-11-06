<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?php echo $title; ?></title>
  <link rel="icon" type="image/x-icon" href="<?php echo base_url().'/favicon.ico'; ?>" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback" />
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url().'/assets/'; ?>plugins/fontawesome-free/css/all.min.css" />
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url().'/assets/'; ?>dist/css/adminlte.min.css" />
  <?php echo $this->renderSection('css'); ?>

  
</head>
<body class="control-sidebar-slide-open text-sm layout-fixed" />
<!-- Site wrapper -->
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light border-bottom-0">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">15</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 new messages
            <span class="float-right text-muted text-sm">3 mins</span>
          </a>
        </div>
      </li>
      <li class="nav-item">
        <a href="#" class="nav-link" data-toggle="modal" data-target="#modal-default">
            <i class="nav-icon fas fa-sign-out-alt"></i> Keluar
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4 sidebar-no-expand">
    <!-- Brand Logo -->
    <a href="" class="brand-link  text-center text-sm">
      <img src="<?php echo base_url().'/assets/dist/img/e-cuti.png'; ?>" alt=""  style="height:38px;width:100;" draggable="false" style="opacity: .8">
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) -->
      <div class="user-panel mt-2 pb-3 mb-2 d-flex">
        <div class="image mt-1 pl-0">
            <img src="<?php echo base_url().'/assets/dist/img/foto.jpg'; ?>" draggable="false" style="width:45px;height:45px;" class="img-circle" alt="">
        </div>
        <div class="info mt-1 pl-1">
            <a class="d-block">Fikri Oktaviano A.Md.Kom</a>
            <a class="d-block small"> <sup>IT Support</sup></a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column text-sm nav-child-indent text-sm" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p> Dashboard </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-database"></i>
              <p>
                Master Data Pegawai
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./index.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Data Pegawai</p>
                  <i class="right fas fa-angle-left"></i>
                </a>
                <ul class="nav nav-treeview">
                  <li class="nav-item">
                    <a href="pages/charts/chartjs.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Data Golongan Ruang</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="pages/charts/flot.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Data Jabatan</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="pages/charts/inline.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Data Jenis Pegawai</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="pages/charts/uplot.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Data Unit Kerja</p>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="pages/charts/uplot.html" class="nav-link">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Data Pegawai</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="nav-item">
                <a href="./index.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Data Hak Cuti Pegawai</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-cogs"></i>
              <p>
                Pengelolaan Pimpinan
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="./index.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Kelola Atasan Langsung</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Kelola Pejabat Berwenang</p>
                </a>
              </li>
            </ul>
          </li>
          
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <?php echo $this->renderSection('contents'); ?>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
        <strong> Dibuat Dengan <i class="fas fa-heart text-danger"></i> </strong>
    </div>
    <strong> Hak Cipta <a href=""> E-Cuti </a> &copy; <?php echo date('Y'); ?> </strong>
  </footer>
</div>
<!-- ./wrapper -->
<!-- Modal Logout -->
<div class="modal fade" id="modal-default" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title"><i class="fas fa-exclamation-triangle fa-fw"></i> Siap untuk Meninggalkan?</h5>
        </div>
        <div class="modal-body text-justify">
          <p> <b>Fikri OKtaviano A.Md.Kom</b> Pilih "Keluar" di bawah jika Anda siap untuk mengakhiri sesi Anda saat ini. </p>
        </div>
        <div class="modal-footer justify-content-between">
          <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
          <a href="<?php echo base_url() . 'authentication/logout'; ?>" class="btn btn-primary">
            <i class="fas fa-sign-out-alt"></i> Keluar
          </a>
        </div>
      </div>
    </div>
  </div>


  
  <!-- jQuery -->
  <script src="<?php echo base_url().'/assets/'; ?>plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="<?php echo base_url().'/assets/'; ?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <script src="<?php echo base_url().'/assets/'; ?>dist/js/adminlte.min.js"></script>
  <?php echo $this->renderSection('js'); ?>
  
<script src="<?php echo base_url().'/assets/'; ?>dist/js/demo.js"></script>
</body>
</html>

