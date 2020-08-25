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
					<h3><?= $title ?></h3>
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
				<button type="button" class="btn btn-md btn-primary btn-add-nav"><i class="fa fa-plus"></i> New Entry</button>
				<div class="single-post">
					<div class="blog_details">
						<table class="table table-bordered" id="navTbl">
							<thead>
								<tr>
									<th>Navigation</th>
									<th>Controller</th>
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
</section>
<!--================ Blog Area end =================-->

<div id="default-modal" class="modal fade" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form method="POST" id="nav-form" accept-charset="UTF-8">
				<div class="modal-header">
					<h4 class="modal-title strong"><?=$title?> - <span id="modal-type">New Entry</span></h4>
					<button type="button" class="close text-red" data-dismiss="modal" tabindex="-1">&times;</button>
				</div>
				<div class="modal-body">
					<div class="row clearfix">
						<div class="form-group col-md-6">
							<label>Navigation Name <span class="text-red">*</span></label>
							<input type="text" class="form-control" id="nav_name" maxlength="100" name="nav_name" value="" placeholder="..." required>
						</div>
						<div class="form-group col-md-6">
							<label>Controller Name <span class="text-red">*</span></label>
							<input type="text" class="form-control" id="nav_ctr" maxlength="100" name="nav_ctr" value="" placeholder="..." required>
						</div>
						<div class="form-group col-md-12">
							<label>Controller Description <span class="text-red">*</span></label>
							<textarea class="form-control" name="nav_desc" id="nav_desc" required="" placeholder="..." required=""></textarea>
						</div>
						<div class="form-group col-md-6">
							<label>Thumbnail <span class="text-red">*</span></label>
							<input type="file" name="nav_thumb" id="nav_thumb" class="form-control" accept="image/*" required="">
						</div>
						<div class="form-group col-md-6">
							<label>Admin Only <span class="text-red">*</span></label>
							<select class="form-control" name="is_admin" id="is_admin" required="">
								<option value=""> -- Please Select -- </option>
								<option value="NO">NO</option>
								<option value="YES">YES</option>
							</select>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<input type="text" class="collapse" id="type" name="type" value="">
					<input type="text" class="collapse" id="id" name="id" value="">
					<button type="submit" id="btn-submit" class="btn btn-primary">Save</button>
				</div>
			</form>
		</div>
	</div>
</div>