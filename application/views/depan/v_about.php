<?php $this->load->view('layouts/partials/header'); ?>
<title><?= isset($title) ? $title : "Tentang"; ?> - LPTQ Kabupaten Lombok Tengah</title>
<?php $this->load->view('layouts/partials/navbar'); ?>

<!--//END HEADER -->
<!--//END ABOUT IMAGE -->
<!--============================= WELCOME TITLE =============================-->
<section class="welcome_about">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <img src="<?php echo base_url() . 'theme/images/logo_lptq.png' ?>" style="max-width: 300px" class="img-fluid" alt="Logo">
            </div>
            <div class="col-md-7">
                <h2>Kata Sambutan</h2>
                <p>Puji syukur kami panjatkan ke hadirat Tuhan Yang Maha Esa atas karunia dan hidayah-Nya,
                    sehingga kita semua dapat membaktikan segala hal yang kita miliki untuk kemajuan dunia pendidikan.
                    Apapun bentuk dan sumbangsih yang kita berikan, jika dilandasi niat yang tulus tanpa memandang
                    imbalan
                    apapun akan menghasilkan mahakarya yang agung untuk bekal kita dan generasi setelah kita.
                    Pendidikan adalah harga mati untuk menjadi pondasi bangsa dan negara dalam menghadapi perkembangan
                    zaman.
                </p>
                <p>Hal ini seiring dengan penguasaan teknologi untuk dimanfaatkan sebaik mungkin,
                    sehingga menciptakan iklim kondusif dalam ranah keilmuan. Dengan konsep yang kontekstual dan
                    efektif,
                    kami mengejewantahkan nilai-nilai pendidikan yang tertuang dalam visi misi M-School,
                    sebagai panduan hukum dalam menjabarkan tujuan hakiki pendidikan.
                </p>
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
<?php $this->load->view('layouts/partials/info_chart.php'); ?>

<!--//END DETAILED CHART -->

<!--============================= FOOTER =============================-->
<?php $this->load->view('layouts/partials/footer'); ?>

</body>

</html>
