<?php
$dbhost = 'asterisk.internal.directi.com';
$dbuser = 'rouser';
$dbpass = 'Re3dOnl7';
$conn = mysql_connect($dbhost, $dbuser, $dbpass);
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}
$sql = 'SELECT id, WAQAT FROM nps_feedbak where Context="NPS_RC_SUPP" and WAQAT between '2014-08-01 00:00:00' and '2014-08-31 23:59:59' limit 10';

mysql_select_db('asterisk');
$retval = mysql_query( $sql, $conn );
if(! $retval )
{
  die('Could not get data: ' . mysql_error());
}
while($row = mysql_fetch_array($retval, MYSQL_ASSOC))
{
    echo "ID :{$row['id']}  "
         "WAQAT : {$row['WAQAT']}".
       

        // "--------------------------------<br>";
} 
echo "Fetched data successfully\n";
mysql_close($conn);
?>
