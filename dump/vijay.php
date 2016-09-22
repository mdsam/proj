<?php
/*
//create a database connection
$connection = mysql_connect("localhost", "root", "wss");
if(!$connection){
	die("Database connection failed:" . mysql_error());
	}

	//select a database to use.
$db_select = mysql_select_db("repmydb", $connection);
if(!$db_select) {
	die("Database selection failed:" . mysql_error());

	}


$query = "SELECT * from employess";

$result = mysql_query($query);


while($row= mysql_fetch_array($result)) {

	//echo $row['firstname']." ".$row['lastname']. " " .$row['birthdate']."<br>";
	 print_r($row);

	
	}



*/




$people = array(

			array(
			'name' =>'bob',
			'shopping_list' => array('fruit','veg', 'milk')
			),
	
			array(

			'name'=> 'dave',
			'shopping_list'=> array('veg', 'milk')
			),

			
			array(
			'name'=> 'jim',
			'shopping_list'=> array('milk')
			)


			);


print_r


?>
