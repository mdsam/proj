<?php
session_start();
include("header.php");
include("database.php");
?>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Domain Deletion Tracker</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="main.css" rel="stylesheet" type="text/css">
</head>

<body>
    
      <table border="0" align="right">
      <tr align="right">
       <td align="right"> <a href="signout.php" class="style4">Signout</a></td>   
      </tr>
      </table>




<?php


echo $_SESSION['username'];

  
    echo '<table width="28%"  border="0" align="center">

  <tr>
    <td width="7%" height="65" valign="bottom"><img src="image/HLPBUTT2.JPG" width="50" height="50" align="middle"></td>
    <td width="93%" valign="bottom" bordercolor="#0000FF"> <a href="userform.php" class="style4">Add Domain Deletion Details </a></td>
  </tr>

   <tr>
    <td width="7%" height="65" valign="bottom"><img src="image/HLPBUTT2.JPG" width="50" height="50" align="middle"></td>
    <td width="93%" valign="bottom" bordercolor="#0000FF"> <a href="adminform.php" class="style4">Add Comment </a></td>
   </tr>

  <tr>
    <td width="7%" height="65" valign="bottom"><img src="image/HLPBUTT2.JPG" width="50" height="50" align="middle"></td>
    <td width="93%" valign="bottom" bordercolor="#0000FF"> <a href="search.php" class="style4">Search Domains</a></td>   
  </tr>

</table>';
   
    


?>




