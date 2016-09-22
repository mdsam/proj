<?php
include ('connection.php');

// set variable
$passkey=$_GET['passkey'];


$sql1="SELECT * from temp WHERE code='$passkey'";
$result1=mysql_query($sql1);


//if successfully queried
if ($result1) {

		// how many rows have key
		$count=mysql_num_rows($result1);

		// if passkey is in database, retrive data
		if($count==1) {

			$rows=mysql_fetch_array($result1);
			$namex=$rows['username'];
			$emailx=$rows['email'];
			$passwordx=$rows['password'];

		//takeout space in username
		$name=str_replace(' ','',$namex);
		$email=str_replace(' ','',$emailx);
		$password=str_replace(' ','',$passwordx);


		//insert into users table
		$sql2="INSET INTO users SET username='$name', email='$email', password='$password'";
		$result2=mysql_query($sql2);
		

		//game table
		$sql3="INSERT INTO gamesstat SET username='$name', energy='100';
		$result3=mysql_query($sql3);

		
			}


			else {


			echo "worng confirmation code";

			
				}

			if (result2) {

				header("location: confirmation2.html");
				}

	}





















?>
