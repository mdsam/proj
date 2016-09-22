<?php
$con=mysqli_connect("asterisk.internal.directi.com","rouser","Re3dOnl7","asterisk");
// Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$result = mysqli_query($con,"SELECT * FROM agent_status where queue in ('support_nation_queue','techsupport_queue') and agentstatus = 'LOGIN'");

echo "<table border='2'>
<tr>
<th>AGENT</th>
<th>QUEUE</th>
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
?>

