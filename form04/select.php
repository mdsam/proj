<?php
include 'connect.php';


if(isset($_GET['id'])) {

		$userid =$_GET['id'];
		if(!empty($userid)) {
		$query = "SELECT firstname, surname FROM user WHERE id = '$userid'";
		$result = mysql_query($query);
		if(mysql_num_rows($result) == 0) {
				echo " Id Does Not Exist";
			}
			
			
		
}


	WHILE ($rows = mysql_fetch_array($result)){
	//$id = $rows['id'];
       $firstname = $rows['firstname'];
       $surname = $rows['surname'];
     
       echo "This id belongs to: $firstname $surname ";
	
	}
	
}















?>


<form action "select.php" method="GET">
Userid: <input type ="text" name="id"> <br>
 <input type ="submit" value="Fetch">
</form>
