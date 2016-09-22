
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

if(isset($_GET['search'])) {

	$search_id = $_GET['value'];
	
	$search_query = "SELECT * from post where post_keywords LIKE '%$search_id%' ";

	$run_query = mysql_query($search_query) or die (mysql_error());

	while ($row = mysql_fetch_array($run_query)){
		$post_id = $row['id'];
		$post_title = $row['post_title'];
		$post_image = $row['post_image'];
		$post_content = substr($row['post_content'],0,100);







?>

<center>

<h1> Your search result is here <h1>

<h2>

<a href="pages.php?id=<?php echo $post_id; ?>">

<?php echo $post_title; ?>

</a>
</h2>

<img src="admin/images/<?php echo $post_image; ?>" >

<p> <?php echo $post_content; ?> </p>

</center>


<?php } } ?>

</div>




<div><?php include("includes/sidebar.php"); ?> </div>




<div id="footer"> Footer</div>



</body>
</html>
