<?php
ob_start();
session_start();
$current_file = $_SERVER['REQUEST_URI'];
$http_referer = $_SERVER['HTTP_REFERER'];
								

//echo $current_file;


function loggedin() {

	if(isset($_SESSION['user_id']) && !empty ($_SESSION['user_id'])) {

	return true;
	
	} else {

	return false;

	}




function getfield($field){

		$query = "SELECT $field FROM user WHERE id = '".$_SESSION['user_id']."'";

		if($query_run = mysql_query($query)) {

			return mysql_result($query_run, 0, $field );

			}
	}




	}




?>
