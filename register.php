<?php
include('functions.php');
include('head.php');
include('navbar.php');


$username = $_POST['username'];
$password = md5($_POST['password']);
$mail = $_POST['email'];



$sql = "SELECT * FROM users WHERE username='{$username}'";
$results = $db_connect->query($sql);
if ($results->num_rows > 0){
    ?>
    <div class="container">
        <div class="alert alert-warning"  role="alert"><h4>Toks vartotojas jau yra!</h4></div>
    </div>
    <?php
    header('refresh:3; url=index.php');
}else{

$sql = "INSERT INTO users (username, email, password) VALUES ('{$username}', '{$mail}', '{$password}')";

    if($db_connect->query($sql)){
    ?>
    <div class="container">
        <div class="alert alert-success"  role="alert"><h4>Registracija sėkminga! Galite <a href="index.php">prisijungti</a></h4></div>
    </div>
    <?php
    header('refresh:3; url=index.php');
    } else{
        ?>
    <div class="container">
        <div class="alert alert-danger"  role="alert"><h4>Klaida <?=$sql.$db_connect->error?> </h4></div>
    </div>
        <?php
        header('refresh:3; url=index.php');
    }
}

?>
