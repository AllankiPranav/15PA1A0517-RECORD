<?php
include "cnct.php";
if(isset($_POST['sub'])){
	$name=$_POST['name'];
	$email=$_POST['email'];
    $password=$_POST['password'];
    $phone=$_POST['phone'];
	$qry="INSERT INTO `delivery` (`del_usrname`,`del_email`,`password`,`phone`) VALUES ('$name','$email','$password','$phone')";
	mysqli_query($conn,$qry) or die("Connection failed: " . mysqli_error($conn));
	header('location:login.php');
	}
?>
<!DOCTYPE html>
<html>
    <head>
            <title>BoltDeliveries</title>
            <link rel="stylesheet" href="proj.css">
    </head>   
    <body>
        <div class="header">
            <?php include "header.php"?>   
        </div>
        <div class="content">
            <div class="disp">
                <h2>CustomerRegistration</h2>
                <form class="form" method="post" action="">
					Name<input type="text" name="name">&emsp;
					Email<input type="text" name="email">&emsp;
                    Password<input type="password" name="password"><br>
                    Phone number<input type="text" name="phone"><br>
					<input type="submit" name="sub" value="Register">
            	</form>
            </div> 
            <p class="footer">&#169; 2017 BoltDeliveries &#9889;</p>
        </div>
    </body>  
</html>