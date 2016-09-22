<?php

if(isset($_POST['formSubmit'])) {

	$formSubmit = $_POST['formSubmit'];
{
	$errorMessage = "";
	
	if(empty($_POST['formMovie']))
	{
		$errorMessage .= "<li>You forgot to enter a movie!</li>";
	}
	if(empty($_POST['formName']))
	{
		$errorMessage .= "<li>You forgot to enter a name!</li>";
	}
	
	$varMovie = $_POST['formMovie'];
	$varName = $_POST['formName'];
	

	if(empty($errorMessage)) 
	{
		$fs = fopen("mydata.csv","a");
		fwrite($fs,$varName . ", " . $varMovie . "\n");
		fclose($fs);
		
		header("Location: thankyou.html");
		exit;
	}
}
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html>
<head>
	<title>My Form</title>
</head>

<body>
	<?php
		if(!empty($errorMessage)) 
		{
			echo("<p>There was an error with your form:</p>\n");
			echo("<ul>" . $errorMessage . "</ul>\n");
		} 
	?>
	<form action="index.php" method="POST">
		<p>
			What is your favorite movie?<br>
			<input type="text" name="formMovie" maxlength="50" value="<?php $varMovie;?>" />
		</p>
		<p>
			What is your name?<br>
			<input type="text" name="formName" maxlength="50" value="<?php $varName;?>" />
		</p>				
		<input type="submit" name="formSubmit" value="Submit" />
	</form>
</body>
</html>
