
<?php echo $this->extend('layout/template'); ?>
<?php echo $this->section('css'); ?>
<link rel="stylesheet" href="<?php echo base_url().'/assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css'; ?>">
<link rel="stylesheet" href="<?php echo base_url().'/assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css'; ?>">
<link rel="stylesheet" href="<?php echo base_url().'/assets/plugins/datatables-buttons/css/buttons.bootstrap4.min.css'; ?>">
<?php echo $this->endSection(); ?>

<?php echo $this->section('contents'); ?>
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
            <div class="col-sm-6">
                <h1><?php echo $container_fluid; ?></h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                </ol>
            </div>
            </div>
        </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                <div class="col-12">
                    <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">DataTable with default features</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Golongan Ruang</th>
                            <th>Aksi</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($golruang as $gr) : ?>
                            <tr>
                            <td></td>
                            <td><?php echo $gr['nama_gol_ruang']; ?></td>
                            <td></td>
                            </tr>
                        <?php endforeach; ?>
                        </tbody>
                        </table>
                    </div>
                    <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>

<?php echo $this->endSection(); ?>

<?php echo $this->section('js'); ?>

<!-- DataTables  & Plugins -->
<script src="<?php echo base_url().'/assets/plugins/datatables/jquery.dataTables.min.js'; ?>"></script>
<script src="<?php echo base_url().'/assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js'; ?>"></script>
<script src="<?php echo base_url().'/assets/plugins/datatables-responsive/js/dataTables.responsive.min.js'; ?>"></script>
<script src="<?php echo base_url().'/assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js'; ?>"></script>
<script src="<?php echo base_url().'/assets/plugins/datatables-buttons/js/dataTables.buttons.min.js'; ?>"></script>
<script src="<?php echo base_url().'/assets/plugins/datatables-buttons/js/buttons.bootstrap4.min.js'; ?>"></script>
<script src="<?php echo base_url().'/assets/plugins/jszip/jszip.min.js'; ?>"></script>
<script src="<?php echo base_url().'/assets/plugins/pdfmake/pdfmake.min.js'; ?>"></script>
<script src="<?php echo base_url().'/assets/plugins/pdfmake/vfs_fonts.js'; ?>"></script>
<script src="<?php echo base_url().'/assets/plugins/datatables-buttons/js/buttons.html5.min.js'; ?>"></script>
<script src="<?php echo base_url().'/assets/plugins/datatables-buttons/js/buttons.print.min.js'; ?>"></script>
<script src="<?php echo base_url().'/assets/plugins/datatables-buttons/js/buttons.colVis.min.js'; ?>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url().'/assets/dist/js/demo.js'; ?>"></script>
<!-- Page specific script -->
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
<?php echo $this->endSection(); ?>

