<?php
include("includes/db.php");

?>

<!DOCYTPE HTML>
<html>
<head>
<meta http=equiv="Content="text/html"; charset=utf-8">

<script src="//tinymce.cachefly.net/4.1/tinymce.min.js"></script>
<script>tinymce.init({selector:'textarea'});</script>

<title> My Shop</title>
</head>
<body>


<form method="POST" action="insert_product.php" enctype="multipart/form-data">

<table width:"700" align="center" border="2">


<tr align="center">
<td colspan="2"> <h1> Insert New Product:</h1></td>
</tr>

<tr>
<td><b>Product Title</b></td>
<td> <input type="text" name="product_title" /> </td>
</tr>
<tr>
	<td><b>Product Category</b></td>
<td>
	 <select name="product_cat">

	<option>Select a Categories </option>

						<?php

							$get_cats = "SELECT * FROM categories";
							
							$run_cats = mysqli_query($con, $get_cats);

							while ($row_cats = mysqli_fetch_array($run_cats)){
							
							$cat_id = $row_cats["cat_id"];
							$cat_title = $row_cats["cat_title"];

							echo "<option value = '$cat_id'>$cat_title</option>";
							
							}
							?>

							

</select> </td>
</tr>


				
<tr>
<td>
<b>Product Brand</b></td>
<td>
	<select name= "product_brand">

						<option> Select Brand</option>

				<?php

							$get_brands = "SELECT * FROM brands";
							
							$run_brands = mysqli_query($con, $get_brands);

							while ($row_brands = mysqli_fetch_array($run_brands)){
							
							$brand_id = $row_brands["brand_id"];
							$brand_title = $row_brands["brand_title"];

							echo "<option value = '$brand_id'>$brand_title</option>";
							
							}
							?>

							
					</select>

 </td>
</tr>
<tr>
	<td><b>Product Image 1</b></td>
<td> <input type="file" name="product_img1" /> </td>
</tr>
<tr>
	<td><b>Product Image 2</b></td>
<td> <input type="file" name="product_img2" /> </td>
</tr>
<tr>
	<td><b>Product Image 3</b></td>
<td> <input type="file" name="product_img3" /> </td>
</tr>
<tr>
	<td><b>Product Price</b></td>
<td> <input type="text" name="product_price" /> </td>
</tr>
<tr>
	<td><b>Product Desc</b></td>
<td> <textarea name="product_desc" cols ="20" rows="10"></textarea> </td>
</tr>
<tr>
	<td><b>Product Keywords</b></td>
<td> <input type="text" name="product_keyword" /> </td>
</tr>
<tr align ="center">
<td colspan="2"> <input type="submit" name="insert_product" value="insert_product"/> </td>
</tr>
</table>
</form>


</body>
</html>

<?php



if(isset($_POST['insert_product'])){

	// text variable
	$product_title = $_POST['product_title'];
	$product_cat = $_POST['product_cat'];
	$product_brand = $_POST['product_brand'];
	$product_price = $_POST['product_price'];
	$product_desc = $_POST['product_desc'];
	$status = 'On';
	$product_keyword = $_POST['product_keyword'];
	
		
	// images names
	$product_img1 = $_FILES['product_img1'] ['name'];
	$product_img2 = $_FILES['product_img2'] ['name'];
	$product_img3 = $_FILES['product_img3'] ['name'];

	// images temp names
	$temp_img1 = $_FILES['product_img1']['tmp_name'];
	$temp_img2 = $_FILES['product_img2']['tmp_name'];
	$temp_img3 = $_FILES['product_img3']['tmp_name'];


	if($product_title=='' OR $product_cat=='' OR $product_brand=='' OR $product_desc=='' OR $product_keyword=='' OR $product_img1==''){

		echo "<script> alert('Please fill all the fields')</script>";
		exit();

		} else {

		// uploading the images to its folder
		move_uploaded_file($temp_img1, "product_images/$product_img1");
		move_uploaded_file($temp_img2, "product_images/$product_img2");
		move_uploaded_file($temp_img3, "product_images/$product_img3");
		
		$insert_product = "INSERT INTO  products(cat_id, brand_id, date, product_title, product_img1, product_img2, product_img3, product_price, product_desc, status )
						  values ('$product_cat','$product_brand',NOW(),'$product_title','$product_img1','$product_img2','$product_img3','$product_price', '$product_desc','$status')";



		$run_product = mysqli_query($con, $insert_product);

		if($run_product){

				echo "<script> alert('Product Inserted Successfully')</script>";

			}
		
		}



	
	}































?>

