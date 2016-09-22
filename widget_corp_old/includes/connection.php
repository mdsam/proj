<?php

require("constants.php");

//1. Create a connection
$connection = mysql_connect(DB_SERVER, DB_USER, DB_PASS);
if(!$connection) {

		die ("Database Connection Failed:" .mysql_error());

	}

//2. Select a database to use
$db_select = mysql_select_db(DB_NAME, $connection);
if(!$db_select) {

		due("Database Selection Failed:" . mysql_error());

	}
?>
