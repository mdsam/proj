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
<?php

function check_ad_auth($username, $password) {

      $ldapconn = ldap_connect("inmudcr01.corp.endurance.com");

             if (is_resource($ldapconn)) {

            $ldapbind = @ldap_bind($ldapconn, $username."@corp.endurance.com", $password);

            if ($ldapbind) {
                
                    $result_resource = @ldap_search($ldapconn, "cn={$username},ou=Accounts,dc=corp,dc=endurance,dc=com", "(name=*)");
                    if (is_resource($result_resource)) {
                        $result_info = @ldap_get_entries($ldapconn, $result_resource);
                        // return $result_info[0]['memberof'];
                        return TRUE;

                    } else {

                        return FALSE;
                    }
                
            } else {

                return FALSE;
            }
        } else {

            return FALSE;
        }
    }


extract($_POST);
$username = $_POST['username'];
$password = $_POST['password'];
//$_SESSION['username'] = $username;


  if(check_ad_auth($username, $password)){

    echo $_SESSION['username'] = $username;


         header("Location: board.php"); /* Redirect browser */


  
//     echo "<h1 class='style8' align=left>Welcome $username</h1>";
//     echo '<table width="28%"  border="0" align="center">

//   <tr>
//     <td width="7%" height="65" valign="bottom"><img src="image/HLPBUTT2.JPG" width="50" height="50" align="middle"></td>
//     <td width="93%" valign="bottom" bordercolor="#0000FF"> <a href="userform.php" class="style4">Add Domain Deletion Details </a></td>
//   </tr>

//    <tr>
//     <td width="7%" height="65" valign="bottom"><img src="image/HLPBUTT2.JPG" width="50" height="50" align="middle"></td>
//     <td width="93%" valign="bottom" bordercolor="#0000FF"> <a href="adminform.php" class="style4">Add Comment </a></td>
//    </tr>

//   <tr>
//     <td width="7%" height="65" valign="bottom"><img src="image/HLPBUTT2.JPG" width="50" height="50" align="middle"></td>
//     <td width="93%" valign="bottom" bordercolor="#0000FF"> <a href="search.php" class="style4">Search Domains</a></td>   
//   </tr>

// </table>';

 
    

}else {

  

   echo "<h1 align=center>Incorrect username/password !</h1>";

   echo "<br><div class=head1><a href=index.php>Go Back </a> </div>"; 

}









?>