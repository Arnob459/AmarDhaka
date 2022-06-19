<?php
include('../model/cdb.php');
session_start(); 
 $error="";
// store session data
if (isset($_POST['submit'])) {
if (empty($_POST['problem']) || empty($_POST['location'])) {
$error = "problem or location is invalid1";
}
else
{

$problem = $_POST['problem'];
$location = $_POST['location'];

$connection = new db();
$conobj=$connection->OpenCon();

$userQuery=$connection->InsertcitizenUser($conobj,"cprlm",$problem,$location);

if ($userQuery===true) {
//$_SESSION["cid"] = $cid;
//$_SESSION["pass"] = $pass;
echo '<script> alert ("Problem successfully Submited")</script>';

  
}
 else {
$error = "problem or location is invalid2";
}
$connection->CloseCon($conobj);

}
}


?>