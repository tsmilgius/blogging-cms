<?php
include('head.php');
include('functions.php');
include('navbar.php');
include('modal-login.php');
include('modal-register.php');

if(loggedIn()){

?>
<div class="container-fluid ">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
            <?php if($user_level == 1){
                ?>
                    <li ><a href="admin.php?type=user">Vartotojai(Admin)</a></li>
                    <li><a href="admin.php?type=entries">Įrašai(Admin)</a></li>
                    <li><a href="admin.php?type=add-category">Tvarkyti klasifikatorius(Admin)</a></li>
                    <?php
            }
            ?>
                    <li><a href="add-post.php">Naujas įrašas</a></li>
                    <!-- <li><a href="admin.php?type=overview">Apžvalga</a></li> -->
                    <li><a href="admin.php?type=comment">Komentarai</a></li>
                    <!-- <li><a href="admin.php?type=smth">Dar kažkas</a></li> -->
            </ul>
        </div>
    </div>
</div>


<?php

if (isset($_GET['type']) AND $_GET['type']==='user'){
    if($user_level == 1){ /* Vartotojų valdymas pasiekiamas tik adminams arba useriams kurių levelis = 1*/
?>

<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header">Vartotojų valdymas</h1>

    <h4 class="sub-header">Vartotojų sąrašas</h4>
          <div class="table-responsive">
            <table class="table table-hover">
                <thead>
                    <tr>
                    <th>Vartotojo vardas</th>
                    <th>el. paštas</th>
                    <th>Rolė</th>
                    <th>Būsena</th>
                    <th>Sukūrimo data</th>
                    <th>Veiksmai</th>
                    </tr>
                </thead>

        <?php
            $list_query = mysqli_query($db_connect, "SELECT id, username, email, user_level, type, timestamp FROM users");
            while($run_list = mysqli_fetch_array($list_query)){
                $list_id = $run_list['id'];
                $list_username = $run_list['username'];
                $list_email = $run_list['email'];
                $list_user_level = $run_list['user_level'];
                $list_type = $run_list['type'];
                $list_timestamp = $run_list['timestamp'];

                if($list_type == 'a'){
                    $list_type = 'Aktyvus';
                } else {
                    $list_type = 'Deaktyvuotas';
                }

                $level_query = mysqli_query($db_connect, "SELECT name FROM user_level WHERE id = '{$list_user_level}'");
                while($run_level = mysqli_fetch_array($level_query)){
                    $list_user_level = $run_level['name'];

                ?>
                <tbody>
                    <tr>
                        <td><a href="single-user.php?username=<?=$list_username?>"><?=$list_username?></a></td>
                        <td><?=$list_email?></td>
                        <td><?=$list_user_level?></td>
                        <td><?=$list_type?></td>
                        <td><?=$list_timestamp?></td>
                        <?php
                          if($list_type == 'Aktyvus'){
                        ?>
                        <td><a href="ban-user.php?status=<?=$list_type?>&userid=<?=$list_id?>">BAN</a></form></td>
                        <?php } else { ?>
                        <td><a href="ban-user.php?status=<?=$list_type?>&userid=<?=$list_id?>">UNBAN</a></form></td>

                      <?php } ?>


                    </tr>
                </tbody>
                <?php
            }
          }

        ?>
    </table>
    </div>
    </div>
<?php
    }else{
    ?>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">Neturite teisės</h1>
        </div>
    <?php
    }
}elseif (isset($_GET['type']) AND $_GET['type']==='entries' ){
    if($user_level == 1){
?>
    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header">Įrašų valdymas</h1>
    <h4 class="sub-header">Visi įrašai</h4>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                        <th>Autorius</th>
                        <th>Antraštė</th>
                        <th>Kategorija</th>
                        <th>Sukūrimo data</th>
                        <th>Būsena</th>
                        <th>Veiksmas</th>
                        </tr>
                    </thead>

        <?php

            $list_query = mysqli_query($db_connect, "SELECT * FROM entries");
            while($run_list = mysqli_fetch_array($list_query)){
                $list_user_id = $run_list['user_id'];
                $list_title = $run_list['title'];
                $list_category_id = $run_list['category_id'];
                $list_timestamp = $run_list['timestamp'];
                $list_status = $run_list['status'];
                $list_id = $run_list['id'];

                $query_username = mysqli_query($db_connect, "SELECT username FROM users WHERE id = '{$list_user_id}'");
                while($list_username = mysqli_fetch_array($query_username)){
                    $list_username_name = $list_username['username'];

                    }
                $query_category = mysqli_query($db_connect, "SELECT category_name FROM category WHERE id = '{$list_category_id}'");
                while($list_category = mysqli_fetch_array($query_category)){
                    $list_category_name = $list_category['category_name'];

                    }
                ?>
                <tbody>
                    <tr>
                        <td><?=$list_username_name?></td>
                        <td><?=$list_title?></td>
                        <td><?=$list_category_name  ?></td>
                        <td><?=$list_timestamp?></td>
                        <td><?=$list_status?></td>
                        <?php if ($list_status == 'a'){ ?>
                        <td><a href="toggle-entry.php?status=<?=$list_status?>&list_id=<?=$list_id?>">Išjungti</a></td>
                        <?php } else{ ?>
                          <td><a href="toggle-entry.php?status=<?=$list_status?>&list_id=<?=$list_id?>">Įjungti</a></td>
                          <?php
                        } ?>
                    </tr>
                </tbody>
                <?php
            }
        ?>
    </table>
    </div>
    </div>
    </div>
    <?php
    }else{
    ?>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">Neturite teisės</h1>
        </div>
    <?php
    }
}elseif (isset($_GET['type']) AND $_GET['type']==='add-category' ){
    if($user_level ==1){
    ?>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

            <h1 class="page-header">Klasifikatorių tvarkymas</h1>
                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#category">Įrašų kategorijos</a></li>
                    <li><a data-toggle="tab" href="#users">Userių lygiai</a></li>
                </ul>

                <div class="tab-content">
                    <div id="category" class="tab-pane fade in active">
                        <h3>Įrašų kategorijos</h3>
                        <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>Kategorija</th>
                                <th>Būsena</th>
                            </tr>
                        </thead>
                        <?php
                        $sql = mysqli_query($db_connect, "SELECT * FROM category");
                        while($list = mysqli_fetch_array($sql)){
                            $list_category_id = $list['id'];
                            $list_category_name = $list['category_name'];
                            $list_status = $list['status'];
                        ?>

                        <tbody>
							<tr>
								<td><?=$list_category_name?></td>
                                <?php if($list_status == 'a'){ ?>
								<td><a href="delete-category.php?category_name=<?=$list_category_name?>">Panaikinti</a></td>
                                <?php } else
                                { ?>
                                    <td><a href="activate-category.php?category_name=<?=$list_category_name?>">Aktyvuoti</a></td>
                                    <?php
                                }

                                ?>
							</tr>
                        </tbody>
				<?php
            }

                ?>
                        </table>
                    </div>
                    <div>
                        <form action="add-category.php" method="POST">
                        <input type="text" name="category_new">
                        <input type="submit" value="Pridėti">
                        </form>
                    </div>
            </div>


                    <div id="users" class="tab-pane fade">
                        <h3>Userių lygiai</h3>
                        <p>TO DO: Atvaizduoti visas userių levelius leisti juos redaguoti (pavadinimus) ir leisti pridėti naujų.</p>
						<a>Pridėti naują<a>
                    </div>

			</div>
		</div>

    <?php

    }else{
    ?>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">Neturite teisės</h1>
        </div>
    <?php

    }
?>

<?php
}elseif (isset($_GET['type']) AND $_GET['type']==='comment' ){
  if($user_level == 1 || $user_level == 2){
    ?>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        <h1 class="page-header">Komentarų valdymas</h1>
        <div class="table-responsive">
          <table class="table table-hover">
            <thead>
              <tr>
                  <th>Straipsnio antraštė</th>
                  <th>Komentaro autorius</th>
                  <th>Komentaro būsena</th>
                  <th>Komentaro data</th>
                  <th>Komentaro pradžia</th>
                  <th>Veiksmas</th>
              </tr>
          </thead>

          <?php
          $sql = mysqli_query($db_connect, "SELECT * FROM comments");
          while($list = mysqli_fetch_array($sql)){
              $list_entry_id = $list['entry_id'];
              $list_user = $list['user_id'];
              $list_status = $list['status'];
              $list_comment = substr($list['comment'], 0, 35);
              $list_time = $list['timestamp'];
              $list_id = $list['id'];


              if($list_user != 0){
                $user_query = mysqli_query($db_connect, "SELECT * FROM users WHERE id = '{$list_user}'");
                while($run_user = mysqli_fetch_array($user_query)){
                  $username = $run_user['username'];
                }}else {
                  $username = 'Anonimas';
                }


              if($list_status == 'a'){
                $status = 'Rodomas';
              } elseif($list_status == 'd'){
                $status = 'Nerodomas';
              }

              $title_query = mysqli_query($db_connect, "SELECT title FROM entries WHERE id = '{$list_entry_id}'");
              while($run_title = mysqli_fetch_array($title_query)){
                $title = $run_title['title'];
              }

          ?>

          <tbody>
            <tr>
              <td><?=$title?></td>
              <td><?=$username?></td>
              <td><?=$status?></td>
              <td><?=$list_time?></td>
              <td><?=$list_comment?></td>
              <?php if($status == 'Rodomas'){?>
              <td><a href="toggle-comment.php?status=<?=$status?>&list_id=<?=$list_id?>">Nerodyti</a></td> <?php
            } else{ ?>
              <td><a href="toggle-comment.php?status=<?=$status?>&list_id=<?=$list_id?>">Rodyti</a></td>
            <?php  } ?>
            </tr>
          </tbody>
        <?php
      } ?>
        </table>
    </div>
  </div>

<?php


}

?>
<?php
}elseif (isset($_GET['type']) AND $_GET['type']==='smth' ){
?>
    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header">Dar kažko valdymas valdymas</h1>
<?php
}elseif (isset($_GET['type']) AND $_GET['type']==='smth' ){
?>
    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header">Dar kažko valdymas valdymas</h1>
<?php
}
else {

    ?>
    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        <h1 class="page-header">Pasirinkite ką norite daryti iš meniu kairėje</h1>
    </div>
<?php
}

} else{
    ?>
    <div class="container">
        <div class="alert alert-danger"  role="alert"><h4>Jūs neprisijungęs kaip administratorius!</h4></div>
    </div>
<?php
}
?>
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script src="js/script.js"></script>
