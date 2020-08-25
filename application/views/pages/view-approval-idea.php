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
					<h3>Daftar Ide</h3>
					<nav class="brad_cam_lists">
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="<?= base_url('home'); ?>">Beranda</a></li>
							<li class="breadcrumb-item"><a href="<?= base_url('approval'); ?>">Persetujuan</a></li>
							<li class="breadcrumb-item active" aria-current="page">Setujui Ide</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /bradcam_area  -->

<!-- case_study_area  -->
<div class="case_study_area white_case_study">
	<div class="patrn_1 d-none d-lg-block">
		<img src="<?= base_url(); ?>assets/design/img/pattern/patrn_1.png" alt="">
	</div>
	<div class="patrn_2 d-none d-lg-block">
		<img src="<?= base_url(); ?>assets/design/img/pattern/patrn.png" alt="">
	</div>
	<div class="container">
		<a class="boxed-btn3 mb-5" href="<?= base_url('approval/get_excel') ?>" target="_blank">EXPORT EXCEL</a>
		<div class="row">
			<?php 
			if (isset($data_idea) and $data_idea != 0) {
				foreach ($data_idea as $row) {
					$idea_type = '';
					switch ($row->idea_type) {
						case '1':
						$idea_type = 'Program';
						break;
						case '2':
						$idea_type = 'Policy';
						break;
						case '3':
						$idea_type = 'Business';
						break;
						case '4':
						$idea_type = 'Technical';
						break;
						case '5':
						$idea_type = 'Finance';
						break;
						case '6':
						$idea_type = 'Other';
						break;
					}
					?>
					<div class="col-lg-4 col-md-6">
						<div class="single_study text-center white_single_study">
							<div class="thumb">
								<a href="<?= base_url('approval/details/').$row->idea_id; ?>" class="view-idea" data-idea="<?= $row->idea_id; ?>">
									<img src="<?= base_url(); ?>assets/images/idea/<?= $row->idea_photo ?>" alt="">
								</a>
							</div>
							<div class="subheading white_subheading">
								<h4><a href="<?= base_url('approval/details/').$row->idea_id; ?>" class="view-idea" data-idea="<?= $row->idea_id; ?>" ><?= $row->idea_subject ?></a></h4>
								<p><?= $idea_type; ?></p>
							</div>
						</div>
					</div>
					<?php 
				}
			}
			?>
		</div>
		<div class="row">
			<div class="col-xl-12">
				<div class="load_more text-center">
					<a class="load_more_btn" href="javascript:void(0);">Muat lebih banyak</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!--/ case_study_area  -->
