<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="mystyle.css">
<title>mydata 3</title>
</head>
<body>


<?php
$con = mysql_connect ("localhost","root","wss");
if (!$con) { die ("could not connect:" .mysql_error()); }

mysql_select_db ("libform", $con);

if (isset($_POST['update'])) {

$updateQuery = "UPDATE register SET Name='$_POST[Name]', Bookname='$_POST[Bookname]', Date='$_POST[date]' WHERE Name='$_POST[hidden]' ";
mysql_query ($updateQuery, $con);


};


$sql = "SELECT * FROM register";
$mydata = mysql_query ($sql, $con);

echo " <table border = 1>
<tr>
<th> Name</th>
<th> Bookname</th>
<th> Date</th>
</tr> ";


while ($records = mysql_fetch_array($mydata)){
	echo " <form action=mydata3.php method=post>"; 
	echo "<tr>";
	echo "<td>" . "<input type=text name=Name value=" .  $records['Name'] . " </td>";
	echo "<td>" . "<input type=text name=Bookname value=".  $records['Bookname'] . " </td>";
	echo "<td>" . "<input type=text name=Date value=".  $records['Date'] . " </td>";
	echo "<td>" . "<input type=hidden name=hidden value=".  $records['Name'] . " </td>";
	echo "<td>" . "<input type=submit name=update value=update" . " </td>";
	echo "</form>"
}

echo "</table>";

mysql_close($con);


?>


</body>
</html>
