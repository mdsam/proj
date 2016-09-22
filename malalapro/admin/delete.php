<?php

include("includes/connect.php");

if(isset($_GET['del'])) {

			$delete_id = $_GET['del'];

$delete_query = "DELETE FROM post where id = '$delete_id'";

if(mysql_query($delete_query)) {

	echo "<script> alert('Post Has Been Deleted') </script>";
	echo "<script> window.open ('view_post.php', 'self')</script>";


	}














	}





?>
