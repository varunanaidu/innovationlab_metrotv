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
					<h3>PERSETUJUAN</h3>
					<nav class="brad_cam_lists">
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="<?= base_url('home'); ?>">Beranda</a></li>
							<li class="breadcrumb-item active" aria-current="page">Persetujuan</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /bradcam_area  -->
<div class="service_area minus_padding">
	<div class="container">
		<div class="row mb-3">
			<!-- Earnings (Monthly) Card Example -->
			<div class="col-xl-3 col-md-6 mb-4">
				<a href="<?= base_url('approval/verification_idea'); ?>">
					<div class="card h-100">
						<div class="card-body">
							<div class="row align-items-center">
								<div class="col mr-2">
									<div class="text-xs font-weight-bold text-uppercase mb-1">Verifikasi<br/>Ide</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800"><?= $verification; ?></div>
								</div>
								<div class="col-auto">
									<img src="<?= base_url(); ?>assets/design/img/icon/idea.png" alt="">
								</div>
							</div>
						</div>
					</div></a>
				</div>
				<!-- Earnings (Monthly) Card Example -->
				<div class="col-xl-3 col-md-6 mb-4">
					<a href="<?= base_url('approval/new_idea'); ?>">
						<div class="card h-100">
							<div class="card-body">
								<div class="row align-items-center">
									<div class="col mr-2">
										<div class="text-xs font-weight-bold text-uppercase mb-1">Ide Baru</div>
										<div class="h5 mb-0 font-weight-bold text-gray-800"><?= $new_idea; ?></div>
									</div>
									<div class="col-auto">
										<img src="<?= base_url(); ?>assets/design/img/icon/idebaru.png" alt="">
									</div>
								</div>
							</div>
						</div></a>
					</div>
					<!-- Earnings (Annual) Card Example -->
					<div class="col-xl-3 col-md-6 mb-4">
						<a href="<?= base_url('approval/approved_idea'); ?>">
							<div class="card h-100">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div class="text-xs font-weight-bold text-uppercase mb-1">Ide yang sudah disetujui</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800"><?= $approved; ?></div>
										</div>
										<div class="col-auto">
											<img src="<?= base_url(); ?>assets/design/img/icon/ideyangsudahdisetujui.png" alt="">
										</div>
									</div>
								</div>
							</div></a>
						</div>
						<!-- New User Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<a href="javascript:void(0)">
								<div class="card h-100">
									<div class="card-body">
										<div class="row no-gutters align-items-center">
											<div class="col mr-2">
												<div class="text-xs font-weight-bold text-uppercase mb-1">Ide yang ditolak</div>
												<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><?= $rejected; ?></div>
											</div>
											<div class="col-auto">
												<img src="<?= base_url(); ?>assets/design/img/icon/ideyangditolak.png" alt="">
											</div>
										</div>
									</div>
								</div></a>
							</div>
							<!-- New User Card Example -->
						<!-- <div class="col-xl-3 col-md-6 mb-4">
							<a href="javascript:void(0)">
								<div class="card h-100">
									<div class="card-body">
										<div class="row no-gutters align-items-center">
											<div class="col mr-2">
												<div class="text-xs font-weight-bold text-uppercase mb-1">Penilaian</div>
												
											</div>
											<div class="col-auto">
												<img src="<?= base_url(); ?>assets/design/img/icon/score.png" alt="">
											</div>
										</div>
									</div>
								</div></a>
							</div> -->
							<!--/ service_area  -->

							<!-- case_study_area  -->
							<div class="container">
								<div class="row">
									<div class="col-xl-12">
										<div class="bradcam_text ">
											<h3>Proyek yang sedang berjalan</h3>
										</div>
									</div>
								</div>
							</div>
							<!-- /bradcam_area  -->
							<div class="case_study_area white_case_study">
								<div class="patrn_1 d-none d-lg-block">
									<img src="<?= base_url(); ?>assets/design/img/pattern/patrn_1.png" alt="">
								</div>
								<div class="patrn_2 d-none d-lg-block">
									<img src="<?= base_url(); ?>assets/design/img/pattern/patrn.png" alt="">
								</div>
								<div class="container">
									<div class="row">
										<?php 
										if (isset($data_ongoing_project) and $data_ongoing_project != 0 ) {
											foreach ($data_ongoing_project as $row) {
												?>
												<div class="col-lg-2 col-md-6">
													<div class="single_study text-center white_single_study">
														<div class="thumb">
															<a href="javascript:void(0)">
																<img src="<?= base_url(); ?>assets/images/idea/<?= $row->idea_photo; ?>" alt="">
															</a>
														</div>
														<div class="subheading white_subheading">
															<h4><a href="javascript:void(0)"><?= $row->idea_subject; ?></a></h4>
														</div>
													</div>
												</div>
												<?php 
											}
										}
										?>
									</div>
								</div>
							</div>
                        <!--/ case_study_area  -->