<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>


<?php 
if (isset($data_user) and $data_user != 0) {
	foreach ($data_user as $row) {
		?>
		<!-- compapy_info  -->
		<div class="compapy_info ">
			<div class="container">
				<div class="row">
					<div class="container emp-profile">
						<form method="post">
							<div class="row">
								<div class="col-md-4">
									<div class="profile-img">
										<?php 
										if ($row->user_photo != '') {
											?>
											<img src="<?= base_url(); ?>assets/images/user/<?= $row->user_photo ?>" alt=""/>
											<?php 
										}else{
											?>
											<img src="<?= base_url(); ?>assets/images/no_photo.png" alt=""/>
											<?php 
										}
										?>
										<div class="file btn btn-lg btn-primary">
											Change Photo
											<input type="file" name="user_photo" id="user_photo" accept="image/*" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="profile-head">
										<h5>
											<?= $row->user_fname; ?>
										</h5>
										<h6>
											<?= $row->div_name.' - '.$row->dept_name; ?>
										</h6>
										<p class="proile-rating"><b>POIN : <span>
											<?php 
											if (isset($data_score)) {
												echo $data_score;
											}
											 ?>
										</span></b></p>
										<ul class="nav nav-tabs" id="myTab" role="tablist">
											<li class="nav-item">
												<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Tentang</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Lacak ID</a>
											</li>
										</ul>
									</div>
								</div>
								<div class="col-md-2">
									<button type="button" class="profile-edit-btn btn-profile"> Sunting Profil</button>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<div class="profile-work">
										<p>KONTRIBUSI SAYA</p>
										<?php 
										if (isset($data_idea) and $data_idea != 0) {
											foreach ($data_idea as $row2) {
												?>
												<a href="javascript:void(0)"><?= $row2->idea_subject; ?> <b> #<?= $row2->idea_id ?> </b> </a><br/>
												<?php 
											}
										}else{
											?>
											<a href="javascript:void(0)" title="">TIDAK ADA</a>
											<?php 
										}
										?>
									</div>
								</div>
								<div class="col-md-8">
									<div class="tab-content profile-tab" id="myTabContent">
										<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
											<div class="row">
												<div class="col-md-6">
													<label>NAMA</label>
												</div>
												<div class="col-md-6">
													<p><?= $row->user_fname; ?></p>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<label>Email</label>
												</div>
												<div class="col-md-6">
													<p><?= $row->user_email; ?></p>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<label>TELEPON</label>
												</div>
												<div class="col-md-6">
													<p><?= ( $row->user_phone == '' ? '' : $row->user_phone ); ?></p>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<label>Divisi/ Departemen</label>
												</div>
												<div class="col-md-6">
													<p><?= $row->div_name.' - '.$row->dept_name; ?></p>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<label>Instagram</label>
												</div>
												<div class="col-md-6">
													<p><?= ( $row->user_instagram == '' ? '' : $row->user_instagram ); ?></p>
												</div>
											</div>
										</div>
										<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
											<div class="row">
												<div class="col-md-6">
													<label>Lacak idemu</label>
												</div>
												<div class="form-group">
													<div class="input-group mb-3">
														<input name="temp_idea" id="temp_idea" type="text" class="form-control" placeholder='Masukkan ID idemu'
														onfocus="this.placeholder = ''"
														onblur="this.placeholder = 'Search Keyword'">
													</div>
												</div>
												<div class="form-group col-md-12">
													<button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" id="btn-track" type="button">Lacak</button>
												</div>
											</div>
											<div class="row" id="result_track">
												<div class="col-md-4">
													<label id="idea_id_container"></label>
												</div>
												<div class="col-md-4">
													<label id="idea_subject_container"></label>
												</div>
												<div class="col-md-4">
													<label id="status_container"></label>
												</div>
											</div>
										</div>
									</div>
								</div>
							</form>           
						</div>
					</div>
				</div>
			</div>
			<!--/ compapy_info  -->
			<div id="default-modal" class="modal fade" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<form method="POST" id="profile-form" accept-charset="UTF-8">
							<div class="modal-header">
								<h4 class="modal-title strong">Update Profile</h4>
								<button type="button" class="close text-red" data-dismiss="modal" tabindex="-1">&times;</button>
							</div>
							<div class="modal-body">
								<div class="row clearfix">
									<div class="form-group col-md-6">
										<label>Full Name <span class="text-red">*</span></label>
										<input type="text" class="form-control" id="user_fname" maxlength="100" name="user_fname" value="<?= $row->user_fname ?>" placeholder="...">
									</div>
									<div class="form-group col-md-6">
										<label>Email <span class="text-red">*</span></label>
										<input type="text" class="form-control" id="user_email" maxlength="100" name="user_email" value="<?= $row->user_email ?>" placeholder="..." readonly>
									</div>
									<div class="form-group col-md-6">
										<label>Division <span class="text-red">*</span></label>
										<select class="form-control" name="div_id" id="div_id">
											<option value="">-- Division --</option>
											<?php 
											if (isset($data_div) and $data_div != 0) {
												foreach ($data_div as $div) {
													?>
													<option value="<?= $div->div_id ?>" <?= ($div->div_id == $row->div_id ? 'selected' : '') ?> ><?= $div->div_name ?></option>
													<?php 
												}
											}
											?>
										</select>
									</div>
									<div class="form-group col-md-6">
										<label>Department <span class="text-red">*</span></label>
										<select class="form-control" name="dept_id" id="dept_id">
											<option value="">-- Department --</option>
											<?php 
											if (isset($data_dept) and $data_dept != 0) {
												foreach ($data_dept as $dept) {
													?>
													<option value="<?= $dept->dept_id ?>" <?= ($dept->dept_id == $row->dept_id ? 'selected' : '') ?> ><?= $dept->dept_name ?></option>
													<?php 
												}
											}
											?>
										</select>
									</div>
									<div class="form-group col-md-6">
										<label>Phone Number <span class="text-red">*</span></label>
										<input type="text" class="form-control" id="user_phone" maxlength="100" name="user_phone" value="<?= $row->user_phone ?>" placeholder="...">
									</div>
									<div class="form-group col-md-6">
										<label>Instagram <span class="text-red">*</span></label>
										<input type="text" class="form-control" id="user_instagram" maxlength="100" name="user_instagram" value="<?= $row->user_instagram ?>" placeholder="...">
									</div>
								</div>
								<div class="modal-footer">
									<input type="text" class="collapse" id="user_id" name="user_id" value="<?= $row->user_id ?>">
									<button type="submit" id="btn-submit" class="btn btn-primary">Save</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<?php 
			}
		}
		?>