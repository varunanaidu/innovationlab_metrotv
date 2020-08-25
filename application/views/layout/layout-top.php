<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Innovation Lab</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- CSS here -->
	<link rel="stylesheet" href="<?= base_url(); ?>assets/design/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/design/css/owl.carousel.min.css">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/design/css/magnific-popup.css">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/design/css/font-awesome.min.css">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/design/css/themify-icons.css">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/design/css/nice-select.css">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/design/css/flaticon.css">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/design/css/gijgo.css">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/design/css/animate.min.css">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/design/css/slick.css">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/design/css/slicknav.css">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/design/css/style.css">
	<!-- DataTables -->
	<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
	<!-- Sweetalert -->
	<link rel="stylesheet" type="text/css" href="<?= base_url(); ?>assets/plugins/sweetalert2/sweetalert2.min.css">
	<!-- Page Script -->
	<?php 
	if (isset($css)) {
		?>
		<link rel="stylesheet" type="text/css" href="<?= $css ?>">
		<?php 
	}
	?>
</head>

<body>
	<!-- header-start -->
	<header>
		<div class="header-area ">
			<div id="sticky-header" class="main-header-area">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-xl-3 col-lg-2">
							<div class="logo">
								<a href="<?= base_url('home'); ?>">
									<img src="<?= base_url(); ?>assets/design/img/logo.png" alt="">
								</a>
							</div>
						</div>
						<div class="col-xl-6 col-lg-7">
						</div>
						<div class="col-xl-3 col-lg-3 d-none d-lg-block">
							<div class="Appointment">
								<div class="book_btn d-none d-lg-block">
									<?php 
									if ($this->session->userdata(SESS)) {
										?>
										<!-- yang ini jangan signout Sef, tapi my profile (tampilannya di design/profile.html) -->
										<ul id="navigation">
										<a  href="<?= base_url('profile'); ?>"> <i class="fa fa-user"></i> Profil Saya </a>
										<a  href="<?= base_url('home/signout'); ?>"> <i class="fa fa-lock"></i> Keluar </a>
										<?php 
									}else{
										?>
										<a  href="<?= base_url('home/login'); ?>"> <i class="fa fa-lock"></i> Masuk </a>
										<?php 
									}
									?>
								</ul>
								</div>
							</div>
						</div>
						<div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
					</div>
					
				</div>
			</div>
		</div>
	</header>
		<!-- header-end -->

<!-- BARU DARI VARUNA -->
       <!--  <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-xl-3 col-lg-2">
                            <div class="logo">
                                <a href="index.html">
									<img src="<?= base_url(); ?>assets/design/img/logo.png" alt="">
								</a>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-7">
                            <div class="main-menu  d-none d-lg-block">
                                
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 d-none d-lg-block">
                            <div class="Appointment">
                                <div class="book_btn d-none d-lg-block">
                                    <a  href="profile.html"> MY PROFILE </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </header>-->
	<!-- header-end --> 

