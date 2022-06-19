<?php
include('../model/cdb.php');
session_start(); 

 $error="";
// store session data
if (isset($_POST['submit'])) {
if (empty($_POST['cid']) || empty($_POST['pass'])) {
$error = "cid or pass is invalid1";
}
else
{
$cid = $_POST['cid'];
$name = $_POST['name'];
$pass = $_POST['pass'];
$address = $_POST['address'];
$phone = $_POST['phone'];

$connection = new db();
$conobj=$connection->OpenCon();

$userQuery=$connection->InsertUser($conobj,"citizen",$cid,$name,$pass,$address,$phone);

if ($userQuery===true) {
//$_SESSION["cid"] = $cid;
//$_SESSION["pass"] = $pass;
   echo "done";
//header("location: view/citizenl.php");

   }
 else {
$error = "cid or pass is invalid2";
}
$connection->CloseCon($conobj);

}
}


?>