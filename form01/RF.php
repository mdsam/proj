Hi, 

I am sending you the files which i practiced ..please check



FOR INDEX.PHP

<?php
require 'core.inc.php';
require 'connect.inc.php';

if (logdin()){

	echo ' You are logged in, '.$firstname.'. <a href="logout.php">logout</a>';
	echo  getuserfield('firstname');


	
	} else {

include 'loginform.php';

}

?>
--------------------------------------------------------
LOGINFORM
<?php

if(isset($_POST['username'])&&isset($_POST['password'])){

	$username = $_POST['username'];
	$password = $_POST['password'];
	$password_hash = md5($password);
	

		if(!empty($username)&&!empty($password)) {

		$query = "SELECT id FROM user WHERE username='$username' AND password='$password_hash'";
		if($query_run = mysql_query($query)) {

			$query_num_rows = mysql_num_rows($query_run);

			
			if($query_num_rows==0) {

				echo ' Invalid username and password.';
				
				}else if ($query_num_rows==1) {

				$user_id = mysql_result($query_run, 0, 'id');

				$_SESSION['user_id']=$user_id;
				header('Location:index.php');

					}

		}


		}else {

		echo 'You must supply username and password';
		

		}



	
	}

?>

<form action ="<?php echo $current_file ; ?>" method="POST">

Username: <input type="text" name="username">
Password: <input type="password" name="password">
<input type="submit" value="LOGIN">

</form>

--------------------------------------------------------
CORE FILE:

<?php
ob_start();
session_start();
$current_file = $_SERVER['SCRIPT_NAME'];

if(isset ($_SERVER['HTTP_REFERER']) && !empty($_SERVER['HTTP_REFERER'])) {
$http_referer = $_SERVER['HTTP_REFERER'];
}

function logdin() {
if (isset($_SESSION['user_id']) &&!empty($_SESSION['user_id'])) {

		return true;

	}else {
			return false;

		}

	}


function getuserfield($field) {

	$query = "SELECT firstname, surname FROM user WHERE id='".$_SESSION['user_id']."'";

	if($query_run = mysql_query($query)) {

		if ($query_result = mysql_result ($query_run, 0, 'firstname')) {

			return $query_result;

			}

		}
		}
	
?>

--------------------------------------------------------
REGISTRATION FORM:

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

--------------------------------------------------------
