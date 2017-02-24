<?php

session_start();
include('head.php');
include('config.php');

$username = $_POST['username'];
$password = md5($_POST['password']);

$sql = "SELECT * FROM users WHERE username='{$username}' AND password='{$password}' ";
$results = $db_connect->query($sql);
if ($results->num_rows > 0){
    while($row = $results->fetch_assoc()){
        $type = $row['type'];
        if($type == 'd' ){
            ?>
        <div class="container">
            <div class="alert alert-warning"  role="alert"><h4>Vartotojas deaktyvuotas. Susisiekite su administratoriumi!</h4></div>
        </div><?php
        header('refresh:3; url=index.php');   
        } else{
        $_SESSION['user_id'] = $row['id'];
        header("Location: index.php");
        }
    }
    
}else{
    ?>
        <div class="container">
            <div class="alert alert-warning"  role="alert"><h4>Blogas prisijungimo vardas arba slaptažodis</h4></div>
        </div><?php
        header('refresh:3; url=index.php');
}

?>