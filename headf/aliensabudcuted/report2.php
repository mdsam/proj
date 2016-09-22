<html>
<head>
<title> Aliens Abducted Me - Report An Abduction</title>
</head>
<body>


<h2> Aliens Abducted Me - Report An Abduction </h2>

<?php

//$firstname = $_POST['firstname'];
//$lastname = $_POST['lastname'];



$name = $_POST['firstname']. '' .$_POST['lastname'];
$email = $_POST['email'];
$when_it_happened = $_POST['whenithappened'];
$how_long = $_POST['howlong'];
$how_many = $_POST['howmany'];
$alien_description = $_POST['aliendescription'];
$what_theydid = $_POST['whattheydid'];
$fang_spotted = $_POST['fangspotted'];
$other = $_POST['other'];




$to = 'mehmood.k@directi.com';
$subject = 'Alien Abducted Me';
$msg = "$name was abducted $when_it_happened and was gone for $how_long \n".
"Number of aliends:  $how_many \n".
"Alien desciption: $alien_description \n".
"What the did: $what_theydid. \n".
"Fang spotted: $fang_spotted \n".
"other comments:$other";
mail ($to, $subject, $msg, 'From:'.$email);



//echo $firstname. ' Thanks for submitting the form. <br/> ';
//echo ' You were abducted '. $when_it_happened;
//echo ' and were gone for'. $how_long .'<br>' ;
//echo ' Number Of aliens ' . $how_many . '<br>';
//echo ' Describe them: ' . $alien_description . '<br>' ;
//echo 'The aliens did this ' . $what_theydid. '<br>';
//echo ' Was Fang There? ' . $fang_spotted .'<br>' ;
//echo ' Other comments' .$other. '<br>';
//echo ' Your email address is: ' . $email;


?>


</body>
</html>
