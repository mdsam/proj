<?php

include ('connection.php');

//to see if username is alphanumric

$test = $_POST['username'];

//if (!eregi("[^A-Za-z0-9]"),$test) {

//test for duplicate names
$query="SELECT * FROM users WHERE username= '$_POST[username]'" ;
$result=mysql_query($query);
$num=mysql_num_rows($result);

	if($num==0) {

			//if email and password match up
			if(($_POST['pass']==$_POST['pass2']) &&($_POST['email']==$_POST['email2']));

			//generate random code for email
			$confirmation_code=md5(uniqid(rand()));

			}

	else 		{
			 header("location:nameinuser.html");

			}

//else {
//header ("location:invalidname.html");

//}


?>
