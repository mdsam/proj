<?php
require 'core.inc.php';
require 'connect.inc.php';

if(!logdin()) {

if(
isset($_POST['username']) && isset($_POST['password']) && isset($_POST['password_again']) &isset($_POST['firstname']) &&  isset($_POST['surname'])) {

$username = $_POST['username'];
$password = $_POST['password'];
$password_again = $_POST['password_again'];
$password_hash = md5($password);
$firstname = $_POST['firstname'];
$surname = $_POST['surname'];


if(!empty($username) && !empty($password) && !empty($password_again) && !empty($firstname) && !empty($surname)) {

	if ($password!=$password_again) {

		echo 'password do not match';
		
		} else {


	$query = "SELECT username FROM user WHERE username ='$username'";
	$query_run = mysql_query($query);

	if (@mysql_num_rows($query_run)==1) {

			echo ' The Username '.$username. ' already exist.';

		}else {

			$query = "INSERT INTO user VALUES ('','".mysql_real_escape_string($username)."','".mysql_real_escape_string($password_hash)."','".mysql_real_escape_string($firstname)."','".mysql_real_escape_string($surname)."')";

			if ($query_run = mysql_query($query)) {

				header ('location: register_success.php');

				}else {


				echo 'sorry we could not register you this time';
					}
			}

			}

	} else {

		echo ' Please filled all fields';

		}

}

?>

<form action ="register.php" method="POST">

Username: <br> <input type="text" name="username" maxlength = "40" value = " <?php if(isset ($username)) {echo $username; } ?> "><br><br>
Password: <br> <input type="password" name="password" maxlength = "40"><br><br>
Password again: <br> <input type="password" name="password_again" maxlength = "40"><br><br>
Firstname: <br> <input type="text" name="firstname" maxlength = "40"><br><br>
Surname: <br> <input type="text" name="surname" maxlength = "40"><br><br>
<input type="Submit" value="Register">

</form>

<?php

	} else if (logdin()) {


		echo ' You are already logd in';

		}

?>
