<div id="main_content"> 

<?php

include("admin/includes/connect.php");


$query= "SELECT * from post order by rand() limit 0,3";

$query_run = mysql_query($query) or die (mysql_error());;

while ($row = mysql_fetch_array($query_run)) {
		$post_id = $row['id'];
		$post_title = $row['post_title'];
		$post_date = $row['post_date'];
		$post_author = $row['post_author'];
		$post_image = $row['post_image'];
		$post_keywords = $row['post_keywords'];
		$post_content = substr($row['post_content'], 0, 200);

	

?>

<h2>

<a href="pages.php?id=<?php echo $post_id; ?> "> <?php echo $post_title;  ?> </a>

</h2>

<p align= "left"> Published on: <b> <?php echo $post_date. ' post by: ' .$post_author; ?></b></p>

<center><img src="admin/images/<?php echo $post_image; ?> " width="500" height="300" /></center>



<p align= "justify">  <b> <?php echo $post_author; ?></b></p>

<p align= "center"> <?php echo $post_content; ?></p>

<p align="right"><a href="pages.php?id=<?php echo $post_id ?> ">Read more</a> </p>

<?php } ?>

</div>
