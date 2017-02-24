<?php

    include('functions.php');
    include('navbar.php');
    include('head.php');
    include('modal-login.php');
    include('modal-register.php');

?>
<body>

 <div class="view hm-black-strong">
     <div class="full-bg-img flex-center">
         <div class="container">
             <div class="white-text text-center wow fadeInUp intro-style">
                 <h2>Sveiki atvykę į Kelionių blogą!</h2>
             </div>
         </div>
     </div>
 </div>

    <!-- Page Content -->
    <div class="container customfont-style">
    <div class="container">
        <div class="col-lg-12">
          <br>


      </div>

        <!-- Page Heading -->

        <!-- /.row -->

        <!-- Project One -->


<?php include('blog.php');?>





        <hr>

        <!-- Pagination -->
        <div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                    <li>
                        <a href="#">&laquo;</a>
                    </li>
                    <li class="active">
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
                    </li>
                    <li>
                        <a href="#">&raquo;</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Laura ir Tomas VCS 2017</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/script.js"></script>



</body>

</html>
