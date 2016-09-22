<?php
session_start();
include("header.php");
include("database.php");


if(isset($_SESSION['username'])){
  
  header("Location: board.php"); /* Redirect browser */
}


?>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Domain Deletion Tracker</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="main.css" rel="stylesheet" type="text/css">
</head>

<body>

<table  width="100%" border="0">

     <blockquote >
          <p align="center" class="style5" ><span class="style7">Domain Deletion Tracker</span></p>
      </blockquote>

    </td>
    <td valign="top" align="center" ><form name="form1" method="POST" action="dashboard.php">
      <table width="200" border="0">

       <tr>
          <td><span class="style2">Username </span></td>
          <td><input name="username" type="text" id="username" placeholder="Your AD Username" required ></td>
        </tr>
        <tr>
          <td><span class="style2">Password</span></td>
          <td><input name="password" type="password" id="password" placeholder="Your AD Password" required ></td>
        </tr>
        <tr>
          <td colspan="2"><span class="errors">
 
          </span></td>
          </tr>
        <tr>
          <td colspan=2 align=center class="errors">
		  <input name="submit" type="submit" id="submit" value="Login">		  </td>
        </tr>
        
      </table>
    
    </form></td>
  </tr>
</table>

</body>
</html>

