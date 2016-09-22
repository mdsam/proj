<?php
$con=mysqli_connect("asterisk.internal.directi.com","rouser","Re3dOnl7","asterisk");
// Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$result = mysqli_query($con,"SELECT * FROM agent_status where queue='support_nation_queue' and agentstatus in ('CONNECT', 'LOGIN') ");

echo "<table border=2 style=\"width:50%;float:left;\">

<tr>
<th>AGENT</th>
<th>SN-QUEUE</th>
<th>AGENTSTATUS</th>
<th>TIMESTAMP</th>


</tr>";

while($row = mysqli_fetch_array($result)) {
  echo "<tr>";
  echo "<td>" . $row['agent'] . "</td>";
  echo "<td>" . $row['queue'] . "</td>";
   echo "<td>" . $row['agentstatus'] . "</td>";
  echo "<td>" . $row['timestamp'] . "</td>";
  echo "</tr>";
}



$result = mysqli_query($con,"SELECT * FROM agent_status where queue='techsupport_queue' and agentstatus in ('CONNECT', 'LOGIN') ");

echo "<table border=2 style=\"width:50%;float:left;\">
<tr>
<th>AGENT</th>
<th>RC-QUEUE</th>
<th>AGENTSTATUS</th>
<th>TIMESTAMP</th>


</tr>";


while($row = mysqli_fetch_array($result)) {
  echo "<tr>";
  echo "<td>" . $row['agent'] . "</td>";
  echo "<td>" . $row['queue'] . "</td>";
   echo "<td>" . $row['agentstatus'] . "</td>";
  echo "<td>" . $row['timestamp'] . "</td>";
  echo "</tr>";
}
echo "</table>";

mysqli_close($con);

//header("Refresh:10"); this is for refershment of page.

echo "By: mehmood.k";

?>


