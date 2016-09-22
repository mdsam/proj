
<?php
require 'core.inc.php';
require 'connect.inc.php';

if(logdin()) {

	//echo 'You are logged in, '.$firstname.'<a href="logout.php">logout</a>';
	//echo  getuserfield('firstname');

	echo 'You are logged in, '. getuserfield('firstname'). '    <a href="logout.php">Logout</a>';

	
	
	} else {

include 'loginform.php';

}

?>
