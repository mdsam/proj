<?php
require 'core.inc.php';
require 'connect.inc.php';

if (logdin()){

	echo ' You are logged in, '.$firstname.'. <a href="logout.php">logout</a>';
	echo  getuserfield('firstname');


	
	} else {

include 'loginform.php';

}

?>
