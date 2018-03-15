<?php 
include "cnct.php";
if(isset($_POST['sub'])) {
        $name=$_POST['name'];
        $email=$_POST['email'];
        $pass=$_POST['pass'];
        $loc=$_POST['locale'];
        $phone=$_POST['phone'];
        $qry = "INSERT INTO `agent` ( `agent_usrname`, `agent_email`, `password`,`locale`,`phone`) VALUES ('$name', '$email', '$pass','$loc','$phone')";
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
                <h2>AgentRegistration</h2>
                <form class="form" method="post" action="">
                Name: <input type="text" name="name">&emsp;
                Email: <input type="text" name="email">&emsp;
                Password: <input type="password" name="pass">
                Locality:<input type="text" name="locale"><br>
                Phone:<input type="number" name="phone"><br>
                <input type="submit" name="sub" value="Reister">
            </form>
            </div> 
            <p class="footer">&#169; 2017 BoltDeliveries &#9889;</p>
        </div>
    </body>  
</html>