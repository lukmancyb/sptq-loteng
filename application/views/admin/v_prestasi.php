<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?= isset($title) ? $title : "Prestasi"; ?> - LPTQ Kabupaten Lombok Tengah</title>

  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="shorcut icon" type="text/css" href="<?php echo base_url().'assets/images/favicon.png'?>">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/bootstrap/css/bootstrap.min.css'?>">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/font-awesome/css/font-awesome.min.css'?>">
  <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/plugins/datatables/dataTables.bootstrap.css'?>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/dist/css/AdminLTE.min.css'?>">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/dist/css/skins/_all-skins.min.css'?>">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/plugins/toast/jquery.toast.min.css'?>" />



</head>

<body class="hold-transition skin-blue sidebar-mini">
  <div class="wrapper">

    <?php
    $this->load->view('admin/v_header');
  ?>
    <!-- Left side column. contains the logo and sidebar -->
    <?php $this->load->view('layouts/partials/admin/sidebar');?>


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Data Prestasi
          <small></small>
        </h1>
        <ol class="breadcrumb">
          <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
          <li class="active">Prestasi</li>
        </ol>
      </section>

      <!-- Main content -->
      <section class="content">
        <div class="row">
          <div class="col-xs-12">
            <div class="box">

              <div class="box">
                <div class="box-header">
                  <a class="btn btn-success btn-flat" data-toggle="modal" data-target="#myModal"><span
                      class="fa fa-plus"></span> Add Prestasi</a>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-striped" style="font-size:13px;">
                    <thead>
                      <tr>
                        <th>Photo</th>
                        <!-- <th>NIS</th> -->
                        <th>Nama</th>
                        <th>Keterangan</th>
                        <th>Tahun</th>
                        <th style="text-align:right;">Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php if(isset($prestasi)) :?>
                      <?php foreach($prestasi->result() as $key => $value) :?>
                      <tr>
                        <td>
                          <?php if(isset($value->img_ur)):?>
                          <img width="40" height="40" class="img-circle"
                            src="<?php echo base_url().'assets/images/user_blank.png';?>">
                          <?php else :?>
                          <img width="40" height="40" class="img-circle"
                            src="<?php echo base_url().'assets/images/prestasi/'.$value->img_url;?>">
                          <?php endif;?>
                        </td>
                        <td><?= $value->nama_prestasi;?></td>
                        <td><?= $value->keterangan_prestasi;?></td>
                        <td><?= $value->tahun_prestasi;?></td>
                        <td style="text-align:right;">
                          <a class="btn" data-toggle="modal" data-target="#ModalEdit<?php echo $value->id;?>"><span
                              class="fa fa-pencil"></span></a>
                          <a class="btn" data-toggle="modal" data-target="#ModalHapus<?php echo $value->id;?>"><span
                              class="fa fa-trash"></span></a>
                        </td>

                      </tr>
                      <?php endforeach;?>
                      <?php endif;?>
                    </tbody>
                  </table>
                </div>
                <!-- /.box-body -->
              </div>
              <!-- /.box -->
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <?php $this->load->view('admin/v_footer');?>


  </div>
  <!-- ./wrapper -->

  <!--Modal Add Pengguna-->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><span
                class="fa fa-close"></span></span></button>
          <h4 class="modal-title" id="myModalLabel">Add Prestasi</h4>
        </div>
        <form class="form-horizontal" action="<?php echo base_url().'admin/prestasi/simpan_prestasi'?>" method="post"
          enctype="multipart/form-data">
          <div class="modal-body">

            <div class="form-group">
              <label for="inputUserName" class="col-sm-4 control-label">Nama</label>
              <div class="col-sm-7">
                <input type="text" name="nama_prestasi" class="form-control" id="inputUserName"
                  placeholder="Taufik Hidayat" required>
              </div>
            </div>

            <div class="form-group">
              <label for="inputUserName" class="col-sm-4 control-label">Keterangan</label>
              <div class="col-sm-7">
                <input type="text" name="keterangan_prestasi" class="form-control" id="inputUserName"
                  placeholder="Juara satu lomba .." required>
              </div>
            </div>

            <div class="form-group">
              <label for="inputUserName" class="col-sm-4 control-label">Tahun</label>
              <div class="col-sm-7">
                <input type="number" name="tahun_prestasi" class="form-control" id="inputUserName" placeholder="Tahun mendapatkan prestasi"
                  required>
              </div>
            </div>

            <div class="form-group">
              <label for="inputUserName" class="col-sm-4 control-label">Photo</label>
              <div class="col-sm-7">
                <input type="file" name="filefoto" />
              </div>
            </div>


          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary btn-flat" id="simpan">Simpan</button>
          </div>
        </form>
      </div>
    </div>
  </div>


  <?php foreach ($prestasi->result() as $i) :
                $id=$i->id;
                $nama=$i->nama_prestasi;
                $keterangan=$i->keterangan_prestasi;
                $tahun=$i->tahun_prestasi;
                $photo=$i->img_url;
            ?>

  <div class="modal fade" id="ModalEdit<?php echo $id;?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><span
                class="fa fa-close"></span></span></button>
          <h4 class="modal-title" id="myModalLabel">Edit Prestasi</h4>
        </div>
        <form class="form-horizontal" action="<?php echo base_url().'admin/prestasi/update_prestasi'?>" method="post"
          enctype="multipart/form-data">
          <div class="modal-body">
            <input type="hidden" name="id" value="<?php echo $id;?>" />
            <input type="hidden" value="<?php echo $photo;?>" name="img_url">

            <div class="form-group">
              <label for="inputUserName" class="col-sm-4 control-label">Nama</label>
              <div class="col-sm-7">
                <input type="text" name="nama_prestasi" value="<?php echo $nama;?>" class="form-control"
                  id="inputUserName" placeholder="Nama" required>
              </div>
            </div>

            <div class="form-group">
              <label for="inputUserName" class="col-sm-4 control-label">Keterangan Prestasi</label>
              <div class="col-sm-7">
                <input type="text" name="keterangan_prestasi" value="<?php echo $keterangan;?>" class="form-control"
                  id="inputUserName" placeholder="Keterangan" required>
              </div>
            </div>

            <div class="form-group">
              <label for="inputUserName" class="col-sm-4 control-label">Tahun</label>
              <div class="col-sm-7">
                <input type="text" name="tahun_prestasi" value="<?php echo $tahun;?>" class="form-control"
                  id="inputUserName" placeholder="Tahun mendapat prestasi" required>
              </div>
            </div>



            <div class="form-group">
              <label for="inputUserName" class="col-sm-4 control-label">Photo</label>
              <div class="col-sm-7">
                <input type="file" name="filefoto" />
              </div>
            </div>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary btn-flat" id="simpan">Simpan</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <?php endforeach;?>

  <?php foreach ($prestasi->result() as $i) :
              $id=$i->id;
              $nama=$i->nama_prestasi;
              $keterangan=$i->keterangan_prestasi;
              $tahun=$i->tahun_prestasi;
              $photo=$i->img_url;
            ?>
  <div class="modal fade" id="ModalHapus<?php echo $id;?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><span
                class="fa fa-close"></span></span></button>
          <h4 class="modal-title" id="myModalLabel">Hapus Prestasi</h4>
        </div>
        <form class="form-horizontal" action="<?php echo base_url().'admin/prestasi/hapus_prestasi'?>" method="post"
          enctype="multipart/form-data">
          <div class="modal-body">
            <input type="hidden" name="id" value="<?php echo $id;?>" />
            <input type="hidden" value="<?php echo $photo;?>" name="img_url">
            <p>Apakah Anda yakin mau menghapus Prestasi <b><?php echo $nama;?></b> ?</p>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary btn-flat" id="simpan">Hapus</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <?php endforeach;?>




  <!-- jQuery 2.2.3 -->
  <script src="<?php echo base_url().'assets/plugins/jQuery/jquery-2.2.3.min.js'?>"></script>
  <!-- Bootstrap 3.3.6 -->
  <script src="<?php echo base_url().'assets/bootstrap/js/bootstrap.min.js'?>"></script>
  <!-- DataTables -->
  <script src="<?php echo base_url().'assets/plugins/datatables/jquery.dataTables.min.js'?>"></script>
  <script src="<?php echo base_url().'assets/plugins/datatables/dataTables.bootstrap.min.js'?>"></script>
  <!-- SlimScroll -->
  <script src="<?php echo base_url().'assets/plugins/slimScroll/jquery.slimscroll.min.js'?>"></script>
  <!-- FastClick -->
  <script src="<?php echo base_url().'assets/plugins/fastclick/fastclick.js'?>"></script>
  <!-- AdminLTE App -->
  <script src="<?php echo base_url().'assets/dist/js/app.min.js'?>"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="<?php echo base_url().'assets/dist/js/demo.js'?>"></script>
  <script type="text/javascript" src="<?php echo base_url().'assets/plugins/toast/jquery.toast.min.js'?>"></script>
  <!-- page script -->
  <script>
    $(function () {
      $("#example1").DataTable();
      $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false
      });
    });
  </script>
  <?php if($this->session->flashdata('msg')=='error'):?>
  <script type="text/javascript">
    $.toast({
      heading: 'Error',
      text: "Password dan Ulangi Password yang Anda masukan tidak sama.",
      showHideTransition: 'slide',
      icon: 'error',
      hideAfter: false,
      position: 'bottom-right',
      bgColor: '#FF4859'
    });
  </script>

  <?php elseif($this->session->flashdata('msg')=='success'):?>
  <script type="text/javascript">
    $.toast({
      heading: 'Success',
      text: "Data Prestasi Berhasil disimpan ke database.",
      showHideTransition: 'slide',
      icon: 'success',
      hideAfter: false,
      position: 'bottom-right',
      bgColor: '#7EC857'
    });
  </script>
  <?php elseif($this->session->flashdata('msg')=='info'):?>
  <script type="text/javascript">
    $.toast({
      heading: 'Info',
      text: "Data Prestasi berhasil di update",
      showHideTransition: 'slide',
      icon: 'info',
      hideAfter: false,
      position: 'bottom-right',
      bgColor: '#00C9E6'
    });
  </script>
  <?php elseif($this->session->flashdata('msg')=='success-hapus'):?>
  <script type="text/javascript">
    $.toast({
      heading: 'Success',
      text: "Data Prestasi Berhasil dihapus.",
      showHideTransition: 'slide',
      icon: 'success',
      hideAfter: false,
      position: 'bottom-right',
      bgColor: '#7EC857'
    });
  </script>
  <?php else:?>

  <?php endif;?>
</body>

</html>