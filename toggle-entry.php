<?php
include('functions.php');
if(loggedIn() AND $user_level == 1){
  $status = $_GET['status'];
  $entry_id = $_GET['list_id'];
var_dump($status, $entry_id);
  if($status == 'a'){

    $sql = mysqli_query($db_connect, "UPDATE entries SET status='d' WHERE id = '{$entry_id}' ");
    header('Location: admin.php?type=entries');
  } elseif ($status == 'd') {

    $sql = mysqli_query($db_connect, "UPDATE comments SET status='a' WHERE  id = '{$entry_id}' ");
    header('Location: admin.php?type=entries');
  }else{

}
}
?>
