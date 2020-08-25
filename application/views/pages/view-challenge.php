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
					<h3>TANTANGAN</h3>
					<nav class="brad_cam_lists">
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="<?= base_url('home'); ?>">Beranda</a></li>
							<li class="breadcrumb-item active" aria-current="page">Tantangan</li>
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
				<button type="button" class="btn btn-md btn-primary btn-add-challenge" style="background-image: linear-gradient(to right, #ff008c 0%, #ff6357 100%);"><i class="fa fa-plus"></i> Tambah Baru </button>
				<div class="single-post">
					<div class="blog_details">
						<div class="table-responsive">
							<table class="table table-bordered table-striped table-hover" id="challengeTbl" style="border-radius: 10px;">
								<thead style="background: linear-gradient(to right, #ff008c 0%, #ff6357 100%);">
									<tr>
										<th>Tantangan</th>
										<th><i class="fa fa-cogs"></i></th>
									</tr>
								</thead>
								<tbody></tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!--================ Blog Area end =================-->

<div id="default-modal" class="modal fade" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form method="POST" id="challenge-form" accept-charset="UTF-8">
				<div class="modal-header">
					<h4 class="modal-title strong"><?=$title?> - <span id="modal-type">Tambah Baru</span></h4>
					<button type="button" class="close text-red" data-dismiss="modal" tabindex="-1">&times;</button>
				</div>
				<div class="modal-body">
					<div class="row clearfix">
						<div class="form-group col-md-12">
							<label> Nama Tantangan <span class="text-red">*</span></label>
							<input type="text" class="form-control" id="challenge_name" maxlength="100" name="challenge_name" value="" placeholder="..." required>
						</div>
						<div class="form-group col-md-12">
							<label> Deskripsi Tantangan <span class="text-red">*</span></label>
							<textarea class="form-control" id="challenge_desc" name="challenge_desc" value="" placeholder="..." required></textarea>
						</div>
						<div class="form-group col-md-6">
							<label> Video Tantangan <span class="text-red">*</span></label>
							<input type="file" name="challenge_files" id="challenge_files" accept="video/*" required="" />
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<input type="text" class="collapse" id="type" name="type" value="">
					<input type="text" class="collapse" id="id" name="id" value="">
					<button type="submit" id="btn-submit" class="btn btn-primary">Simpan</button>
				</div>
			</form>
		</div>
	</div>
</div>