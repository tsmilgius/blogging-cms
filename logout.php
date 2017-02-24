<?php

include('functions.php');
include('head.php');
include('navbar.php');

session_destroy();
header('refresh:2; url=index.php');
?>

<div class="container">
    <div id="registration-outcome" class="alert alert-success"  role="alert"><h4>Sėkmingai atsijungėte. Nepamirškite sugrįžti!</h4></div>
</div>
