<?php $this->load->view('layouts/partials/header'); ?>
<title><?= isset($data->menu) ? $data->menu : "Page"; ?> - LPTQ Kabupaten Lombok Tengah</title>
<?php $this->load->view('layouts/partials/navbar'); ?>

<!--//END HEADER -->
<!--//END ABOUT IMAGE -->
<!--============================= WELCOME TITLE =============================-->
<section class="welcome_about">
    <div class="container">
        <div class="row">

            <div class="col-md-12">

                    <?= $data->content ? $data->content : "<i>Konten Masih Belum Tersedia</i>";?>
            </div>

        </div>
    </div>
</section>
<!--//END WELCOME TITLE -->
<!--============================= TESTIMONIAL =============================-->
<!-- <section class="testimonial">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Testimonial</h2>
            </div>
            <div class="col-md-12">
                <div class="single-item">
                    <div class="quote">
                        <i class="fa fa-quote-left" aria-hidden="true"></i>
                        <p class="quote_text">MSCHOOL benar-benar mengagumkan. Saya sangat senang bisa bergabung dengan
                            MSCHOOL dan menjadi siswa terbaik tahun 2018.</p>
                        <div class="testi-img_block">
                            <img src="<?php echo base_url() . 'theme/images/student-1.png' ?>" class="img-fluid"
                                 alt="#">
                            <p><span>Hernandez Alvaro</span>Siswa Terbaik 2018</p>
                        </div>
                    </div>
                    <div class="quote">
                        <i class="fa fa-quote-left" aria-hidden="true"></i>
                        <p class="quote_text">MSCHOOL benar-benar mengagumkan. Saya sangat senang bisa bergabung dengan
                            MSCHOOL dan menjadi siswa terbaik tahun 2017. </p>
                        <div class="testi-img_block">
                            <img src="<?php echo base_url() . 'theme/images/student-2.png' ?>" class="img-fluid"
                                 alt="#">
                            <p><span>Elanoar Rigby</span>Siswa Terbaik 2017</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> -->
<!--//END TESTIMONIAL -->
<!--============================= DETAILED CHART =============================-->
<?php //$this->load->view('layouts/partials/info_chart.php'); ?>

<!--//END DETAILED CHART -->

<!--============================= FOOTER =============================-->
<?php $this->load->view('layouts/partials/footer'); ?>

</body>

</html>
