<?php
$con=mysqli_connect("asterisk.internal.directi.com","rouser","Re3dOnl7","asterisk");
// Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}


$result = mysqli_query($con,"SELECT * FROM nps_feedbak where Context="NPS_RC_SUPP" and WAQAT between '2014-08-01 00:00:00' and '2014-08-31 23:59:59' limit 10");


/*
echo "<table border='2'\>
<tr>
<th>id</th>
<th>WAQAT</th>
<th>UniqueID</th>
<th>CallerID</th>
<th>Ans2</th>
<th>Ans3</th>
<th>Ans1</th>
<th>RecFileName</th>
<th>Context</th>
<th>Agent</th>
</tr>";


while($row = mysqli_fetch_array($result)) {
  echo "<tr>";
  echo "<td>" . $row['id'] . "</td>";
  echo "<td>" . $row['WAQAT'] . "</td>";
  echo "<td>" . $row['Uniqueid'] . "</td>";
  echo "<td>" . $row['Callerid'] . "</td>";
  echo "<td>" . $row['Ans1'] . "</td>";
  echo "<td>" . $row['Ans2'] . "</td>";
  echo "<td>" . $row['Ans3'] . "</td>";
  echo "<td>" . $row['RecFileName'] . "</td>";
  echo "<td>" . $row['Context'] . "</td>";
  echo "<td>" . $row['Agent'] . "</td>";
  echo "</tr>";
}

echo "</table>";
*/
mysqli_close($con);


?>

