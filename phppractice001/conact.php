<?php

	$contactname= $_POST['contact_name'];
	$contactemail= $_POST['contact_email'];
	$message= $_POST['contact_text'];
		
if(isset($contactname) && isset($contactemail) && isset($message)) {

	if(!empty($contactname) && !empty($contactemail) && !empty($message)){

		if(strlen($contactname)>25 || strlen($contactemail)>50 || strlen($message)>1000){

			echo ' Sorry max length for each field excedded';

			}else {
		$to = 'strngr08@gmail.com';
		$subject = ' Contact form has been submitted';
		$body = $message;
		$header = $contactname."\n".$contactemail;

		if (@mail($to, $subject, $body, $header)) {

			echo ' Thanks For Contacting us';

			} else {

				echo ' Error Occured, please try later';
				
				}

			}
		
		} else {

			echo ' All Fileds are required';
			}
		

	}



?>

<form action ="conact.php" method="POST">

		Name:<br> <input type="text" name="contact_name" maxlength="25"><br><br>
		Email address:<br><input type="text" name="contact_email" maxlength="50"><br><br>
		Message:<br>
		<textarea name="contact_text" rows="6" cols="30" maxlength="1000"></textarea><br><br>
		<input type="submit" value="Send">
</form>
