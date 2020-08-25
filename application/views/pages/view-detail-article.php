<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php 
if (isset($data_article) and $data_article != 0) {
	foreach ($data_article as $row) {
		?>
<!-- bradcam_area  -->
<div class="bradcam_area">
	<div class="bradcam_shap">
		<img src="<?= base_url(); ?>assets/design/img/ilstrator/bradcam_ils.png" alt="">
	</div>
	<div class="container">
		<div class="row">
			<div class="col-xl-12">
				<div class="bradcam_text text-center">
					<h3><?= $row->knowledge_subject; ?>
								</h3>
					<nav class="brad_cam_lists">
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="<?= base_url('home'); ?>">Beranda</a></li>
							<li class="breadcrumb-item"><a href="<?= base_url('article'); ?>">Artikel</a></li>
							<li class="breadcrumb-item active" aria-current="page">Detail Artikel</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /bradcam_area  -->
<!--================Blog Area =================-->
		<section class="blog_area single-post-area section-padding">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 posts-list">
						<div class="single-post">
							<div class="feature-img">
								<img class="img-fluid" src="<?= base_url(); ?>assets/images/knowledge/<?= $row->knowledge_photo ?>" alt="">
							</div>
							<div class="blog_details">
								
								<ul class="blog-info-link mt-3 mb-4">
									<li><a href="#"><i class="fa fa-user"></i> Kategori 1, Kategori 2</a></li>
									<li><a href="#"><i class="fa fa-comments"></i> 03 Komentar</a></li>
								</ul>
								<p class="excert">
									<?= $row->knowledge_desc; ?>
								</p>
							</div>
						</div>
					</div>
					<?php 
				}
			}
			?>