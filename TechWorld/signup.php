<?php
    require 'connection.php';
    session_start();
    if(isset($_SESSION['Email'])){
        header('location: products.php');
    }
?>

<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="img/lifestyleStore.png" />
        <title>TechWorld</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- latest compiled and minified CSS -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
        <!-- jquery library -->
        <script type="text/javascript" src="bootstrap/js/jquery-3.2.1.min.js"></script>
        <!-- Latest compiled and minified javascript -->
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <!-- External CSS -->
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <div>
            <?php
                require 'header.php';
            ?>
            <br><br>
            <div class="container">
                <div class="row">
                    <div class="col-xs-4 col-xs-offset-4">
                        <h1><b>SIGN UP</b></h1>
                        <form method="post" action="user_registration_script.php">
                            <div class="form-group">
                                <input type="text" class="form-control" name="Firstname" placeholder="Firstname" required="true">
                            </div>
							 <div class="form-group">
                                <input type="text" class="form-control" name="Lastname" placeholder="Lastname" required="true">
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" name="Email" placeholder="Email" required="true" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
                            </div> 
                            <div class="form-group">
                                <input type="password" class="form-control" name="password" placeholder="password(min. 6 characters)" required="true" pattern=".{6,}">
                            </div>
                          
                            <div class="form-group">
                                <input type="submit" class="btn btn-primary" value="Sign Up">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <br><br><br><br><br><br>
           <footer class="footer">
               <div class="container">
               <center>
                   <p>| Contact Us: +27791671352</p>
                   <p>This website is developed by TechWorld</p>
               </center>
               </div>
           </footer>

        </div>
    </body>
</html>
