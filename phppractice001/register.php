<?php

require 'core.inc.php';
require 'connect.inc.php';


if(!logdin()) {


if
(isset($_POST['username']) && isset($_POST['password']) && isset($_POST['password_again']) && isset($_POST['firstname']) &&isset($_POST['suranme'])) {

$username = $_POST['username'];
$password = $_POST['password'];
$password_again = $_POST['password_again'];
$password_hash = md5($password);
$firstname = $_POST['firstname'];
$suranme = $_POST['suranme'];


if(!empty($username) && !empty($password) && !empty ($password_again) && !empty($firstname) && !empty($suranme)) {

		if($password!=$password_again) {

			echo ' Password do not match';
			
			} 
		

	} else {

		$query = "SELECT username FROM user WHERE username = '$username'";
		$query_run = mysql_query ($query);
		
		
		
		if (mysql_num_rows($query_run)==1) {

			echo 'Username '.$username. ' already exists.';
			
			} else {

				$query = "INSERT INTO user VALUE ('','".$username."','".$password_hash."','".$firstname."','".$suranme."')";

				if ($query_run = mysql_query($query)) {

					header ('Location: register_success.php');
					
					} else { echo ' sorry';}
				}

		echo ' All field Are Required';
		
		}

	
	}




	
//
?>



<form action ="register.php" method="POST">

Username:<br> <input type="text" name="username" value="<?php if (isset ($username)) {echo $username; } ?>" > <br><br>
Password:<br> <input type="password" name="password" value=> <br><br>
Password again:<br> <input type="password" name="password_again"> <br><br>
Firstname:<br> <input type="text" name="firstname" > <br><br>
Surname:<br> <input type="text" name="suranme"> <br><br>
<input type="submit" value="Register">




</form>








<?php
	
	} else if (logdin()) {

		echo ' You are logdin .';
	}

	











?>
