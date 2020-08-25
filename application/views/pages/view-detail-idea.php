<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php 
if (isset($data_idea) and $data_idea != 0) {
	foreach ($data_idea as $row) {
		$title = $row->idea_subject;
		$idea_id = $row->idea_id;
		$idea_desc = $row->idea_desc;
		$idea_photo = $row->idea_photo;
		$created_name = ( is_null($row->created_name) ? 'Guest' : $row->created_name );
		$created_date = $row->created_date;
	}
}
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
					<h3><?= $title ?></h3>
					<nav class="brad_cam_lists">
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="<?= base_url('home'); ?>">Beranda</a></li>
							<li class="breadcrumb-item"><a href="<?= base_url('idea'); ?>">Daftar Ide</a></li>
							<li class="breadcrumb-item active" aria-current="page">Detail Ide</li>
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
			<div class="col-lg-12 posts-list">
				<div class="single-post">
					<div class="feature-img">
						<img class="img-fluid" src="<?= base_url(); ?>assets/images/idea/<?= $idea_photo; ?>" alt="" style="width: 500px;">
					</div>
					<div class="blog_details">
						<p class="excert">
							<?= $idea_desc; ?>
						</p>
					</div>
				</div>
				<div class="blog-author">
					<div class="media align-items-center">
						<div class="media-body">
							<a href="javascript:void(0);">
								<h4><?= $created_name; ?></h4>
								<h5><?= date('d F Y H:i:s', strtotime($created_date)) ?></h5>
							</a>
						</div>
					</div>
				</div>
				<div class="comments-area">
					<?php 
					if (isset($data_post) and $data_post != 0) {
						?>
						<h4><?= sprintf("%02d", sizeof($data_post)) . ' Komentar'; ?></h4>
						<?php
						foreach ($data_post as $row2) {
							?>
							<div class="comment-list">
								<div class="single-comment justify-content-between d-flex">
									<div class="user justify-content-between d-flex">
										<div class="desc">
											<p class="comment">
												<?= $row2->post_message ?>
											</p>
											<div class="d-flex justify-content-between">
												<div class="d-flex align-items-center">
													<h5>
														<?php 
														if ( is_null($row2->created_name) ) {
															?>
															<a href="javascript:void(0)">Guest</a>
															<?php 
														}else{
															?>
															<a href="javascript:void(0)"><?= $row2->created_name; ?></a>
															<?php 
														}
														?>															
													</h5>
													<p class="date"><?= date('F d, Y H:i:s', strtotime($row2->created_date)) ?> </p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<?php
						}
					}else{
						?>
						<h4>Tidak ada Komentar</h4>
						<?php 
					}
					?>
				</div>
				<div class="comment-form">
					<h4>Tinggalkan Komentar</h4>
					<form class="form-contact comment_form" id="post-form" method="POST">
						<div class="row">
							<div class="col-12">
								<div class="form-group">
									<textarea class="form-control w-100" name="post_message" id="post_message" cols="30" rows="9"
									placeholder="Tulis Komentar" required=""></textarea>
								</div>
							</div>
						</div>
						<div class="form-group">
							<input type="text" name="idea_id" id="idea_id" class="collapse" value="<?= $idea_id; ?>">
							<button type="submit" id="btn-submit" class="button button-contactForm btn_1 boxed-btn">Kirim Komentar</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
   <!--================ Blog Area end =================-->