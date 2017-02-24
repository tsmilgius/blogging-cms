<?php
include('functions.php');
if(loggedIn() AND $user_level == 1){
  $status = $_GET['status'];
  $commentid = $_GET['list_id'];
var_dump($status, $commentid);
  if($status == 'Rodomas'){

    $sql = mysqli_query($db_connect, "UPDATE comments SET status='d' WHERE id = '{$commentid}' ");
    header('Location: admin.php?type=comment');
  } elseif ($status == 'Nerodomas') {

    $sql = mysqli_query($db_connect, "UPDATE comments SET status='a' WHERE  id = '{$commentid}' ");
    header('Location: admin.php?type=comment');
  }else{
    var_dump($status, $userid);
}
}
?>
