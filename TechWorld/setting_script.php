<?php
    session_start();
    require 'connection.php';
    if(!isset($_SESSION['Email'])){
        header('location:index.php');
    }  
    $old_password= md5(md5(mysqli_real_escape_string($con,$_POST['oldPassword'])));
    $new_password= md5(md5(mysqli_real_escape_string($con,$_POST['newPassword'])));
    $Email=$_SESSION['Email'];
    //echo $Email;
    $password_from_database_query="select password from tbl_user where Email='$Email'";
    $password_from_database_result=mysqli_query($con,$password_from_database_query) or die(mysqli_error($con));
    $row=mysqli_fetch_array($password_from_database_result);
    //echo $row['password'];
    if($row['password']==$old_password){
        $update_password_query="update tbl_user set password='$new_password' where Email='$Email'";
        $update_password_result=mysqli_query($con,$update_password_query) or die(mysqli_error($con));
        echo "Your password has been updated.";
        ?>
        <meta http-equiv="refresh" content="3;url=products.php" />
        <?php
    }else{
        ?>
        <script>
            window.alert("Wrong password!!");
        </script>
        <meta http-equiv="refresh" content="1;url=settings.php" />
        <?php
        //header('location:settings.php');
    }
?>