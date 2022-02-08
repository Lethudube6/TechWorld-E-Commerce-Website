<html>
<head>

<?php
error_reporting(0);
include 'connection.php';

//User can update their Details
$name=$_POST['user'];
$Last_name=$_POST['Lastname'];
$Email=$_POST['Email'];
$password=$_POST['password'];

//Uodated from myphpadmin table called admin
$sql="UPDATE `admin` SET `fname`=[Firstname],`lname`=[Lastname],`email`=[Email],`pass`=[password] WHERE 1";

	if($_POST['submit']){
		if (mysqli_query($con,$sql)){
		echo "Data Entered successfully";
	}
	else{
		echo " Something went wrong";
	}
	}
?>
</head>
<body>
<form action = "update.php" method="POST">
	<h4> Update your data and provide the folowing: </h4>
	
	Firstname: <input type="text" name="Firstname">
	Lastname: <input type="text" name="Lastname">
	Email: <input type="text" name="Email">
	Password: <input type="text" name="password">
	
	
	
	<input type = "submit" name="submit" value="Send Info">
	<li><a href="admin1.php" target="_blank"> Admin </a></li>

</form>
</body>
</html>