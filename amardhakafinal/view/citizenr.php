<?php
// session_start();
include('../control/citizenrprocess.php');

if(isset($_SESSION['cid'])){
header("location: ../view/citizen.php");
}
?>
<!DOCTYPE html>
<html>
  <head>
  <script src="../js/cjs.js"></script>
    <title>Registration Page</title>

    <link rel="stylesheet" type="text/css" href="../Css/citireg.css" />
  </head>
  <body>
    <div class="regibox">  

 <div>   
<form action="" onsubmit="return validateForm()" method="post">
<h1>REGISTER HERE</h1>
<div class="container";>
	
  
<p>UserId</p>
<input type="text"id="cid"onkeyup="cidval()" name="cid" placeholder="Enter your UserID" ><br><p id="errorcid"></p>
<p>name</p>
<input type="text"id="name"onkeydown="nameval()"name="name" placeholder="Enter your name" ><br><p id="errorname"></p>
<p>Pass</p>
<input type="text"id="pass"onkeyup="passval()" name="pass" placeholder="Enter your password" ><br><p id="errorpass"></p>
<p>Address</p>
<input type="text"id="address"onkeydown="addressval()"  name="address" placeholder="Enter your address" ><br><p id="erroraddress"></p>
<p>Phone</p>
<input type="text" id="phone" onkeyup="numval()" name="phone" placeholder="Enter your Phone" ><br><p id="errorphone"></p>
<input name="submit" type="submit" value="Register"><br>
<a href='../index.php'>Back to home</a>   ||
<a href='../view/citizenl.php'>Back to login</a>

</div>
</form>
<br>
<?php echo $error; ?>

</body>
</html>

