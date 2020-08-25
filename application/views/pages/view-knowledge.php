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
					<h3>UNGGAH ARTIKEL</h3>
					<nav class="brad_cam_lists">
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="<?= base_url('home'); ?>">Beranda</a></li>
							<li class="breadcrumb-item active" aria-current="page">Unggah Artikel</li>
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
				<button type="button" class="btn btn-md btn-primary btn-add-knowledge" style="background-image: linear-gradient(to right, #ff008c 0%, #ff6357 100%);"><i class="fa fa-plus"></i> Tambah Baru </button>
				<div class="single-post">
					<div class="blog_details">
						<div class="table-responsive">
							<table class="table table-bordered table-striped table-hover" id="knowledgeTbl" style="border-radius: 10px;">
								<thead style="background: linear-gradient(to right, #ff008c 0%, #ff6357 100%);">
									<tr>
										<th>Pengetahuan</th>
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
			<form method="POST" id="knowledge-form" accept-charset="UTF-8">
				<div class="modal-header">
					<h4 class="modal-title strong"><?=$title?> - <span id="modal-type">Tambah Baru</span></h4>
					<button type="button" class="close text-red" data-dismiss="modal" tabindex="-1">&times;</button>
				</div>
				<div class="modal-body">
					<div class="row clearfix">
						<div class="form-group col-md-12">
							<label>Judul Artikel<span class="text-red">*</span></label>
							<input type="text" class="form-control" id="knowledge_subject" maxlength="100" name="knowledge_subject" value="" placeholder="..." required>
						</div>
						<div class="form-group col-md-12">
							<label>Deskripsi Artikel<span class="text-red">*</span></label>
							<textarea class="form-control" id="knowledge_desc" name="knowledge_desc" value="" placeholder="..." required></textarea>
						</div>
						<div class="form-group col-md-6">
							<label>Foto Artikel<span class="text-red">*</span></label>
							<input type="file" name="knowledge_photo" id="knowledge_photo" accept="image/*" required="" />
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