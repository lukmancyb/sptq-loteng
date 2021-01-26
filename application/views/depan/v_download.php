<?php $this->load->view('layouts/partials/header');?>
<title><?= isset($title) ? $title : "Download"; ?></title>
<?php $this->load->view('layouts/partials/navbar');?>


<!--//END HEADER -->
<section class="contact" style="margin-bottom:50px;">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="contact-title">
          <h2>Download</h2>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="table-responsive">
        <table id="example1" class="table table-striped" style="font-size:12px;">
            <thead>
              <tr>
                <th>No</th>
                <th>Files</th>
                <th>Tanggal</th>
                <th>Oleh</th>
                <th style="text-align:right;">Aksi</th>
              </tr>
            </thead>
            <tbody>
              <?php
                      $no=1;
                      foreach ($data->result() as $row):
                    ?>
              <tr>
                <td><?php echo $no++;?></td>
                <td><?php echo $row->file_judul;?></td>
                <td><?php echo $row->tanggal;?></td>
                <td><?php echo $row->file_oleh;?></td>
                <td style="text-align:right;"><a href="<?php echo site_url('download/get_file/'.$row->file_id);?>"
                    class="btn btn-info">Download</a></td>
              </tr>
              <?php endforeach;?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>
<!--//END  ABOUT IMAGE -->

<!--============================= FOOTER =============================-->
<?php $this->load->view('layouts/partials/footer.php');?>

<!--============================= CUSTOM JAVASCRIPT OR JAVASCRIPT PAGE HERE =============================-->

<script src="<?php echo base_url().'theme/js/jquery.dataTables.min.js'?>"></script>
<script src="<?php echo base_url().'theme/js/dataTables.bootstrap4.min.js'?>"></script>

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
</body>

</html>