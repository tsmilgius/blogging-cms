<?php

/*Nebereikalingas failas*/
session_start();


if(isset($_SESSION['username'])){

?>

<p>Sveiki <?=$_SESSION['username']?></p>

<?php
}else {
    header("Location: index.php");
    }
?>