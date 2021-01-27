<?php $this->load->view('layouts/partials/header'); ?>
<title><?= isset($title) ? $title : "Prestasi" ;?></title>
<?php $this->load->view('layouts/partials/navbar'); ?>


<!--//END HEADER -->

<section class="our-teachers">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="mb-5">Prestasi</h2>
            </div>
        </div>
        <div class="row">
            <?php foreach ($data->result() as $row) : ?>
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="admission_insruction">
                    <?php if (empty($row->img_url)): ?>
                    <img src="<?php echo base_url() . 'assets/images/blank.png'; ?>" class="img-fluid" alt="#">
                    <?php else: ?>
                    <img src="<?php echo base_url() . 'assets/images/prestasi/' . $row->img_url; ?>" class="img-fluid"
                        alt="#">
                    <?php endif; ?>
                    <p class="text-center mt-3"><span><?php echo $row->nama_prestasi; ?></span><br>
                    <?php echo $row->keterangan_prestasi; ?>
                        <br>
                        <?php echo $row->tahun_prestasi; ?></p>
                </div>
            </div>
            <?php endforeach; ?>
        </div>
        <!-- End row -->
        <nav><?php echo $page; ?></nav>
    </div>
</section>

<!--//End Style 2 -->
<!--============================= FOOTER =============================-->
<?php $this->load->view('layouts/partials/footer.php'); ?>
</body>

</html>