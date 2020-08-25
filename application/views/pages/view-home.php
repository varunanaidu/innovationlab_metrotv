<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php
$log_name = '';
if ($this->session->userdata(SESS)) {
	$log_name = ', '.$this->session->userdata(SESS)->log_name;
} 
?>
<div class="shap_big_2 d-none d-lg-block Another_shap_big">
	<img src="<?= base_url(); ?>assets/design/img/ilstrator/big.png" alt="" style="max-height: 720px;">
</div>
<!-- bradcam_area  -->
<div class="bradcam_area">
	<div class="bradcam_shap">
		<img src="<?= base_url(); ?>assets/design/img/ilstrator/bradcam_ils.png" alt="">
	</div>
	<div class="container">
		<div class="row">
			<div class="col-xl-12">
				<div class="bradcam_text text-center">
					<h3>Selamat datang<?= $log_name; ?></h3>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /bradcam_area  -->

<!-- case_study_area  -->
<div class="case_study_area case_bg_1">
    <div class="patrn_1 d-none d-lg-block">
        <img src="<?= base_url(); ?>assets/design/img/pattern/patrn_1.png" alt="">
    </div>
    <div class="patrn_2 d-none d-lg-block">
        <img src="<?= base_url(); ?>assets/design/img/pattern/patrn.png" alt="">
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="row">
                <div class="col-xl-12">
                    <div class="section_title text-center mb-95 white_text">
                        <h3>Tantangan Direksi</h3>
                    </div>
                </div>
            </div>
                <div class="case_active owl-carousel">
                    <?php 
                    if (isset($data_challenge) and $data_challenge != 0) {
                        foreach ($data_challenge as $row) {
                           ?>
                           <div class="single_study text-center">
                            <div class="thumb">
                                <a href="javascript:void(0);">
                                    <!-- <iframe src="<?= base_url(); ?>assets/videos/challenge/<?= $row->challenge_files ?>" id="iframe_container" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" allow="fullscreen"></iframe> -->
                                    <video width="320" height="240" controls>
                                        <source src="<?= base_url(); ?>assets/videos/challenge/<?= $row->challenge_files ?>" type="video/mp4">
                                        </video>
                                      </a>
                                  </div>
                                  <div class="subheading">
                                    <h4><a href="<?= base_url('idea/add?i=').$row->challenge_id ?>"><?= $row->challenge_name; ?></a></h4>
                                    <p><?= $row->challenge_desc; ?></p>
                                </div>
                            </div>
                            <?php 
                        }
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/ case_study_area  -->

<!-- service_area  -->
<div class="service_area minus_padding">
	<div class="container">
		<div class="row">
			<?php 
			if (isset($data_menu) and $data_menu != 0) {
				foreach ($data_menu as $row) {
					?>
					<div class="col-xl-3 col-md-4">
						<a href="<?= base_url($row->nav_ctr); ?>">
							<div class="single_service text-center">
								<div class="icon">
									<img src="<?= base_url(); ?>assets/images/navigation/<?= $row->nav_thumb ?>" alt="">
								</div>
								<h3><?= $row->nav_name ?></h3>
								<p><?= $row->nav_desc ?></p>
							</div>
						</a>
					</div>
					<?php 
				}
			}
			?>
		</div>

	</div>
</div>
<!--/ service_area  -->