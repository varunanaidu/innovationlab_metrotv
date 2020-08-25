<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!-- bradcam_area  -->
<div class="bradcam_area">
	<div class="bradcam_shap">
		<img src="<?= base_url(); ?>assets/design/img/ilstrator/bradcam_ils.png" alt="">
	</div>
	<div class="container">
		<div class="row">
			<div class="col-xl-12">
				<div class="bradcam_text text-center">
					<h3>Penting Buat Kamu</h3>
					<nav class="brad_cam_lists">
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="<?= base_url('home'); ?>">Beranda</a></li>
							<li class="breadcrumb-item active" aria-current="page">Artikel</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /bradcam_area  -->
<!--================Blog Area =================-->
<section class="blog_area section-padding">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 mb-5 mb-lg-0">
				<div class="blog_left_sidebar">
					<?php 
					if (isset($data_article) and $data_article != 0) {
						foreach ($data_article as $row) {
							?>
							<article class="blog_item">
								<div class="blog_item_img">
									<img class="card-img rounded-0" src="<?= base_url(); ?>assets/images/knowledge/<?= $row->knowledge_photo ?>" alt="">
								</div>

								<div class="blog_details">
									<a class="d-inline-block" href="<?= base_url('article/details/').$row->knowledge_id; ?>">
										<h2><?= $row->knowledge_subject ?></h2>
									</a>
									<p><?= substr($row->knowledge_desc, 0, 100). '...' ?>.</p>
									<ul class="blog-info-link">
										<li><a href="#"><i class="fa fa-user"></i> Kategori 1, kategori 2</a></li>
										<li><a href="#"><i class="fa fa-comments"></i> 03 Komentar</a></li>
									</ul>
								</div>
							</article>
							<?php 
						}
					}
					?>

					<nav class="blog-pagination justify-content-center d-flex">
						<ul class="pagination">
							<li class="page-item">
								<a href="#" class="page-link" aria-label="Previous">
									<i class="ti-angle-left"></i>
								</a>
							</li>
							<li class="page-item">
								<a href="#" class="page-link">1</a>
							</li>
							<li class="page-item active">
								<a href="#" class="page-link">2</a>
							</li>
							<li class="page-item">
								<a href="#" class="page-link" aria-label="Next">
									<i class="ti-angle-right"></i>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</section>
    <!--================Blog Area =================-->