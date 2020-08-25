<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!-- compapy_info  -->
<div class="compapy_info">
    <div class="container">
        <div class="row">
            <div class="col-xl-5 col-md-5">
                <div class="man_thumb">
                    <img src="<?= base_url(); ?>assets/design/img/ilstrator/maskot.gif" alt="">
                </div>
            </div>
            <div class="col-xl-7 col-md-7">
                <div class="company_info">
                    <h3>Terimakasih sudah memberikan ide, <br/> idemu sangat berharga! </h3>
                    <?php 
                    if (isset($idea_id)) {
                       ?>
                       <p>No. ide kamu adalah <b> #<?= $idea_id ?> </b> <br/> kamu bisa melacak sudah sejauh mana progres dari ide brilianmu. </p>
                       <?php 
                   }
                   ?>
                   <?php 
                   if (isset($next_url)) {
                      ?>
                      <a href="<?= $next_url; ?>" class="boxed-btn3">kembali ke beranda</a>
                      <?php 
                  }
                  ?>
              </div>
          </div>
      </div>
  </div>
</div>
    <!--/ compapy_info  -->