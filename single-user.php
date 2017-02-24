
<?php
include('head.php');
include('functions.php');
include('navbar.php');
include('modal-login.php');
include('modal-register.php');

if(loggedIn() AND $user_level == 1){
    $username = $_GET['username'];

?>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                    <li ><a href="admin.php?type=user">Vartotojai</a></li>
                    <li><a href="admin.php?type=entries">Įrašai</a></li>
                    <li><a href="admin.php?type=overview">Apžvalga</a></li>
                    <li><a href="admin.php?type=comment">Komentarai</a></li>
                    <li><a href="admin.php?type=smth">Dar kažkas</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header">Vartotojas <?=$username?></h1>
    <p>Pasirinkite veiksmus</p>
  

</div>
<?php
}
?>
