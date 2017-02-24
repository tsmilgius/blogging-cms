<?php
session_start();
include('config.php');
$comment = $_POST['comment']; //komentaro tekstas
$entry_id = $_SESSION['entry_id']; //straipsnio kuriam siųstas komentaras id.

// Nusistatom ar yra prisijungęs useris ir jo ID, jei nėra prisijungusio priskiriam
// kas toliau lygu Anonimas (bailys).

if(isset($_SESSION['user_id']) AND !empty($_SESSION['user_id'])){
    $userID = $_SESSION['user_id'];
}else{
    $userID = '0';
}

//įrašinėjam į DB lentą comments ir grįžtam į tą patį puslapį
$sql ="INSERT INTO comments (user_id, comment, entry_id) VALUES ('{$userID}', '{$comment}', '{$entry_id}')";

if($db_connect->query($sql)){
    header('Location: single-entry.php?id='. $entry_id);
}else{
    echo('klaida: '. $sql . "<br>" . $db_connect-> error);
}
