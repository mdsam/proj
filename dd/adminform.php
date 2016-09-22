<?php 
session_start(); 
include("header.php");
include("database.php");
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Domain Deletion Form(admin)</title>
<script language="javascript">

  
</script>
<link href="main.css" rel="stylesheet" type="text/css">
</head>

<body>

 <table width="100%" border="0">
   <tr>
     <td width="132" rowspan="2" valign="top"><span class="style8"><img src="images/connected_multiple_big.jpg" width="131" height="155"></span></td>
     <td width="468" height="57"><h1 align="center"><span class="style8">Domain Deletion Dm Panel</span></h1></td>
   </tr>
   <tr>
     <td>

     <?php 
    
     $query = "select id, domain, rid, ticketid, oid, status, dateline, loginid as updated_by from dd_tracker where comment = '' "; 

     $result = mysql_query($query);

      if($result){
          if(mysql_num_rows($result) > 0){

              echo "<table border=2 style=float:left; >";
              echo "<tr>";
              //echo "<th style='background-color:#faebd7;text-align:center'>Id</th>";
              echo "<th style='background-color:#faebd7;text-align:center'>Domain Name</th>";
              echo "<th style='background-color:#faebd7;text-align:center'>Resellerid</th>"; 
              echo "<th style='background-color:#faebd7;text-align:center'>TicketId</th>";
              echo "<th style='background-color:#faebd7;text-align:center'>Oid</th>";
              echo "<th style='background-color:#faebd7;text-align:center'>Status</th>";  
              echo "<th style='background-color:#faebd7;text-align:center'>Date</th>"; 
              echo "<th style='background-color:#faebd7;text-align:center'>Updated_by</th>";  
              //echo "<th style='background-color:#faebd7;text-align:center'>Comment</th>";           
              echo "</tr>";


             while($rows = mysql_fetch_array($result)){
       
             $domain = $rows['domain'];
             $rid = $rows['rid'];
             $ticketid = $rows['ticketid'];
             $oid = $rows['oid'];
             $status = $rows['status'];
             $dateline = $rows['dateline'];
             $updated_by = $rows['updated_by'];
             //$comment = $rows['comment'];
             $id = $rows['id'];

              echo "<tr>";
              //echo "<td> {$id} </td>";
              echo "<td> {$domain} </td>";
              echo "<td> {$rid} </td>";
              echo "<td> {$ticketid} </td>";
              echo "<td> {$oid} </td>";
              echo "<td> {$status} </td>";
              echo "<td> {$dateline} </td>";
              echo "<td> {$updated_by} </td>";
             // echo "<td> {$comment} </td>";
              echo "<td><form method='post' action='adminform.php'>
                  <td>
                   <input type='text' name='comment' id='comment'> </td>
                  <td><input type='hidden' name='id' value='$id'> </td>
                  <td><input type='submit' name='Submit' value='Update'></td>
                  </form></td>";


              echo "</tr>";


            
           
     }
              echo "</table>";

          }
      }


extract($_POST);

if($_POST['comment']){

$loginid = $_SESSION['username'];

echo $query= "UPDATE dd_tracker SET comment='$comment',commid='$loginid', comdateline= now() WHERE id = $id";

$rs=mysql_query($query)or die("Could Not Perform the Query");

echo "<br><br><br><div class=head1>Updated Sucessfully</div>"; 
//echo "<meta http-equiv='refresh' content='0'>";
} 

echo "<br><div class=head1><a href=board.php>Go Back </a> </div>"; 

     ?>


     <td>
   </tr>
 </table>
 <p>&nbsp; </p>
</body>
</html>
