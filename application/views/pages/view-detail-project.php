<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php 
$idea_id = '';
$idea_subject = '';
$idea_desc = '';
$idea_detail = '';
$attachment = [];
$is_team = '';
if (isset($data_idea) and $data_idea != 0) {
  foreach ($data_idea as $row) {
    $idea_id = $row->idea_id;
    $idea_subject = $row->idea_subject;
    $idea_desc = $row->idea_desc;
    $idea_detail = $row->idea_detail;
  }
}
if (isset($idea_attachment) and $idea_attachment != 0) {
  foreach ($idea_attachment as $row2) {
    $attachment[] = $row2->attachment_name;
  }
}

if (isset($data_team)) {
  $is_team = $data_team;
}
?>
<!-- bradcam_area  -->
<div class="bradcam_area">
  <div class="bradcam_shap">
    <img src="<?= base_url(); ?>assets/design/img/ilstrator/bradcam_ils.png" alt="">
  </div>
  <div class="container">
    <div class="row">
      <div class="col-xl-12">
        <div class="bradcam_text text-center">
          <h3><?= $idea_subject; ?></h3>
          <nav class="brad_cam_lists">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="<?= base_url('home'); ?>">Beranda</a></li>
              <li class="breadcrumb-item"><a href="<?= base_url('project'); ?>">Daftar Proyek</a></li>
              <li class="breadcrumb-item active" aria-current="page">Detail Proyek</li>
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
    <div class="col-xl-12">
      <div class="bradcam_text text-left">
        
      </div>
    </div>
    <div class="tabs">
      <div class="tabby-tab">
        <input type="radio" id="tab-1" name="tabby-tabs" checked>
        <label for="tab-1">Penjelasan</label>
        <div class="tabby-content">
          <h4>Summary</h4>
          <p><?= $idea_desc; ?>.</p>
          <?php 
          if ($is_team == 'Eligible') {
           ?>
           <h4>Detail</h4>
           <p><?= $idea_detail; ?>?</p>
           <?php 
         }
         ?>
       </div>
     </div>

     <?php 
     if ($is_team == 'Eligible') {
       ?>
       <div class="tabby-tab">
        <input type="radio" id="tab-2" name="tabby-tabs">
        <label for="tab-2">Tim</label>
        <div class="tabby-content">
          <div class="row">
            <?php 
            if (isset($log_auth) and $log_auth != 0) {
             ?>
             <a class="btn-add-team" href="javascript:void(0)" title=""><i class="fa fa-plus"></i> Tambah anggota tim</a>
             <?php 
           }
           ?>
         </div>
         <div class="row">
          <?php 
          if (isset($data_member) and $data_member != 0) {
            foreach ($data_member as $member) {
             ?>
             <div class="user">
              <div class="profile-image">
                <?php
                if ($member->user_photo != '') {
                 ?>
                 <img src="<?= base_url(); ?>assets/images/user/<?= $member->user_photo; ?>"/>
                 <?php 
               } else{
                ?>
                <img src="<?= base_url(); ?>assets/images/no_photo.jfif"/>
                <?php 
              }
              ?>
            </div>
            <div class="name"><?= $member->user_fname; ?></div>
            <div class="role"><?= $member->position; ?></div>
          </div>
          <?php
        }
      }
      ?>
    </div>
          <!-- <div class="pg-orgchart">
            <div class="org-chart">
              <ul>
                <li>
                  <div class="user">
                    <img src="https://s3.amazonaws.com/uifaces/faces/twitter/adellecharles/128.jpg" class="img-responsive" />
                    <div class="name">Luann Brannick</div>
                    <div class="role">System Architect</div>
                    <a class="manager" href="#">Mike Dinardo</a>
                  </div>
                  <ul>
                    <li>
                      <div class="user">
                        <img src="https://s3.amazonaws.com/uifaces/faces/twitter/nzcode/128.jpg" class="img-responsive" />
                        <div class="name">Lynn Maynard</div>
                        <div class="role">System Architect</div>
                        <a class="manager" href="#">Luann Brannick</a>
                      </div>
                      <ul>
                        <li>
                          <div class="user">
                            <img src="https://s3.amazonaws.com/uifaces/faces/twitter/towhidzaman/128.jpg" class="img-responsive" />
                            <div class="name">Fleta Odriscoll</div>
                            <div class="role">System Architect</div>
                            <a class="manager" href="#">Lynn Maynard</a>
                          </div>
                        </li>
                        <li>
                          <div class="user">
                            <img src="https://s3.amazonaws.com/uifaces/faces/twitter/arashmil/128.jpg" class="img-responsive" />
                            <div class="name">Elfreda Grebin</div>
                            <div class="role">System Architect</div>
                            <a class="manager" href="#">Lynn Maynard</a>
                          </div>
                        </li>
                      </ul>
                    </li>
                    <li>
                      <div class="user">
                        <img src="https://s3.amazonaws.com/uifaces/faces/twitter/vista/128.jpg" class="img-responsive" />
                        <div class="name">Jahn Philson Doe</div>
                        <div class="role">System Architect</div>
                        <a class="manager" href="#">Luann Brannick</a>
                      </div>
                      <ul>
                        <li>
                          <div class="user">
                            <img src="https://s3.amazonaws.com/uifaces/faces/twitter/marcosmoralez/128.jpg" class="img-responsive" />
                            <div class="name">Roy Lemarie</div>
                            <div class="role">System Architect</div>
                            <a class="manager" href="#">Jahn Philson Doe</a>
                          </div>
                        </li>
                        <li>
                          <div class="user">
                            <img src="https://s3.amazonaws.com/uifaces/faces/twitter/jina/128.jpg" class="img-responsive" />
                            <div class="name">Eloisa Stubbolo</div>
                            <div class="role">System Architect</div>
                            <a class="manager" href="#">Jahn Philson Doe</a>
                          </div>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        -->
      </div>
    </div>
    <?php 
  }
  ?>
  <?php 
  if ($is_team == 'Eligible') {
   ?>
   <div class="tabby-tab">
    <input type="radio" id="tab-3" name="tabby-tabs">
    <label for="tab-3">Ruang Obrolan</label>
    <div class="tabby-content">

      <div class="messaging">
        <div class="inbox_msg">
          <div class="mesgs">
            <div class="comment-list">
             <div class="single-comment justify-content-between d-flex">
              <div class="user justify-content-between d-flex">
               <div class="thumb">
                <img src="<?= base_url(); ?>assets/design/img/comment/comment_1.png" alt="">
              </div>
              <div class="desc">
                <p class="comment">
                 kapan kita bisa memulai?
               </p>
               <div class="d-flex justify-content-between">
                 <div class="d-flex align-items-center">
                  <h5>
                   <a href="#">Paulo Armi</a>
                 </h5>
                 <p class="date">August 4, 2020 at 3:12 pm </p>
               </div>
             </div>
           </div>
         </div>
       </div>
     </div>
     <div class="comment-list">
       <div class="single-comment justify-content-between d-flex">
        <div class="user justify-content-between d-flex">
         <div class="thumb">
          <img src="<?= base_url(); ?>assets/design/img/comment/comment_2.png" alt="">
        </div>
        <div class="desc">
          <p class="comment">
           Bagaimana kalau besok?
         </p>
         <div class="d-flex justify-content-between">
           <div class="d-flex align-items-center">
            <h5>
             <a href="#">Daniel Ierachi</a>
           </h5>
           <p class="date">August 4, 2020 at 3:12 pm </p>
         </div>
       </div>
     </div>
   </div>
 </div>
</div>

<div class="type_msg">
  <div class="input_msg_write">
    <input type="text" class="write_msg" placeholder="Type a message" />
    <button class="msg_send_btn" type="button"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
  </div>
</div>
</div>
</div>
</div>
</div>
</div>
<?php 
}
?>
<?php 
if ($is_team == 'Eligible') {
 ?>
 <div class="tabby-tab">
  <input type="radio" id="tab-4" name="tabby-tabs">
  <label for="tab-4">Media</label>
  <div class="tabby-content">
   <p>Files that link to this idea.</p>
   <?php 
   if ( sizeof($attachment) != 0 ) {
    for ( $i = 0; $i < sizeof($attachment); $i++) { 
     ?>
     <a href="<?= base_url(); ?>assets/files/idea/<?= $attachment[$i] ?>" title="" target="_blank"><label style="width: fit-content;"><i class="fa fa-download"></i> File - <?= $i+1 ?></label></a><br>
     <?php 
   }
 }
 ?>
</div>
</div>
<?php 
}
?>

<?php 
if ($is_team == 'Eligible') {
 ?>
 <div class="tabby-tab">
  <input type="radio" id="tab-6" name="tabby-tabs">
  <label for="tab-6">Progress</label>
  <div class="tabby-content">
    <span class="add-todo"><i class="fa fa-plus"></i> Tambah</span>

    <div class="scrumboard row">
      <div class="column flex" data-value="0">
        <!-- todo -->
        <h1>Todo</h1>
        <?php 
        if (isset($data_task) and $data_task != 0) {
          foreach ($data_task as $row) {
            if ($row->task_position == 0) {
             ?>
             <div class="portlet" data-task="<?= $row->task_id; ?>" data-idea="<?= $row->idea_id; ?>">
              <div class="portlet-header"><?= $row->task_name ?></div>
              <div class="portlet-content"><?= $row->task_desc ?></div>
            </div>
            <?php 
          }
        }
      }
      ?>

    </div>

    <div class="column flex" data-value="1">
      <!-- ongoing -->
      <h1>Ongoing</h1>
      <?php 
      if (isset($data_task) and $data_task != 0) {
        foreach ($data_task as $row) {
          if ($row->task_position == 1) {
           ?>
           <div class="portlet" data-task="<?= $row->task_id; ?>" data-idea="<?= $row->idea_id; ?>">
            <div class="portlet-header"><?= $row->task_name ?></div>
            <div class="portlet-content"><?= $row->task_desc ?></div>
          </div>
          <?php 
        }
      }
    }
    ?>
  </div>

  <div class="column flex" data-value="2">
    <!-- testing -->
    <h1>Testing</h1>
    <?php 
    if (isset($data_task) and $data_task != 0) {
      foreach ($data_task as $row) {
        if ($row->task_position == 2) {
         ?>
         <div class="portlet" data-task="<?= $row->task_id; ?>" data-idea="<?= $row->idea_id; ?>">
          <div class="portlet-header"><?= $row->task_name ?></div>
          <div class="portlet-content"><?= $row->task_desc ?></div>
        </div>
        <?php 
      }
    }
  }
  ?>
</div>

<div class="column flex" data-value="3">
  <!-- done -->
  <h1>Done</h1>
  <?php 
  if (isset($data_task) and $data_task != 0) {
    foreach ($data_task as $row) {
      if ($row->task_position == 3) {
       ?>
       <div class="portlet" data-task="<?= $row->task_id; ?>" data-idea="<?= $row->idea_id; ?>">
        <div class="portlet-header"><?= $row->task_name ?></div>
        <div class="portlet-content"><?= $row->task_desc ?></div>
      </div>
      <?php 
    }
  }
}
?>
</div>



</div>

</div>
</div>
<?php 
}
?>

</div>
</section>
<!-- ================ contact section end ================= -->

<div id="default-modal" class="modal fade" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog modal-md">
    <div class="modal-content">
      <form method="POST" id="task-form" accept-charset="UTF-8">
        <div class="modal-header">
          <button type="button" class="close text-red" data-dismiss="modal" tabindex="-1">&times;</button>
        </div>
        <div class="modal-body">
          <div class="row clearfix">
            <div class="form-group col-md-12">
              <label>Subject <span class="text-red">*</span></label>
              <input type="text" class="form-control" id="task_name" maxlength="100" name="task_name" value="" placeholder="..." required>
            </div>
            <div class="form-group col-md-12">
              <label>Description <span class="text-red">*</span></label>
              <textarea class="form-control" name="task_desc" id="task_desc" placeholder="..." required=""></textarea>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <input type="text" class="collapse" id="idea_id" name="idea_id" value="<?= $idea_id; ?>">
          <button type="submit" id="btn-submit" class="btn btn-primary">Simpan</button>
        </div>
      </form>
    </div>
  </div>
</div>

<div id="default-modal-2" class="modal fade" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
  <div class="modal-dialog modal-md">
    <div class="modal-content">
      <form method="POST" id="team-form" accept-charset="UTF-8">
        <div class="modal-header">
          <button type="button" class="close text-red" data-dismiss="modal" tabindex="-1">&times;</button>
        </div>
        <div class="modal-body">
          <div class="row clearfix">
            <div class="form-group col-md-12">
              <label>Nama <span class="text-red">*</span></label>
              <select class="form-control" name="user_id" id="user_id" required="">
                <option value=""></option>
                <?php 
                if (isset($data_user) and $data_user != 0) {
                  foreach ($data_user as $user) {
                    ?>
                    <option value="<?= $user->user_id ?>"><?= $user->user_fname ?></option>
                    <?php 
                  }
                }
                ?>
              </select>
            </div>
            <div class="form-group col-md-12">
              <label>Posisi <span class="text-red">*</span></label>
              <input type="text" class="form-control" id="position" maxlength="100" name="position" value="" placeholder="..." required>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <input type="text" class="collapse" id="idea_id" name="idea_id" value="<?= $idea_id; ?>">
          <button type="submit" id="btn-submit-2" class="btn btn-primary">Simpan</button>
        </div>
      </form>
    </div>
  </div>
</div>