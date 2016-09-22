<?php
include 'connect.php';

if(isset($_GET['username']) && isset($_GET['password']) && isset($_GET['firstname']) && isset($_GET['surname'])) {

		$username =$_GET['username'];
		$password =$_GET['password'];
		$firstname =$_GET['firstname'];
		$surname =$_GET['surname'];


		if(!empty($username) && !empty($password) && !empty($firstname) && !empty($surname)) {

			$query = "INSERT INTO user VALUES ('' ,'$username','$password','$firstname', '$surname') ";

				if($query_run = mysql_query($query)) {

					echo " Submitted Successfuly";

					} else {

						echo "Opps Something Went Wrong";

						}


			}


		


	}



?>

<b>User Resgistration Form</b> <br><br>
<form action "index.php" method="GET" name="Registration Form">
Username: <input type ="text" name="username"> <br>
Password: <input type ="password" name="password"> <br>
FirstName: <input type ="text" name="firstname"> <br>
Surname: <input type ="text" name="surname"> <br>
 <input type ="submit" value="Submit">
</form>
