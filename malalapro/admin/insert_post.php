<?php 

session_start();

if(!isset($_SESSION['user_name'])) {
    
    header("location:login.php");
} else {
    

?>


<html>
<head>
<title> inserting new post</title>
</head>
<body>

<form method="POST" action="insert_post.php" enctype="multipart/form-data">
		<table width="600" align="center" border="10">

			<tr>
				<td align="center" bgcolor="yellow" colspan="6"> <h1>Insert New Post Here </h1></td>
			</tr>

			<tr>
				<td>Post Title</td>
				<td> <input type="text" name="title" size="30"></td>
			</tr>


			<tr>
				<td>Post Author</td>
				<td> <input type="text" name="author" size="30"></td>
			</tr>


			<tr>
				<td>Post Keywords</td>
				<td> <input type="text" name="keywords" size="30"></td>
			</tr>


			<tr>
				<td>Post Image</td>
				<td> <input type="file" name="image"></td>
			</tr>


			<tr>
				<td>Post Content</td>
				<td> <textarea  name="content" cols="20" rows="20"> </textarea></td>
			</tr>



			
				
				<tr>
				<td align="center" colspan="6">
					<input type="submit" name="submit" value="Publish Now" >
				</td>
				
			</tr>
			
				
			
			
			
		</table>


</form>


</body>
</html>

<?php

include ("includes/connect.php");

if(isset($_POST['submit'])) {

		$post_title = $_POST['title'];
		$post_date = date('d-m-y');
		$post_author = $_POST['author'];
		$post_keywords = $_POST['keywords'];
		$post_content = $_POST['content'];
		$post_image = $_FILES['image']['name'];
		$image_tmp = $_FILES ['image']['tmp_name'];


	if($post_title=='' or $post_content=='' or $post_author=='' or  $post_keywords=='') {

	
		echo " <script> alert('some fileds is missing')</script>";
		exit();

		}

		else {

		move_uploaded_file($image_tmp, "images/$post_image");
		
		$query = "INSERT INTO post(post_title,post_date,post_author,post_image,post_keywords,post_content) value('$post_title','$post_date','$post_author','$post_image','$post_keywords','$post_content')";


		if(mysql_query($query)) {

			echo "<script> alert('post published successfuly')</script> ";
            
                        echo "<script> window.open('view_post.php', 'self')</script> ";

			} 



			}





		







	}













?>

<?php } ?>