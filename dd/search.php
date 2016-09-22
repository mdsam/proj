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
     <td width="132" rowspan="2" valign="top"><span class="style8"></span></td>
   </tr>
   <tr>
     <td>



<table  width="100%" border="0">
   </td>
    <td valign="top" align="center" ><form name="form1" method="POST" action="">
      <table width="200" border="0">

       <tr>
          <td><span class="style2">Search</span></td>
          <td><input name="domain" type="text" id="domain" placeholder="Domain OR Date(y-m-d)"></td>
        </tr>
        <td colspan="2"><span class="errors">
 
          </span></td>
          </tr>
        <tr>
          <td colspan=2 align=center class="errors">
      <input name="submit" type="submit" id="submit" value="Search"> </td>
        </tr>
        
      </table>
    
    </form></td>
  </tr>
</table>



     <?php 
    



     $domain = $_POST['domain'];
    

    if($domain){

echo $query = "select id, domain, rid, ticketid, oid, status, dateline, loginid, comment, comdateline , commid  from mst_tracker where 1=1 AND 
domain = '$domain' OR dateline LIKE '$domain%'"; 

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
              echo "<th style='background-color:#faebd7;text-align:center'>Comment</th>";   
              echo "<th style='background-color:#faebd7;text-align:center'>Comment_Date</th>"; 
              echo "<th style='background-color:#faebd7;text-align:center'>Commented_By</th>";         
              echo "</tr>";


             while($rows = mysql_fetch_array($result)){   
             $id = $rows['id'];  
             $domain = $rows['domain'];
             $rid = $rows['rid'];
             $ticketid = $rows['ticketid'];
             $pin = $rows['pin'];
             $oid = $rows['oid'];
             $status = $rows['status'];
             $dateline = $rows['dateline'];

             $updated_by = $rows['loginid'];
             $comment = $rows['comment'];

             $commentdate = $rows['comdateline'];
             $commentedby = $rows['commid'];

              echo "<tr>";
              //echo "<td> {$id} </td>";
              echo "<td> {$domain} </td>";
              echo "<td> {$rid} </td>";
              echo "<td> {$ticketid} </td>";
              echo "<td> {$oid} </td>";
              echo "<td> {$status} </td>";
              echo "<td> {$dateline} </td>";
              echo "<td> {$updated_by} </td>";
              echo "<td> {$comment} </td>";
              echo "<td> {$commentdate} </td>";
              echo "<td> {$commentedby} </td>";

              echo "</tr>";


            
           
     }

           echo "<br><div class=head1><a href=board.php>Go Back </a> </div>";
              echo "</table>";



          }
      }


      }   



     ?>




     <td>
   </tr>
 </table>
 <p>&nbsp; </p>
</body>
</html>