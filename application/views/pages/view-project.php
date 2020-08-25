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
          <h3>Daftar Proyek</h3>
          <nav class="brad_cam_lists">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="<?= base_url('home'); ?>">Beranda</a></li>
              <li class="breadcrumb-item active" aria-current="page">Daftar Proyek</li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- /bradcam_area  -->
<!-- section -->
<section class="contact-section section_padding">
  <!-- container -->
  <div class="container">
    <!-- row -->
    <div class="row">

       <?php 
      if (isset($data_idea) and $data_idea != 0) {
        foreach ($data_idea as $row) {
         ?>
         <!-- post -->
         <div class="col-md-4">
          <div class="post">
            <a class="post-img" href="<?= base_url('project/detail_project/') . $row->tr_id; ?>"><img src="<?= base_url(); ?>assets/images/idea/<?= $row->idea_photo; ?>" alt=""></a>
            <div class="post-body">
              <div class="post-meta">
                <!-- <a class="post-category cat-2" href="category.html">New Program</a> -->
                <span class="post-date"><?= date('F d, Y', strtotime($row->created_date)); ?></span>
              </div>
              <h3 class="post-title"><a href="<?= base_url('project/detail_project/') . $row->tr_id; ?>"><?= $row->idea_subject; ?></a></h3>
            </div>
          </div>
        </div>
        <!-- /post -->
        <?php 
      }
    }
    ?>

    
    <!-- post -->
    <!-- <div class="col-md-4">
      <div class="post">
        <a class="post-img" href="blog-post.html"><img src="<?= base_url(); ?>assets/design/img/post/post-3.jpg" alt=""></a>
        <div class="post-body">
          <div class="post-meta">
            <a class="post-category cat-1" href="category.html">New System</a>
            <span class="post-date">Aug 2, 2020</span>
          </div>
          <h3 class="post-title"><a href="blog-post.html">Absen Online</a></h3>
        </div>
      </div>
    </div> -->
    <!-- /post -->

  </div>
  <!-- /row -->
</div>
<!-- /container -->
</div>
<!-- /section -->