<?php 
session_start();
include "cnct.php";
include "header.php";
$em=$_SESSION['email'];
$qry="SELECT * FROM agent";
$res=mysqli_query($conn,$qry);
    while($row=mysqli_fetch_assoc($res)){
        if($em==$row['agent_email']){
            echo "Username:".$row['agent_usrname'];
            echo "</br>";
            echo "Locality:".$row['locale'];
            echo "</br>";
            echo "Phone:".$row['phone']; 
        }
    } 
?>
<html>
    <style>
        body{
	text-align: center;
	background-image: url("2.jpg");
    background-size: cover;
    padding:5px 2px ;
    background-repeat: no-repeat;
    background-size: cover;
	}
	.form{
		font-size:  30px;
		color :red;
		}
	h2{
   font-size: 40px;
   color: blue;
   text-align: center;
   font-family: Courier New, Courier, monospace;
}
.footer{
	  font-size: 20px;
   color:  black;
   text-align: center;
   }
   #submit{
   	 width: 80px;  height: 20px;}

    </style>
</html>