<?php
//create a database connection
$connection = mysql_connect("localhost", "root", "wss");
if(!$connection){
	die("Database connection failed:" . mysql_error());
	}

//select a database to use.
$db_select = mysql_select_db("elvis_store", $connection);
if(!$db_select) {
	die("Database selection failed:" . mysql_error());

	}

if(isset($_POST['submit'])) {
	
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$email = $_POST['email'];



if($firstname=='' or $lastname=='' or $email=='') {

	
		echo " <script> alert('some fileds is missing')</script>";
		exit();

		}

		else {

			
		$query = "INSERT INTO email_list(firstname,lastname,email) value('$firstname','$lastname','$email')";


		if(mysql_query($query)) {

			echo "<center> <h1> Added Succesfuly ! </h1> </center>";

			} 



			}
















}




?>
