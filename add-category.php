<?php
include('functions.php');
if(loggedIn()){

$category = $_POST['category_new'];
$sql = mysqli_query($db_connect, "INSERT INTO category (category_name) VALUES ('{$category}')");
header('Location: admin.php?type=add-category');
} else{
    echo('nepavyko');
}
?>