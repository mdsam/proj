<?php




$dbc = mysql_connect ('localhost','root','wss');
if ($dbc) { echo 'connected'; }

if (!$dbc)
{

 die ('Not Connected'. mysql_error());
}


$db_selected = mysql_select_db( 'test', $dbc);
if (!$db_selected)
{
die ('cant connecte'. mysql_error());
}


$query= " select * from domo limit 1 ; "
//$result= mysql_query($query);

echo $query;
















?>

























