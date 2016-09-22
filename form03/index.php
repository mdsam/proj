<?php
require 'core.inc.php';
require 'connect.inc.php';


if(loggedin()) {

	echo 'You are logdin. <a href="logout.php">Logout</a>';
	} else {

	include 'loginform.inc.php';

	}













?>
