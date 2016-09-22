<?php session_start(); 
include("header.php"); 
include("database.php");
?>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>DD Details</title>
<link href="main.css" rel="stylesheet" type="text/css">
</head>

<?php echo $_SESSION['username']; ?>

<body>
 <table width="100%" border="0">
   <tr>
     <td width="132" rowspan="2" valign="top"><span class="style8"></span></td>
     <td width="468" height="57"><h1 align="center"><span class="style8">Submit Details For Domain Deletion</span></h1></td>
   </tr>
   <tr>
     <td><form name="form1" method="post" action="userform.php" onSubmit="return check();">
       <table width="301" border="0" align="left">
         <tr>
           <td><div align="left" class="style7">Domain Name </div></td>
           <td><input type="text" name="dmn" id="dmn" ></td>
         </tr>
         <tr>
           <td class="style7">RID</td>
           <td><input type="text" id="rid" name="rid"></td>
         </tr>
         <tr>
           <td class="style7">TicketId</td>
           <td><input name="ticketid" type="text" id="ticketid"></td>
         </tr>
         <tr>
           <td valign="top" class="style7">Pin Confirmed</td>
           <td><input name="pin" type="text" id="pin"></td>
         </tr>
         <tr>
           <td valign="top" class="style7">OID</td>
           <td><input name="oid" type="text" id="oid"></td>
         </tr>
         <tr>
           <td valign="top" class="style7">Status</td>
           <td><input name="status" type="text" id="status"></td>
         </tr>
         <tr>
           <td>&nbsp;</td>
           <td><input type="submit" name="Submit" value="Update">
           </td>
         </tr>
       </table>
     </form></td>
   </tr>
 </table>
 <p>&nbsp; </p>
</body>
</html>




<?php

extract($_POST);

if($_POST['dmn']){

$loginid = $_SESSION['username'];

echo $query= "insert into dd_tracker(id,domain,rid,ticketid,pin,oid,status,dateline,loginid) values('','$dmn','$rid','$ticketid','$pin','$oid','$status',now(),'$loginid')";

$rs=mysql_query($query)or die("Could Not Perform the Query");

echo "<br><br><br><div class=head1>Updated Sucessfully</div>";


} 



echo "<br><div class=head1><a href=board.php>Go Back </a> </div>"; 

?>

