
<?php

include("includes/db.php");
include("functions/functions.php");

?>

<!DOCYTPE HTML>
<html>
<head>
<meta http=equiv="Content="text/html"; charset=utf-8">
<title> My Shop</title>
<link rel="stylesheet" href="styles/style.css" media="all">
</head>
<body>

<!-- Test Comments starts -->

<div class="main_wrapper">
	
		<div class = "header_wrapper"> <!-- Headers starts -->
		<a href="index.php"> <img src="images/myshoplogo.png" style="width:1000px; height:100px"> </a>	
			
		</div> 	<!-- Headers Ends -->


	
		<div id= "navbar"><!-- navbar starts -->

		<ul id="menu">
			<li><a href="index.php"> Home </a></li>
			<li><a href="all_products.php"> All Products </a></li>
			<li><a href="my_account.php"> My Account </a></li>
			<li><a href="user_register.php"> Sign Up </a></li>
			<li><a href="cart.php"> Shopping Cart </a></li>
			<li><a href="contact.php"> Contact Us</a></li>
		</ul>


			<div id="form">

				<form method="GET" action="result.php" enctype="multipart/form-data">
				<input type="text" name="user_query" placeholder="Search a Product" />
				<input type="submit" name="search" value="Search" />
				

				</form>

			</div>

		</div><!-- navbar ends -->
	


		
		<div class="content_wrapper">

				<div id="left_sidebar">

					<div id ="sidebar_title">Categories</div>

						<ul id = "cats">

							<?php getCategories() ?>
						</ul>
						

						<div id ="sidebar_title">Brands</div>
						<ul id = "cats">
							
						<?php getBrands() ?>
						

						</ul>
				</div>


				
				<div id="right_content">

					<div id ="headline">

						<div id = "headline_content">

							<b> Welcome Guest!</b>
							<b style="color:yellow;"> Shopping Cart</b>

							<span>-Items: - Price: $</span>
						</div>

					</div>


					<div id = "product_box">

						
					<?php

							if(isset($_GET['pro_id'])){

								$product_id = $_GET['pro_id'];

							$get_products = "SELECT * FROM products WHERE product_id = '$product_id'";

							$run_products = mysqli_query($db, $get_products);

							while ($row_products=mysqli_fetch_array($run_products)){

								
									$pro_id = $row_products['product_id'];
									$pro_title = $row_products['product_title'];
									$pro_cat = $row_products['cat_id'];
									$pro_brand = $row_products['brand_id'];
									$pro_desc = $row_products['product_desc'];
									$pro_price = $row_products['product_price'];
									$pro_img1 = $row_products['product_img1'];
									$pro_img2 = $row_products['product_img2'];
									$pro_img3 = $row_products['product_img3'];


									echo "
										<div id ='single_product'>

										<h3>$pro_title</h3>

										<img src='admin_area/product_images/$pro_img1' width='250' height='250' /> 
										<img src='admin_area/product_images/$pro_img1' width='250' height='250' /> 
										<img src='admin_area/product_images/$pro_img1' width='250' height='250' /> <br>

										
										<p><b>Price: Rs $pro_price</b> </p>

										<p> $pro_desc </p>
										
										<a href='index.php' style='float:left;'> Go Back </a>

										<a href='index.php?add_cart=$pro_id'> <button style='float:right; text_decoration:none;'> Add To Cart</button>

										</div>

									";

								}
	

				}



					 ?>
					
			
					</div>

				 </div>

		</div>

		
		<div class="footer"><h1 style="color:#000; padding-top:30px; text-align:center;"> &copy; 2014 - By www.OnlineUstaad.com</h1></div>


</div>

<!-- Test Comments End-->

</body>
</html>
