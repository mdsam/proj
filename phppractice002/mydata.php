<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="mystyle.css">
<title>mydata</title>


</head>
<body>



<?php



$con = mysql_connect ("localhost","root","wss");
if (!$con) { die ("could not connect:" .mysql_error()); }

	mysql_select_db ("libform", $con);
	$sql = "SELECT * FROM register";
	$mydata = mysql_query ($sql, $con);


while ($records = mysql_fetch_array($mydata)){


	echo  $records['Name']." ".$records['Bookname']." ".$records['Date'];
	echo "<br />";
	

}





mysql_close($con);


?>


</body>
</html>
