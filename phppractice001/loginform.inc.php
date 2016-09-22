<?php
//equire 'newcore.inc.php';


if(isset($_POST['username']) && isset($_POST['password'])) {

	$username = $_POST['username'];
	$password = $_POST['password'];
	$password_hash = md5($password);

	

if (!empty($username) && !empty($password)) {

	$query = "SELECT 'id' FROM 'user' WHERE 'username'='$username' AND 'password'='$password_hash'";
	if($query_run =mysql_query($query)) {

	$query_num_rows = mysql_num_rows($query_run);

	if ($query_num_rows==0) {

		echo 'invalid username and password';

		} else 
		

	


		} else {

			echo ' you must supply a username and password';

			}




	}




	}



?>


<form action="test2.php" method="POST">

Username: <input type="text" name="username">
Password: <input type "password" name="password">
<input type="submit" value="LOG IN">



</form>
