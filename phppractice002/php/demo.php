<?php
$dbhost = '172.16.133.122';
$dbuser = 'root';
$dbpass = 'wss';
$conn = mysql_connect($dbhost, $dbuser, $dbpass);
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}
$sql = 'SELECT ID, Firstname, Secondname FROM demo';

mysql_select_db('mydb');
$retval = mysql_query( $sql, $conn );
if(! $retval )
{
  die('Could not get data: ' . mysql_error());
}
while($row = mysql_fetch_array($retval, MYSQL_ASSOC))
{
    echo "EMP ID :{$row['ID']}  <br> ".
         "EMP NAME : {$row['Firstname']} <br> ".
         "EMP SALARY : {$row['Secondname']} <br> ".
         "--------------------------------<br>";
} 
echo "Fetched data successfully\n";
mysql_close($conn);
?>
