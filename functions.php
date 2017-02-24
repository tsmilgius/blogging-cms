<?php

session_start();
include('config.php');

function loggedIn(){
    if(isset($_SESSION['user_id']) AND !empty($_SESSION['user_id'])){
        return true;
    }else{
        return false;
    }
}



function changeName($vardas)
{
    $vardininkas = array("as");
    $sauksmininkas = array("ai");
    $be_galunes = substr ($vardas, 0 , strlen($vardas)-2);
    $galune = substr ($vardas, strlen($vardas), -2);
    return $be_galunes . $sauksmininkas[array_search($galune, $vardininkas)];
}


if(loggedIn()){
    $my_id = $_SESSION['user_id'];
    $user_query = mysqli_query($db_connect, "SELECT username, user_level FROM users WHERE id = '$my_id'");
    $run_user = mysqli_fetch_array($user_query);
    $username = $run_user['username'];
    $user_level = $run_user['user_level'];
    $query_level = mysqli_query($db_connect,"SELECT name FROM user_level WHERE id = '$user_level' ");
    $run_level = mysqli_fetch_array($query_level);
    $level_name = $run_level['name'];
}
