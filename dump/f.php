<?php
$email = $_POST["emailaddress"];
$to = "you@youremail.com";
$subject = "New Email Address for Mailing List";
$headers = "From: $email\n";
$message = "A visitor to your site has sent the following email address to be added to your mailing list.\n

Email Address: $email";
$user = "$email";
$usersubject = "Thank You";
$userheaders = "From: you@youremailaddress.com\n";
$usermessage = "Thank you for subscribing to our mailing list.";
mail($to,$subject,$message,$headers);
mail($user,$usersubject,$usermessage,$userheaders);
$fh = fopen("email.txt", "a");
fwrite($fh, $email);
fclose($fh);
?>
