<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="mystyle.css">
<title>SIO Library Forms</title>
</head>
<body>
<form action="libraryform.php" method="POST">
Name: <input type="text" name="Name"> <br />
Bookname: <input type="text" name="Bookname"> <br />
Date: <input type="text" name="Date"> <br />
<input type="submit" name="submit"> <br />
</form>

<?php

if (isset ($_POST['submit'])) { 

$con = mysql_connect ("localhost","root","wss");
if (!$con) { die ("could not connect:" .mysql_error()); }

	mysql_select_db ("libform", $con);

	$sql = "INSERT INTO register (Name,Bookname,Date) VALUES ('$_POST[Name]','$_POST[Bookname]','$_POST[Date]')";

mysql_query ($sql, $con);
mysql_close($con);

}
?>


</body>
</html>

