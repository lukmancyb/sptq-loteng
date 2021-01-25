<?php $this->load->view('layouts/partials/header'); ?>

<title><?= isset($title) ? $title : "Gallery"; ?></title>
<!-- Magnific Popup CSS -->
<link rel="stylesheet" href="<?php echo base_url() . 'theme/css/magnific-popup.css' ?>">
<!-- Image Hover CSS -->
<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'theme/css/normalize.css' ?>"/>
<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'theme/css/set2.css' ?>"/>

<!-- Masonry Gallery -->
<link href="<?php echo base_url() . 'theme/css/animated-masonry-gallery.css' ?>" rel="stylesheet" type="text/css"/>
<!-- Main CSS -->
<link href="<?php echo base_url() . 'theme/css/style.css' ?>" rel="stylesheet">
<?php $this->load->view('layouts/partials/navbar'); ?>


<!--    START HEADER-->
<!--//END HEADER -->
<!--============================= Gallery =============================-->
<div class="gallery-wrap">
    <div class="container">
        <!-- Style 2 -->
        <div class="row">
            <div class="col-md-12">
                <h3 class="gallery-style">Gallery Photo</h3>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md-12">
                <div id="gallery">
                    <div id="gallery-content">
                        <div id="gallery-content-center">
                            <?php foreach ($all_galeri->result() as $row) : ?>
                                <a href="<?php echo base_url() . 'assets/images/' . $row->galeri_gambar; ?>"
                                   class="image-link2">
                                    <img src="<?php echo base_url() . 'assets/images/' . $row->galeri_gambar; ?>"
                                         class="all img-fluid" alt="#"/>
                                </a>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--//End Style 2 -->

    </div>
</div>
<!--//End Gallery -->
<!--============================= FOOTER =============================-->
<?php $this->load->view('layouts/partials/footer.php'); ?>
</body>

</html>
