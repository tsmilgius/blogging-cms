<?php
session_start();
include('config.php');
$entry = $_POST['entry'];
$title = $_POST['title'];
$userID = $_SESSION['user_id'];
$category = $_POST['category'];

$sql = "INSERT INTO entries (user_id, entry, title, category_id)
VALUES('{$userID}', '{$entry}', '{$title}', '{$category}')";

if($db_connect->query($sql)){
    header('Location: index.php');
}else{
    echo('klaida: '. $sql . "<br>" . $db_connect-> error);
}
?>
