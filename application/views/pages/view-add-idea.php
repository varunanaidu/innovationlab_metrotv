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
					<h3>Buat Ide</h3>
					<nav class="brad_cam_lists">
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="<?= base_url('home'); ?>">Beranda</a></li>
							<li class="breadcrumb-item"><a href="<?= base_url('idea'); ?>">Daftar Ide</a></li>
							<li class="breadcrumb-item active" aria-current="page">Buat Ide</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /bradcam_area  -->
<!-- ================ contact section start ================= -->
<section class="contact-section section_padding">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h2 class="contact-title">Ajukan Idemu</h2>
			</div>
			<div class="col-lg-12">
				<form method="POST" id="idea-form" class="form-contact contact_form" accept-charset="utf-8">
					<div class="row">
						<div class="col-6">
							<div class="form-group">
								<label for="idea_subject">Judul <span>(*)</span></label>
								<input class="form-control" name="idea_subject" id="idea_subject" type="text" placeholder = 'Masukkan Judul' required="">
							</div>
						</div>
						<div class="col-6">
							<div class="form-group" >
								<label for="idea_type">Category<span>(*)</span></label>
								<select class="form-control default-select" name="idea_type" id="idea_type">
									<option value=""> -- Category -- </option>
									<option value="1">Program</option>
									<option value="2">Kebijakan</option>
									<option value="3">Bisnis</option>
									<option value="4">Teknik</option>
									<option value="5">Finance</option>
									<option value="6">Lainnya</option>
								</select>
							</div>
						</div>
						<?php 
						if (isset($data_challenge) and $data_challenge != 0) {
							foreach ($data_challenge as $row) {
								?>
								<div class="col-12">
									<div class="form-group">
										<label for="challenge_id">Tantangan BOD<span>(*)</span></label>
										<input class="form-control" name="challenge_id" id="challenge_id" type="text" data-value="<?= $row->challenge_id; ?>" value="<?= $row->challenge_name ?>" readonly="">
									</div>
								</div>
								<?php 
							}
						}
						?>
						<div class="col-12">
							<div class="form-group">
								<label for="range_budget">Budget yang dibutuhkan<span>(*)</span></label>
								<div class="range">
									<input type="range" id="idea_budget" name="idea_budget" min="0" max="100000000">
									<div class="range-output">
										<output class="output" name="output" for="range"></output>
									</div>
								</div>
							</div>
						</div>
						<div class="col-6">
							<div class="form-group">
								<label for="idea_start_date">Perkiraan tanggal mulai pengerjaan<span>(*)</span></label>
									<input type="date" id="idea_start_date" name="idea_start_date" class="form-control w-100">
							</div>
						</div>
						<div class="col-6">
							<div class="form-group">
								<label for="idea_end_date">Perkiraan tanggal selesai pengerjaan<span>(*)</span></label>
									<input type="date" id="idea_end_date" name="idea_end_date" class="form-control w-100">
							</div>
						</div>
							<div class="col-12">
								<div class="form-group">
									<label for="idea_desc">Penjelasan Singkat<span>(*)</span></label>
									<textarea class="form-control w-100" name="idea_desc" id="idea_desc" cols="30" rows="9" placeholder = 'Masukkan Penjelasan singkat tentang idemu' required=""></textarea>
								</div>
							</div>
							<div class="col-12">
								<div class="form-group">
									<label for="idea_detail">Penjelasan Lengkap<span>(*)</span></label>
									<textarea class="form-control w-100" name="idea_detail" id="idea_detail" cols="30" rows="9" placeholder = 'Masukkan Penjelasan lengkap tentang idemu' required=""></textarea>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label for="idea_photo">Gambar Ide <span>(*)</span></label>
									<input type="file" class="form-control" name="idea_photo" id="idea_photo" accept="image/*" placeholder="Enter Photo" required="">
									<img src="" alt="" id="previewImg" style="width: 300px;">
									<label> Ukuran maksimal gambar 200KB </label>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>Lampiran lainnya</label>
									<input type="file" class="form-control" name="attachment[]" id="attachment" placeholder = 'Attachment' multiple>
									<label>Dokumen yang dilampirkan bisa lebih dari 1</label>
									<label> Ukuran maksimal lampiran 25MB </label>
								</div>
							</div>
						</div>
						<div class="form-group mt-3">
							<button type="submit" id="btn-submit" class="button button-contactForm btn_4 boxed-btn">KIRIM IDE!</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
<!-- ================ contact section end ================= -->