<?php
    include('head.php');
    include('config.php');
    // include('functions.php');

    ?>
    <div class="col-lg-12" id="filter-div">

          <?php
              $sql = mysqli_query($db_connect, "SELECT * FROM category WHERE status !='d'");
              while($list = mysqli_fetch_array($sql)){

                  $list_category_id = $list['id'];
                  $list_category_name = $list['category_name'];
                  $list_categry_status = $list['status'];
                  ?>

                  <a href="blog.php?category=<?=$list_category_id?>"<span class="label label-info"><?=$list_category_name?></span></a>
                <?php } ?>
<!--
      <a href="blog.php?date=ASC">Nuo seniausio</a>
      <a href="blog.php?date=DESC">Nuo naujausio</a> -->


    </div>

  <?php

// if(isset($_GET['date'])){
//   $order_by = $_GET['date'];
// } else{
//   $order_by = 'ASC';
// }



if(isset($_GET['category'])){
  $filter = $_GET['category'];
  $sql = "SELECT * FROM entries WHERE status = 'a' AND category_id = '{$filter}' ORDER BY timestamp DESC";
} else{
$filter = 0;
$sql = "SELECT * FROM entries WHERE status = 'a' ORDER BY timestamp DESC";
}


//
// if($order_by == 'ASC'){
//   $sql = "SELECT * FROM entries WHERE status = 'a' ORDER BY timestamp ASC";
// } else{
//   $sql = "SELECT * FROM entries WHERE status = 'a' ORDER BY timestamp DESC";
// }




    $results = $db_connect->query($sql);
    if($results->num_rows >0){
        $i = 0;
        while($row = $results->fetch_assoc()){
        $data[$i] = $row;
        $i++;
        }
    }else{
        $data['no_entries'] = "Nėra blogo įrašų :(";
    }
?>
    <?php if(isset($data['no_entries'])){
        echo('<p>' . $data['no_entries'] . "</p>");
    } else{
        foreach($data as $entry){

          $short_entry = substr($entry['entry'], 0, 700);
          $entry_id = $entry['id'];
          $entry_picture = $entry['picture'];
          $entry_category_id = $entry['category_id'];
          $entry_time = $entry['timestamp'];
          $entry_user_id = $entry['user_id'];
            ?>
        <div class="row">

            <div class="col-md-7">
                <a href="#">

                    <img class="img-responsive" src="<?=$entry_picture?>" alt="">
                </a>
            </div>

<?php

$sql = $db_connect->query("SELECT COUNT(*) FROM comments WHERE entry_id='{$entry_id}' AND status = 'a'");
$row = $sql->fetch_row();
$count = $row[0];


$sqluser = mysqli_query($db_connect, "SELECT * FROM users WHERE id = '{$entry_user_id}' ");
while($list = mysqli_fetch_array($sqluser)){

    $list_username = $list['username'];

    ?>


<?php }


 ?>

            <div class="col-md-5">
                <h3><?=$entry['title'];?></h3>
                <h5>Parašė &nbsp<strong><?=$list_username?></strong></h5>
                <p><?=$short_entry?></p>
                <?php
                $sql = mysqli_query($db_connect, "SELECT * FROM category WHERE status !='d' AND id = '{$entry_category_id}' ");
                while($list = mysqli_fetch_array($sql)){

                    $list_category_id = $list['id'];
                    $list_category_name = $list['category_name'];
                    $list_categry_status = $list['status'];
                    ?>


                <?php }  ?>



                <h6><?=substr($entry_time, 0, 10)?></h6>
                <a class="btn btn-success" href=""><?=$list_category_name?></a>
                <a class="btn btn-primary" href="single-entry.php?id=<?=$entry_id?>">Skaityti daugiau <span class="glyphicon glyphicon-chevron-right"></span></a>
                <a class="btn btn-primary" href="single-entry.php?id=<?=$entry_id?>"><?=$count?>&nbsp;&nbsp;<span class="glyphicon glyphicon-comment"></span></a>
            </div>

        </div>
        <hr>
            <?php
        }
}
?>
