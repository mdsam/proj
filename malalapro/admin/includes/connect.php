<?php

//create a database connection
$connection = mysql_connect("localhost", "root", "wss");
if(!$connection){
	die("Database connection failed:" . mysql_error());
	}

//select a database to use.
$db_select = mysql_select_db("mala", $connection);
if(!$db_select) {
	die("Database selection failed:" . mysql_error());

	}

	


?>
