<?php

$name = $_FILES['file'] ['name'];
//$size = $_FILES['file'] ['size'];
//$type = $_FILES['file'] ['type'];


$tmp_name = $_FILES['file'] ['tmp_name'];

//	$error= $_FILES['file'] ['error'];



if (isset($name)) {

	if(!empty($name)) {

		$location = 'uploads/';

		if (move_uploaded_file($tmp_name, $location, $name)) {

			echo ' Uploaded';

			} else {

					echo ' There was an eroor';
				}
		
		} else {

			echo 'Please choose a file';
			
			}


	}

?>


<form action ="upload.php" method="POST" enctype="mutipar/form-data">
		<input type="file" name="file"> <br><br>
		<input type="submit" value="Submit">



</form>
