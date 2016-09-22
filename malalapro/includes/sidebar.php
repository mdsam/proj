<div id="sidebar">

<div id="searchbox">


	<form action="search.php" method="GET" enctype="multipart/form-data">

	<input type="text" name="value" placeholder="Search this site" size="19">
	<input type="submit" name="search" value="search">

	</form>

</div>

<div id="social">

<h2>Follow Us</h2>
<a href="http://www.facebook.com"><img src="images/fb.jpg" width"50" height="50"></a>
<a href="http://www.google.com"><img src="images/google.jpg" width"50" height="50"></a>
<a href="http://www.twitter.com"><img src="images/twitter.jpg" width"50" height="50"></a>
<a href="http://www.pininterest.com"><img src="images/pin.jpg" width"50" height="50"></a>

</div>

<h2 align="center"> Recent Post</h2>

<div>
    
<?php
include("admin/includes/connect.php");

$query = "SELECT * FROM post order by 1 DESC LIMIT 0,5";

$run = mysql_query($query) or die (mysql_error());;

while ($row = mysql_fetch_array($run)) {

	$post_id = $row['id'];
	$title = $row['post_title'];
	$image = $row['post_image'];

?>

<center>
	
<a href="pages.php?id=<?php echo $post_id; ?> ">
<h3> <?php echo $title; ?> </h3> </a>

<a href="pages.php?id=<?php echo $post_id; ?> ">
<img src= "admin/images/<?php echo $image; ?>" width="100" height="100">

</a>
</center>
<?php } ?>

</div>







</div>
