<?php
include 'connect.php';


if(isset($_GET['username']) && isset($_GET['password']) && isset($_GET['firstname']) && isset($_GET['surname'])) {
		$userid = $_GET['id'];
		$username =$_GET['username'];
		$password =$_GET['password'];
		$firstname =$_GET['firstname'];
		$surname =$_GET['surname'];
		
		if(!empty($username) && !empty($password) && !empty($firstname) && !empty($surname)) {
			$query = "UPDATE user SET username='$username', password='$password', firstname ='$firstname', surname='$surname'  WHERE id = '$userid'";
			$query_run = mysql_query($query);
		//	$count = mysql_affected_rows($query_run);

		printf("Records updated: %d\n", mysql_affected_rows());

			


					

					
		

/*
				//if($query_run = mysql_query($query) && mysql_num_rows($query_run) == 0)
				
				//if(($query_run) && mysql_num_rows($query_run) !== 0)
					//if(mysql_num_rows($query_run) !== 1)

					{
			
					
					echo " User Updated";

					} else {

						echo "Opps Something Went Wrong";

						}


			}


		*/


	}

}

?>



<form action "update" method="GET">
Id: <input type ="text" name="id"> <br>
Username: <input type ="text" name="username"> <br>
Password: <input type ="password" name="password"> <br>
FirstName: <input type ="text" name="firstname"> <br>
Surname: <input type ="text" name="surname"> <br>
 <input type ="submit" value="Update">
</form>
