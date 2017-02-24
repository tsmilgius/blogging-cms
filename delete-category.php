<?php
include('functions.php');
if(loggedIn()){

$category_name = $_GET['category_name'];
$sql = mysqli_query($db_connect, "UPDATE category SET status='d' WHERE category_name = '{$category_name}' ");
header('Location: admin.php?type=add-category');
} else{
    echo('nepavyko');
}
?>  