 <?php
 
session_start();
include("connection.php");
error_reporting(0);

if(isset($_POST['btn_save']))
{
$name=$_POST['user'];
$Last_name=$_POST['Lastname'];
$Email=$_POST['Email'];
$password=$_POST['password'];

}
mysqli_query($con,"insert into `admin`(`fname`, `lname`, `email`, `pass`) values ('$Firstname','$Last_name','$Email','$password')") 
			or die ("Query 1 is inncorrect........");

mysqli_close($con);



?>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <!-- Adding User profile -->
          <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Add Users</h4>
                  <p class="card-category">Complete User profile</p>
                </div>
                <div class="card-body">
                  <form action="" method="post" name="form" enctype="multipart/form-data">
                    <div class="row">
					
                        <!-- Adding User First Name -->
                      <div class="col-md-3">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">First Name</label>
                          <input type="text" id="user" name="Firstname" class="form-control" required>
                        </div>
                      </div>
					  
					    <!-- Adding User Lastname -->
                      <div class="col-md-4">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Last Name</label>
                          <input type="text" name="Lastname" id="Lastname"  class="form-control" required>
                        </div>
                      </div>
                    </div>
					
					  <!-- Adding User Email -->
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Email</label>
                          <input type="email" name="Email" id="Email" class="form-control" required>
                        </div>
                      </div>
					  
					    <!-- Adding User Password -->
                      <div class="col-md-6">
                        <div class="form-group bmd-form-group">
                          <label class="bmd-label-floating">Password</label>
                          <input type="password" id="password" name="password" class="form-control" required>
                        </div>
                      </div>
                    </div>
                    
                    
                
                      
                   
                    
                    
				
		<button type="submit" name="btn_save" id="btn_save" class="btn btn-primary pull-right">Update User</button>
		<!--<li><a href="admin1.php">Admin</a></li>-->
                    <div class="clearfix"></div>
				
                  </form>
                </div>
              </div>
            </div>
        </div>
      </div>
 <?php

 ?>