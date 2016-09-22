<!DOCYTPE HTML>
<html>
<head>
<meta http=equiv="Content="text/html"; charset=utf-8">
<title>Remove Email</title>
</head>
<body>


<form method="POST" action="removeemail.php">
    <label for="email">Enter Email Address To Remove:</label> </br>
    <input type="text" id="email" name="email" /><br />
    
    
       <input type="submit" value="Remove Email" name="submit" />
  </form>

</body>
</html>


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
	
$email = $_POST['email'];

$query = "DELETE FROM email_list WHERE email= '$email'";

$result = mysql_query($query) or die (mysql_error());;

printf ("Records Deleted: %d\n", mysql_affected_rows());


} else {

$query = "SELECT * FROM email_list WHERE email= '$email'";

$query2= mysql_query($query) or die (mysql_error());;

if($query2) {

	echo " Email Address Not Found";

	}
	


}


?>
