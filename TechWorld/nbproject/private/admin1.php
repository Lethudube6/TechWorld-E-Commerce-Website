<html>
<head>
<title> Admin Panel</title>
<style>
body {
	margin:0px;
	border:0px;
}
#header{
	width:100%;
	height:120px;
	background:black;
	color:blue;
}
#sidebar{
	width:300px;
	height:400px;
	background:white;
	float:left;
}
#data{
	height: 700px;
	background:2c3e50;
	font-size: 23px;
	color:black;
}
#Adminlogo{
	background: white;
	border-radius: 50px;
}
u1 li{
	padding: 20px; 
	border-bottom: 2px solid grey;
}
u1 li:hover{
	background: 2c3e50;
	color:white;
}
</style>
</head>
<body>
<div id="header">
<center><img src="computer.jpg" alt="Adminlogo" id="Adminlogo"><br>This is the Admin page</center

</div>
<div id="sidebar">

<u1>
	<li><a href="add.php" target="_blank"> Add Data </a></li>
	<li><a href="delete.php" target="_blank"> Delete Data </a></li>
	<li><a href="update.php" target="_blank"> Update Data </a></li>
	<li><a href="addproduct.php" target="_blank"> Add Products </a></li>
	<li> Developer </li>
	<li><a href="admin1.php"> Log off</a></li>
	

</u1>

</div>

<div id="data"><br>
<center><h3> Hello</h3>
<p> This TechWorld</p></center>

<?php
error_reporting(0);
include 'connection.php';
$sql="SELECT * FROM admin";
$result = mysqli_query($con, $sql);

if (mysqli_num_rows($result) > 0) {
	echo "<h3><center>Data available!<center></h3>";
	while($row = mysqli_fetch_assoc($result)) {
	echo "<h4>ID: </h4>". $row["id"]. "<br>" . "Name:  " .$row["fname"]. "<br>" . " Lastname:" . $row["lname"]. "<br>" . " Email: ". $row["email"]. "<br>" . "Password: " . $row['pass']."<br>";
	
	}
}else{
	echo "<h3><center>No user data found<center></h3>";
}
?>
</div>
</body>
</html>