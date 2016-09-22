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

						
					<?php getPro() ?>
					<?php getCatPro() ?>
					<?php getBrandPro() ?>
			
					</div>

				 </div>

		</div>

		
		<div class="footer"><h1 style="color:#000; padding-top:30px; text-align:center;"> &copy; 2014 - By www.OnlineUstaad.com</h1></div>


</div>

<!-- Test Comments End-->

</body>
</html>
