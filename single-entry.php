<?php

include('functions.php');
include('navbar.php');
include('head.php');
include('modal-login.php');
include('modal-register.php');
$entry_id = $_GET['id'];
$query = mysqli_query($db_connect, "SELECT * FROM entries WHERE id = '{$entry_id}'");
while($list = mysqli_fetch_array($query)){
    $entry = $list['entry'];
    $title = $list['title'];
    $time = $list['timestamp'];
    $cat_id = $list['category_id'];
  }

  $cat_query = mysqli_query($db_connect, "SELECT * FROM category WHERE id = '{$cat_id}'");
  while($run_cat = mysqli_fetch_array($cat_query)){
    $category_name = $run_cat['category_name'];
  }
?>
<div class="container ">
  <div class="row">
      <div class="col-lg-12 ">
          <a href="#">
              <img class="img-responsive" src="images/rome-und-col.jpg" alt="">
          </a>

        <div class="col-md-8 col-md-offset-2">
          <h3><?= substr($time, 0, -8);?></h3>
          <h3><span class="label label-success"><?=$category_name?></span></h3>
          <h4><?=$title?></h4>
          <p><?=$entry?></p>
        </div>
      </div>

      

    </div>
    <div class="col-lg-12">
      <br>
      <div class="col-md-8 col-md-offset-2" id="submit_comment">
        <div class="form-group">
             <form action="comment-db.php" method="POST">
                <textarea class="form-control" rows="5" id="comment" name="comment"></textarea>
                <br>
                <input type="submit" value="Komentuoti">
            </form>
        </form-group>
      </div>

    </div>
    </div>


        <?php
        $query = mysqli_query($db_connect, "SELECT * FROM comments WHERE entry_id = '{$entry_id}' ORDER BY timestamp DESC");
        while($list = mysqli_fetch_array($query)){
            $comment = $list['comment'];
            $time = $list['timestamp'];
            $user_id = $list['user_id'];
            $status = $list['status'];

            if($user_id != 0){
              $user_query = mysqli_query($db_connect, "SELECT * FROM users WHERE id = '{$user_id}'");
              while($run_user = mysqli_fetch_array($user_query)){
                $username = $run_user['username'];

              }}else {
                $username = 'Anonimas';
              }
              if($status != 'd'){
            ?>
          <div class="col-md-8 col-md-offset-2"  >
            <hr>
            <p><strong><?=$username?></strong> <span><strong><?=$time?></strong></span><span> <strong>parašė:</strong></span>



            <br>
            <p><?=$comment?></p>
          </div>
             <?php } ?>
            <?php
          }
        ?>




<?php
  $_SESSION["entry_id"] = $entry_id;
 ?>

</div>
<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script src="js/script.js"></script>
