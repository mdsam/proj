
<form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">

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

	foreach($_POST['todelete'] as $delete_id) {

		$query = "DELETE FROM email_list WHERE id='$delete_id'";
		$result = mysql_query($query) or die ( 'Error Querying Database');

		}

		echo " Customer removed. <br />";
	}

	$query = "SELECT * FROM email_list";
	$result = mysql_query($query) or die (mysql_error());

	while($row = mysql_fetch_array($result)){

		echo '<input type="checkbox" value=" ' .$row['id']. '" name="todelete[]" />';
		echo $row ['firstname'];
		echo $row ['lastname'];
		echo $row ['email'];
		echo '<br />';

		}

?>

<input type="submit" name="submit" value="Remove" />

</form>

<?php



?>
