<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php 
if (isset($data_idea) and $data_idea != 0) {
	foreach ($data_idea as $row) {
		$title = $row->idea_subject;
		$idea_id = $row->idea_id;
		$idea_desc = $row->idea_desc;
		$idea_detail = $row->idea_detail;
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
							<li class="breadcrumb-item"><a href="<?= base_url('approval'); ?>">Persetujuan</a></li>
							<li class="breadcrumb-item"><a href="<?= base_url('approval/new_idea'); ?>">Setujui Ide</a></li>
							<li class="breadcrumb-item active" aria-current="page">Detail Setujui Ide</li>
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
						<p>
							<?= $idea_detail; ?>
						</p>
						<?php 
						if (isset($data_attachment) and $data_attachment != 0) {
							$a = 1;
							foreach ($data_attachment as $attachment) {
								?>
								<a href="<?= base_url(); ?>assets/files/idea/<?= $attachment->attachment_name ?>" title="" target="_blank"><i class="fa fa-download"> Files <?= $a; ?> </i></a>
								<?php
								$a++; 
							}
						}
						?>
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
				<a id="btn-question" class="boxed-btn3 mt-5" href="#" data-value="2" data-idea="<?= $idea_id; ?>" style="color: #fff !important">Setujui Ide</a> 
				<a id="btn-question" class="boxed-btn3 mt-5 ml-5" href="#" data-value="3" data-idea="<?= $idea_id; ?>" style="color: #fff !important">Tunggu Ide Selanjutnya</a>
				<div class="comments-area">
					<?php 
					if (isset($data_post) and $data_post != 0) {
						?>
						<h4><?= sprintf("%02d", sizeof($data_post)) . ' Comment/s'; ?></h4>
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
												<!-- <div class="reply-btn">
													<a href="#" class="btn-reply text-uppercase">reply</a>
												</div> -->
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

<div id="team-modal" class="modal fade" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form method="POST" id="team-form" accept-charset="UTF-8">
				<div class="modal-header">
					<h4 class="modal-title strong">Anggota Tim</h4>
				</div>
				<div class="modal-body">
					<div class="row clearfix">
						<div class="table-responsive">
							<span class="add-team"><i class="fa fa-plus"></i> Tambah</span>
							<table class="table table-bordered" id="teamCont">
								<thead>
									<tr>
										<th width="10"></th>
										<th>Nama</th>
										<th>Posisi</th>
									</tr>
								</thead>
								<tbody id="teamBodyCont">
									<tr>
										<td></td>
										<td>
											<div class="form-group">
												<select class="form-control" name="user_id[]" id="user_id" required="">
													<option value=""></option>
													<?php 
													if (isset($data_user) and $data_user != 0) {
														foreach ($data_user as $user) {
															?>
															<option value="<?= $user->user_id ?>"><?= $user->user_fname ?></option>
															<?php 
														}
													}
													?>
												</select>
											</div>
										</td>
										<td>
											<div class="form-group">
												<input type="text" class="form-control" name="position[]" id="position" required="" >
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<input type="text" class="collapse" id="idea_id3" name="idea_id3" value="<?= $idea_id ?>">
					<button type="submit" id="btn-submit" class="btn btn-primary">Pilih Team</button>
				</div>
			</form>
		</div>
	</div>
</div>

<div id="default-modal" class="modal fade" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<form method="POST" id="reject-form" accept-charset="UTF-8">
				<div class="modal-header">
					<button type="button" class="close text-red" data-dismiss="modal" tabindex="-1">&times;</button>
				</div>
				<div class="modal-body">
					<div class="row clearfix">
						<div class="form-group col-md-12">
							<label>Alasan <span class="text-red">*</span></label>
							<input type="text" class="form-control" id="reject_reason" maxlength="100" name="reject_reason" value="" placeholder="..." required>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<input type="text" class="collapse" id="key" name="key" value="">
					<input type="text" class="collapse" id="idea_id2" name="idea_id2" value="">
					<button type="submit" id="btn-submit" class="btn btn-danger">Tolak</button>
				</div>
			</form>
		</div>
	</div>
</div>