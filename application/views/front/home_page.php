<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Innovation Lab</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- <link rel="manifest" href="site.webmanifest"> -->
	<!-- Place favicon.ico in the root directory -->

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
	<link rel="stylesheet" href="<?= base_url(); ?>assets/design/css/login-register.css" rel="stylesheet" />
	<!-- <link rel="stylesheet" href="<?= base_url(); ?>assets/design/css/responsive.css"> -->
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url(); ?>assets/design/css/login/vendor/animate/animate.css">
	<!--===============================================================================================-->  
	<link rel="stylesheet" type="text/css" href="<?= base_url(); ?>assets/design/css/login/vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url(); ?>assets/design/css/login/vendor/select2/select2.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url(); ?>assets/design/css/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url(); ?>assets/design/css/login/css/main.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url(); ?>assets/plugins/sweetalert2/sweetalert2.min.css">
	<style>
		#login {
			position: absolute;
			z-index:2; /* <-- this plays a key roll for it to work */
			left:30%;
			top:65%;
			
		}
		#login a {
			font-size: 16px;
			text-decoration: none;
			line-height: 1.7;
			color: #fff;
			margin: 0px;
			transition: all 0.4s;
			-webkit-transition: all 0.4s;
			-o-transition: all 0.4s;
			-moz-transition: all 0.4s;
		}
	</style>
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
					</div>

				</div>
			</div>
		</div>
	</header>
	<!-- header-end -->

	

	<!-- slider_area_start -->
<div id="demo" class="carousel slide" data-ride="carousel">
    <!--indicators-->
    <ul class="carousel-indicators">
      <li data-target="#demo" data-slide-to="0" class="active"></li>
      <li data-target="#demo" data-slide-to="1"></li>
      <li data-target="#demo" data-slide-to="2"></li>
    </ul> 
    <!--slideshow-->
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="https://images.unsplash.com/photo-1527526561110-1eb7df51546c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f47eefbe455db7a6c6945b6fffc25640&auto=format&fit=crop&w=750&q=80" width="1100" height="500">
      </div>
      <div class="carousel-item">
        <img src="https://images.unsplash.com/photo-1534273964-60466d4d1350?ixlib=rb-0.3.5&s=c77a7b1aa5408910fe9dab911974a78a&auto=format&fit=crop&w=750&q=80" width="1100" height="500">
      </div>
      <div class="carousel-item">
        <img src="https://images.unsplash.com/photo-1533883355737-25ab4d1fbefb?ixlib=rb-0.3.5&s=fbddec8f7888336b28d7c07a21fcf20d&auto=format&fit=crop&w=749&q=80" width="1100" height="500">
      </div>
     <div id="login">
			<p>
				<a class="boxed-btn3" id="showLoginBtn" href="javascript:void(0)">Masuk dan mulai berkontribusi</a> 
			</p>
		</div>
    </div>
    <!--left and right controls-->
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
      <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
  </div>
	<!-- slider_area_end -->

	<div class="modal fade login" id="loginModal" data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog login animated">
			<div class="modal-content">
				<div class="modal-header">
					<!-- <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> -->
				</div>
				<div class="modal-body">
					<form class="login100-form validate-form" id="login-form" accept-charset="utf-8" method="POST">
						<span class="login100-form-title">
							Masuk ke akun saya
						</span>

						<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
							<input class="input100" type="email" name="user_email" id="user_email" placeholder="Email Saya" required="">
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-envelope" aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100 validate-input" data-validate = "Password is required">
							<input class="input100" type="password" name="user_pass" id="user_pass" placeholder="Kata Sandi Saya" required="">
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-lock" aria-hidden="true"></i>
							</span>
						</div>

						<div class="container-login100-form-btn">
							<button class="boxed-btn3" type="submit" id="submit-login">Masuk
							</button>
						</div>
					</form>
				</div>

				<div class="flex-c-m">
						<a href="#" class="login100-social-item bg1">
							<i class="fa fa-facebook"></i>
						</a>
						
						<a href="#" class="login100-social-item bg3">
							<i class="fa fa-google"></i>
						</a>
					</div>

				<div class="modal-footer">
					<div class="forgot login-footer">
						<div class="text-center p-t-12">
							<a class="txt2" href="<?= base_url('home'); ?>">BERKONTRIBUSI SECARA ANONIM<a>
						</div>
						<a id="showRegisterBtn" href="javascript:void(0)">Ingin membuat akun baru ?</a>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="modal fade login" id="registerModal" data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog login animated">
			<div class="modal-content">
				<div class="modal-header">
					<!-- <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> -->
				</div>
				<div class="modal-body">
					<form class="login100-form validate-form" id="register-form" accept-charset="utf-8" method="POST">
						<span class="login100-form-title">
							Daftar
						</span>

						<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
							<input class="input100" type="email" name="reg_user_email" id="reg_user_email" placeholder="Email Saya">
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-envelope" aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100 validate-input">
							<input class="input100" type="text" name="user_fname" id="user_fname" placeholder="Nama Lengkap Saya">
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-envelope" aria-hidden="true"></i>
							</span>
						</div>
						
						<div class="wrap-input100 validate-input" data-validate = "Password is required">
							<input class="input100" type="password" name="reg_user_pass" id="reg_user_pass" placeholder="Kata Sandi Saya">
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-lock" aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100 validate-input" data-validate = "Confirm your Password">
							<input class="input100" type="password" name="reg_confirm_pass" id="reg_confirm_pass" placeholder="Konfirmasi Kata Sandi Saya">
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-lock" aria-hidden="true"></i>
							</span>
						</div>

						<div class="container-login100-form-btn">
							<button class="boxed-btn3" type="submit" id="submit-register">Daftar</button>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<div class="forgot register-footer">
						<a href="javascript:void(0)" id="showLoginBtn2">Sudah memiliki akun ?</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!--===============================================================================================-->  
<script type="text/javascript">var base_url = '<?= base_url(); ?>'</script>
<!--===============================================================================================-->  
<script src="<?= base_url(); ?>assets/design/css/login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="<?= base_url(); ?>assets/design/css/login/vendor/bootstrap/js/popper.js"></script>
<script src="<?= base_url(); ?>assets/design/css/login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="<?= base_url(); ?>assets/design/css/login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="<?= base_url(); ?>assets/design/css/login/vendor/tilt/tilt.jquery.min.js"></script>
<!--===============================================================================================-->
<script src="<?= base_url(); ?>assets/design/js/main.js"></script>       

<script src="<?= base_url(); ?>assets/design/js/vendor/modernizr-3.5.0.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/vendor/jquery-1.12.4.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/popper.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/bootstrap.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/owl.carousel.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/isotope.pkgd.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/ajax-form.js"></script>
<script src="<?= base_url(); ?>assets/design/js/waypoints.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/jquery.counterup.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/imagesloaded.pkgd.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/scrollIt.js"></script>
<script src="<?= base_url(); ?>assets/design/js/jquery.scrollUp.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/wow.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/nice-select.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/jquery.slicknav.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/jquery.magnific-popup.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/plugins.js"></script>
<script src="<?= base_url(); ?>assets/design/js/gijgo.min.js"></script>

<!--contact js-->
<script src="<?= base_url(); ?>assets/design/js/contact.js"></script>
<script src="<?= base_url(); ?>assets/design/js/jquery.ajaxchimp.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/jquery.form.js"></script>
<script src="<?= base_url(); ?>assets/design/js/jquery.validate.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/mail-script.js"></script>
<script src="<?= base_url(); ?>assets/plugins/sweetalert2/sweetalert2.min.js"></script>
<script src="<?= base_url(); ?>assets/design/js/main.js"></script>
<script src="<?= base_url(); ?>assets/design/js/login-register.js"></script>

</body>
</html>