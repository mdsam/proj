<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="mystyle.css">
<title>mydata 2</title>
</head>
<body>


<?php
$con = mysql_connect ("localhost","root","wss");
if (!$con) { die ("could not connect:" .mysql_error()); }

	mysql_select_db ("libform", $con);
	$sql = "SELECT * FROM register";
	$mydata = mysql_query ($sql, $con);

echo " <table border = 1>
<tr>

<th> Name</th>
<th> Bookname</th>
<th> Date</th>

</tr> ";


while ($records = mysql_fetch_array($mydata)){

	echo "<tr>";
	echo "<td>" . $records['Name'] . "</td>";
	echo "<td>" . $records['Bookname'] . "</td>";
	echo "<td>" . $records['Date'] . "</td>";
	echo "</tr>";

}

echo "</table>";




mysql_close($con);


?>


</body>
</html>
