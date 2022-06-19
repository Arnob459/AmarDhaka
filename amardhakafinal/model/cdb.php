<?php
class db{
 
function OpenCon()
 {
 $dbhost = "localhost";
 $dbuser = "root";
 $dbpass = "";
 $db = "amar_dhaka";
 $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
 
 return $conn;
 }
 function InsertUser($conn,$table,$cid,$name,$pass,$address,$phone)
 {
    $result = $conn->query("INSERT INTO $table VALUES('$cid','$name','$pass','$address','$phone',0)");
    return $result;
 }
 function CheckUser($conn,$table,$cid,$pass)
 {
$result = $conn->query("SELECT * FROM ". $table." WHERE cid='". $cid."' AND pass='". $pass."'");
 return $result;
 }
 
 
 function InsertcitizenUser($conn,$table,$problem,$location)
 {
    $result = $conn->query("INSERT INTO $table VALUES('$problem','$location')");
    return $result;
 }
 function CloseCon($conn)
 {
 $conn -> close();
 }
}
?>