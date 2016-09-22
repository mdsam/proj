<?php
include 'connect.php';

if(isset($_GET['id'])) {
		$userid = $_GET['id'];

		if(!empty($userid)) {
			$query = "DELETE FROM user WHERE id = '$userid'";
			//$result = mysql_query($query);
				if($result = mysql_query($query)) {

						if(mysql_num_rows($result) == 0)  {

							echo " User does not exist";

							} else {

						echo " User DELETED"; 
						

						} 
												
						
					 

					


			}


		


	}

}


?>


<form action "delete.php" method="GET">
Userid: <input type ="text" name="id"> <br>
<input type ="submit" value="submit">
</form>
