<?php
// session_start(); 
include('../control/citizenprocess.php');

if(empty($_SESSION["cid"])) 
{
header("Location: citizenl.php"); // Redirecting To Home Page
} ?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/Citi.css">
</head>
<body>
<div>	
<form action="../control/citizenprocess.php" method="POST">
<h1>CITIZEN</h1><br><br>
<div class="container";>
Problem:<br>
	<input name="problem" type="text">
	<br><br>
	Location:<br>
	<input name="location" type="text">
	<br><br>
	<input name="submit" type="submit" value="Submit">
	<a href="../control/logout.php">logout</a>
</div>
</form>
</body>
</html>