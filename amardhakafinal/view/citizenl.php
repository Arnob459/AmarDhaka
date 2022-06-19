<?php
include('../control/citizenlcheck.php');

if(isset($_SESSION['cid'])){
header("location: citizen.php");
}
?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/citil.css">
<script src="../js/cjs.js"></script>
</head>
<body>

<div>

<h2 id="header">LOGIN PAGE</h2>

<div class="container";>
<p id="mytext"></p>  
<div id="login">
<form name="myForm" action="" onsubmit="return validateForm()" method="post">
    ID:<br><input type="text" id="cid" name="cid" placeholder="Enter your cid" ><br><br>
    Password:<br><input type="password" id="pass" name="pass" placeholder="Enter your pass" ><br><br>
    <input name="submit" type="submit" value="LOGIN">
</form>
<a id="loginr" href="citizenr.php">Registration</a><br><br>
<a id="loginr" href="home.php">Home</a><br><br>
</div>
<br>
</div>
<?php echo $error; ?>

<br>
<br>
<br><br>
<br>




</div>
</body>
</html>