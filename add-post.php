<?php
include('head.php');
include('functions.php');
include('navbar.php');
include('modal-login.php');
include('modal-register.php');

if(loggedIn()){

?>
<div class="container-fluid ">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
            <?php if($user_level == 1){
                ?>
                    <li ><a href="admin.php?type=user">Vartotojai(Admin)</a></li>
                    <li><a href="admin.php?type=entries">Įrašai(Admin)</a></li>
                    <li><a href="admin.php?type=add-category">Tvarkyti klasifikatorius(Admin)</a></li>
                    <?php
            }
            ?>
                    <li><a href="add-post.php">Naujas įrašas</a></li>
                    <li><a href="admin.php?type=comment">Komentarai</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="col-sm-8 col-sm-offset-4 col-md-9 col-md-offset-3 main">

    <div class="form-group">
         <form action="blog-db.php" method="POST">

            <label for="category">Kategorija</label>
            <select class="form-control" id="category" name="category">
            <?php
                $sql = mysqli_query($db_connect, "SELECT * FROM category");
                while($list = mysqli_fetch_array($sql)){

                    $list_category_id = $list['id'];
                    $list_category_name = $list['category_name'];
                    $list_categry_status = $list['status'];
                    if($list_categry_status != 'd'){

            ?>
                <option value="<?=$list_category_id?>"><?=$list_category_name?></option>
            <?php
                }
                }
                ?>

            </select>
            <label for="title">Antraštė</label>
            <input type="text" class="form-control" id="title" name="title">

            <br>
            <label for="entry">Įrašas</label>
            <textarea class="form-control" rows="10" id="entry" name="entry"></textarea>
            <br>


            <input type="submit" value="Paskelbti">
            <!--<a href="blog.php">Tiesiog peržiūrėti visus savo įrašus</a>-->
        </form>
    <div>
    </div>
</div>
<script src="//cloud.tinymce.com/stable/tinymce.min.js"></script>
<script>tinymce.init({ selector:'textarea' });</script>
<?php
}else {
    header("Location: index.php");
    }
?>
