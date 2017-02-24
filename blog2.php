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
$sql = "SELECT COUNT(id) FROM entries WHERE status='a'";
$query = mysqli_query($db_connect, $sql);
$row = mysqli_fetch_row($query);
$rows = $row[0];
$page_rows = 3;
$last = ceil($rows/$page_rows);
if($last < 1){
	$last = 1;
}
$pagenum = 1;
if(isset($_GET['pn'])){
	$pagenum = preg_replace('#[^0-9]#', '', $_GET['pn']);
}
if ($pagenum < 1) {
    $pagenum = 1;
} else if ($pagenum > $last) {
    $pagenum = $last;
}
$limit = 'LIMIT ' .($pagenum - 1) * $page_rows .',' .$page_rows;
$textline1 = "Įrašai (<b>$rows</b>)";
$textline2 = "Lapas <b>$pagenum</b> of <b>$last</b>";
$paginationCtrls = '';
if($last != 1){
	/* First we check if we are on page one. If we are then we don't need a link to
	   the previous page or the first page so we do nothing. If we aren't then we
	   generate links to the first page, and to the previous page. */
	if ($pagenum > 1) {
        $previous = $pagenum - 1;
		$paginationCtrls .= '<a href="'.$_SERVER['PHP_SELF'].'?pn='.$previous.'">Ankstesnis</a> &nbsp; &nbsp; ';
		// Render clickable number links that should appear on the left of the target page number
		for($i = $pagenum-4; $i < $pagenum; $i++){
			if($i > 0){
		        $paginationCtrls .= '<a href="'.$_SERVER['PHP_SELF'].'?pn='.$i.'">'.$i.'</a> &nbsp; ';
			}
	    }
    }
	// Render the target page number, but without it being a link
	$paginationCtrls .= ''.$pagenum.' &nbsp; ';
	// Render clickable number links that should appear on the right of the target page number
	for($i = $pagenum+1; $i <= $last; $i++){
		$paginationCtrls .= '<a href="'.$_SERVER['PHP_SELF'].'?pn='.$i.'">'.$i.'</a> &nbsp; ';
		if($i >= $pagenum+4){
			break;
		}
	}
	// This does the same as above, only checking if we are on the last page, and then generating the "Next"
    if ($pagenum != $last) {
        $next = $pagenum + 1;
        $paginationCtrls .= ' &nbsp; &nbsp; <a href="'.$_SERVER['PHP_SELF'].'?pn='.$next.'">Next</a> ';
    }
}


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
          $entry_title = $entry['title'];
          $list .= '<p><a href="blog2.php?id='.$entry_id.'">'.$entry_title.'</a> <br>Written '.$entry_time.'</p>';
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
                <p><?=$list></p>
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
