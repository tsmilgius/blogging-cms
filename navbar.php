<?php


?>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container customfont-style">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand font-navrow" href="index.php">Kelionių blogas</a>
            </div>

            <div class="collapse navbar-collapse font-navrow" id="bs-example-navbar-collapse-1">
                 <ul class="nav navbar-nav">
                    <li><a href="#" id="toggle-filter-div">Filtrai</a></li>

                </ul>


                <ul class="nav navbar-nav navbar-right">
<?php

if(loggedIn()){
?>

                    <li><a href="admin.php">Valdymo skydas</a></li>
                    <li><a href="logout.php">Atsijungti</a></li>

                    <?php
                    }else{
                        ?>
                    <li><a data-toggle="modal"  href="index.php#login-modal">Prisijungti</a></li>
                    <?php
                    }
                    ?>
                </ul>
            </div>

            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->


<?php
if(loggedIn()){	?>
<script type="text/javascript">
function startTime(){
	var today = new Date();
	var h = today.getHours();
}

var currHours = new Date().getHours();
if (currHours < 12){
		var hello="Labas rytas, ";
}else if (currHours < 18){
	var hello="Laba diena, ";
}else{
	var hello="Labas vakaras, ";
}
	</script>





		 <div class="alert alert-success alert-style" id="hello-login-popup">
	<script type="text/javascript">document.write(hello)</script><strong><?=$username?>! </strong>
</div> <?php } ?>

    </nav>



	 <!--Mask-->

    <!--/.Mask-->
