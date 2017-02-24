<?php
include('functions.php');
if(loggedIn() AND $user_level == 1){
  $status = $_GET['status'];
  $userid = $_GET['userid'];
var_dump($status);
  if($status == 'Aktyvus'){
    $status = 'a';
    $sql = mysqli_query($db_connect, "UPDATE users SET type='d' WHERE type = '{$status}' AND id = '{$userid}' ");
    header('Location: admin.php?type=user');
  } elseif ($status == 'Deaktyvuotas') {
    $status = 'd';
    $sql = mysqli_query($db_connect, "UPDATE users SET type='a' WHERE type = '{$status}' AND id = '{$userid}' ");
    header('Location: admin.php?type=user');
  }else{
    var_dump($status, $userid);
}
}
?>
