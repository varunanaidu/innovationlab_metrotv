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
					<h3>DAFTAR ADMIN</h3>
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
				<button type="button" class="btn btn-md btn-primary btn-add-admin" style="background-image: linear-gradient(to right, #ff008c 0%, #ff6357 100%);"><i class="fa fa-plus"></i> New Entry</button>
				<div class="single-post">
					<div class="blog_details">
						<div class="table-responsive">
							<table class="table table-bordered table-striped table-hover" id="adminTbl" style="border-radius: 10px;">
								<thead style="background: linear-gradient(to right, #ff008c 0%, #ff6357 100%);">
									<tr>
										<th>Nama Admin</th>
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
			<form method="POST" id="admin-form" accept-charset="UTF-8">
				<div class="modal-header">
					<h4 class="modal-title strong"><?=$title?> - <span id="modal-type">New Entry</span></h4>
					<button type="button" class="close text-red" data-dismiss="modal" tabindex="-1">&times;</button>
				</div>
				<div class="modal-body">
					<div class="row clearfix">
						<div class="form-group col-md-12">
							<label>Nama <span class="text-red">*</span></label>	
							<select class="form-control" name="user_id" id="user_id">
								<option value="">-- Nama --</option>
								<?php 
								if (isset($data_user) and $data_user != 0) {
									foreach ($data_user as $row) {
										?>
										<option value="<?= $row->user_id ?>"><?= $row->user_fname ?></option>
										<?php 
									}
								}
								?>
							</select>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" id="btn-submit" class="btn btn-primary">Save</button>
				</div>
			</form>
		</div>
	</div>
</div>