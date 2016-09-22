
<html>
<head>
<title> Welcome to Malala Site</title>
<link rel="stylesheet" href="style.css" media="all">
</head>
<body>

<div><?php include "includes/header.php"; ?> </div>
<div><?php include("includes/navbar.php"); ?> </div>




<div id="main_content"> 

<?php

include("admin/includes/connect.php");

if(isset($_GET['id'])) {
	
//$query= "SELECT * from post";

$page_id = $_GET['id'];
$query = "SELECT * FROM post WHERE id='$page_id'";
$query_run = mysql_query($query);

while ($row = mysql_fetch_array($query_run)) {
		$post_id = $row['id'];
		$post_title = $row['post_title'];
		$post_date = $row['post_date'];
		$post_author = $row['post_author'];
		$post_image = $row['post_image'];
		$post_keywords = $row['post_keywords'];
		$post_content = $row['post_content'];

	

?>

<h2>

<a href="pages.php?id=<?php echo $post_id; ?> "> <?php echo $post_title;  ?> </a>

</h2>

<p align= "left"> Published on: <b> <?php echo $post_date. ' post by: ' .$post_author; ?></b></p>

<center><img src="admin/images/<?php echo $post_image; ?> " width="500" height="300" /></center>



<p align= "justify">  <b> <?php //echo $post_author; ?></b></p>

<p align= "center"> <?php echo $post_content; ?></p>



<?php } } ?>

</div>


<div><?php include("includes/sidebar.php"); ?> </div>




<div id="footer"> Footer</div>



</body>
</html>
