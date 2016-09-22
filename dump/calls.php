<?php
$con=mysqli_connect("asterisk.internal.directi.com","rouser","Re3dOnl7","asterisk");
// Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$result = mysqli_query($con,"select agent, count(*) as calls from queue_log where agent in ('angad.c','anuja.t','ben.j','chris.d','dwayne.f','elora.d','geetanjali.b','jaideep.t','jitin.s','karishma.p','mayuri.a','moulshri.t','nitesh.k','prachi.s','Provit.ch','rahul.k','rahul.na','randall.l','ryan.d','ryan.me','sameer.d','shaheena.k','sharon.r','shraddha.s','siddartha.j','soumyakant.d','vishal.de') and event in ('COMPLETEAGENT','COMPLETECALLER')  and time>=curdate() group by agent");

echo "<table border='1'>
<tr>
<th>agent</th>
<th>call</th>



</tr>";

while($row = mysqli_fetch_array($result)) {
  echo "<tr>";
  echo "<td>" . $row['agent'] . "</td>";
  echo "<td>" . $row['calls'] . "</td>";
  echo "</tr>";
}

echo "</table>";

mysqli_close($con);

?>
