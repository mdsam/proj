<?php

$host = "localhost"; //Hostname
$username = "root"; // username
$password= "wss"; //databasepassword
$db_name= "php_test";


//connect to database
mysql_connect ("$host", "$username","$password") or die ( "Could not connect to server");
mysql_select_db("$db_name") or die ( "Could not connect to DB");






?>
