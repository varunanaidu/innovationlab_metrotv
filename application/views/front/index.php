<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Innovation Lab</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
		#myVideo {
			position: fixed;
			right: 0;
			top: 0;
			bottom: 0;
			min-width: 100%; 
			min-height: 100%;
			width: 100% !important;
		}
		#login {
			position: absolute;
			z-index:2; /* <-- this plays a key roll for it to work */
			left:50%;
			top:65%;
			font-family: "Poppins", sans-serif;
			cursor: pointer;
			padding: 0 85px;
			text-align: center;
			background: linear-gradient(to right, #ff008c 0%, #ff6357 100%);
			border-radius: 50px;
			background-size: 101% 100%;
			transition: 0.5s;
			display: inline-block;
			border: 1px solid transparent;
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
}
</style>
<!--===============================================================================================-->
</head>

<body>
	<video autoplay muted loop id="myVideo">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		</div>
		<source src="<?= base_url(); ?>assets/design/video.mp4" type="video/mp4">
			Your browser does not support HTML5 video.
		</video>
		<div id="login">
			<p>
				<a href="<?= base_url('home/login'); ?>">Bawa saya ke Ruang Ide</a>
			</p>
		</div>
	</body>

	<script>
		var video = document.getElementById("myVideo");
		var btn = document.getElementById("myBtn");

		function myFunction() {
			if (video.paused) {
				video.play();
				btn.innerHTML = "Pause";
			} else {
				video.pause();
				btn.innerHTML = "Play";
			}
		}
	</script>