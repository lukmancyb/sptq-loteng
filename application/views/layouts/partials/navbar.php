</head>

<body>
<!--============================= HEADER =============================-->
<div class="header-topbar" style="background: #388E3C;">
    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-sm-8 col-md-9">
                <div class="header-top_address">
                    <!-- <div class="header-top_list">
                        <span class="icon-phone" style="color: #fff;"></span>00 55 22 66
                    </div> -->
                    <div class="header-top_list">
                        <span class="icon-envelope-open" style="color: #fff;"></span>info@lomboktengahkab.go.id
                    </div>
                    <div class="header-top_list">
                        <span class="icon-location-pin" style="color: #fff;"></span>Praya - Lombok Tengah, Nusa Tenggara Barat, INA.
                    </div>
                </div>
                <div class="header-top_login2">
                    <a href="<?php echo site_url('contact'); ?>">Hubungi Kami</a>
                </div>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-3">
                <div class="header-top_login mr-sm-3">
                    <a href="<?php echo site_url('contact'); ?>">Hubungi Kami</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div data-toggle="affix " >
    <div class="container nav-menu2"  >
        <div class="row">
            <div class="col-md-12" >
                <nav class="navbar navbar2 navbar-toggleable-md navbar-light  bg-faded" >
                    <button class="navbar-toggler navbar-toggler2 navbar-toggler-right" type="button"
                            data-toggle="collapse" data-target="#navbarNavDropdown">
                        <span class="icon-menu" style="color: green;"></span>
                    </button>
                    <a href="<?php echo site_url(''); ?>" class="navbar-brand nav-brand2"><img
                            class="img img-responsive" width="40px;"
                            src="<?php echo base_url() . 'theme/images/logo_lptq.png' ?>"></a>
                    <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">

                        <ul class="navbar-nav">

                            <li class="nav-item">
                                <a class="nav-link" href="<?php echo site_url(''); ?>">Beranda</a>
                            </li>
                            <li class="dropdown">
                                <a class="dropdown-item dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Profil</a>
                                <ul class="dropdown-menu dropdown-menu2">
                                    <li><a class="dropdown-item" href="<?= site_url('halaman/visi-misi');?>">Visi Misi</a></li>
                                    <li><a class="dropdown-item" href="<?php echo site_url('about'); ?>">Tentang</a></li>
                                    <li><a class="dropdown-item" href="<?php echo site_url('prestasi'); ?>">Prestasi</a></li>
                                    <li><a class="dropdown-item" href="<?php echo site_url('galeri'); ?>">Galeri</a></li>

                                </ul>
                            </li>
                            <li class="nav-item">
<!--                                <a class="nav-link" href="--><?php //echo site_url('about'); ?><!--">Tentang</a>-->
                            </li>
                            <!-- <li class="nav-item">
                                <a class="nav-link" href="<?php echo site_url('guru'); ?>">Guru</a>
                            </li> -->
                            <li class="nav-item">
<!--                                <a class="nav-link" href="--><?php //echo site_url('prestasi'); ?><!--">Prestasi</a>-->
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<?php echo site_url('blog'); ?>">Berita</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<?php echo site_url('pengumuman'); ?>">Pengumuman</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<?php echo site_url('agenda'); ?>">Agenda</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<?php echo site_url('download'); ?>">Download</a>
                            </li>
                            <li class="nav-item">
<!--                                <a class="nav-link" href="--><?php //echo site_url('galeri'); ?><!--">Galeri</a>-->
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<?php echo site_url('contact'); ?>">Kontak</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</div>