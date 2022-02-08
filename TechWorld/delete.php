<html>
<head>

<?php
error_reporting(0);
// Adding connection from connection.php
include 'connection.php';
$name = $_POST['user'];
$sql = "DELETE from admin where id = $name";
//User able to delete from site 
	if($_POST['submit']){
		if (mysqli_query($con,$sql)){
		echo "Data Deleted successfully";
	}
	else{
		echo " Something went wrong";
	}
	}
?>
</head>
<body>
<form action = "delete.php" method="POST">
	<h4> Give id to delete the user data </h4>
	
	ID: <input type="text" name="user">
	
	<input type = "submit" name="submit" value="Send Info">
	<li><a href="admin1.php" target="_blank"> Admin </a></li>

</form>
</body>
</html>