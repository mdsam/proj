
"" - double
'' - single
\ - scape charcter

----------------------------------------------------------------------
Error_reporting : E_All, E_STRICT % ~E_NOTICE

error_reporting(e_all);
init_set('error_reporting', 'e_all);
----------------------------------------------------------------------
$day= 'Thursday';
$date= 31;
$year = 2011;

echo 'The date is ;.$date. ' '.$date. ' '.$year;
----------------------------------------------------------------------
concetation:
<?php

$day= 'Thursday';
$date= 31;
$year = 2011;

echo 'The date is '.$day. ' '.$date. ' '.$year;

or

echo " the date is $day $date $year";

echo 'The date is <strong>'.$day. ' '.$date. ' '.$year.'</strong>'  '<br />';
?>

----------------------------------------------------------------------
<?php

if (0) 	{ echo 'TRUE'; }
else 	{ echo 'False';}


if (1==1) 	{ echo 'TRUE'; }
else 	{ echo 'False';}



$text = 'something';
if (1==1) 	{ echo 'TRUE'; }
else 	{ echo 'False'; }



$number = 11;
if ($number==10) { echo ' Equal to ten.' ;}
else { echo 'not equal to ten.';}



$number1 = 10;
$number1 -= 2;
echo $number1;



$text= ' Hello';
$text .= 'World';
echo $text;

?>


----------------------------------------------------------------------
$counter = 1;

while ($counter <=10) { echo 'Hello <br>'	; $counter++; }
----------------------------------------------------------------------
<?php

$counter = 1;

do {

echo ' This will always shows once <br>';
$counter++;

	} while ($counter<=10); ?>
 
----------------------------------------------------------------------
for ($count=1 ; $count<=10; $count++)

	{echo $count.'<br>';}
----------------------------------------------------------------------
$number = 5;

switch ($number) {

	case 1:
	echo 'one';
	break;
	case 2:
	echo 'Two';
	break;
	case 3:
	echo 'Three';
	break;

	default;
	echo 'this is default';
	break;
----------------------------------------------------------------------
<?php

$day = 'sunday';

switch ($day) {

case 'saturday':
case 'sunday':

	echo 'its weekend';
break;

default:
echo 'not weekend';
break;

}
?>
----------------------------------------------------------------------
$string = 'khanmehmoodali';
$string_reveresed = strrev($string);

echo $string_reveresed;
----------------------------------------------------------------------
$food = array ('Pasta','Pizza', 'salad','veg');

echo $food[0];
OR
print_r($food)	;

OR
$food[4] = 'Fruit';
----------------------------------------------------------------------
Associative array:
$food = array ('Pasta'=>300,'Pizza'=>1000, 'salad'=>150,'veg'=>50);

echo $food[0];

//print_r($food);
----------------------------------------------------------------------
Multidimentional array:
$food = array('Healthy'=>array('Pasta','salad','veg'),'Unhealthy'=>array('Pizza','icecream'));

echo $food['Healthy'] [0];

----------------------------------------------------------------------
$food = array('Healthy' =>array
			('Pasta','salad','veg'),
			'Unhealthy' =>array
			('Pizza','icecream', 'popcorn'));


foreach ($food as $element => $inner_array) { echo '<Strong'>.$element.'</Strong><br>';}
foreach ($inner_array as $item) { echo $item.'<br>';}
		

	



----------------------------------------------------------------------
Expression Matching:

$string = 'This is a string';

if(preg_match('/  /', $string))
 {

	echo 'Match Found';

}

else {

	echo 'No Match Found';

}

	
----------------------------------------------------------------------
$string = 'Thisdoesnthaveaspace';
function has_space($string) {

if (preg_match ('/ /',$string)) 

{ return true; }

else

{return false; }


}



if (has_space($string))
{ echo ' Has at least once space'; }
else
{ echo 'has no space'; }


----------------------------------------------------------------------
$string = 'Alex';
$string_length = strlen($string);

echo $string_length;

----------------------------------------------------------------------
$string = 'IT COULD BE ANY CASE' ;
$string1 = 'it could be any thing';

$string_lower = strtolower($string);
$string_upper = strtoupper($string1);

echo $string_upper;

----------------------------------------------------------------------
$find = 'is';
$find_length = strlen ($find);

$string = 'This is a string, and it is an example';

echo strpos ($string, $find);
----------------------------------------------------------------------
$find = array ('is','string','example');
$replace = array ('IS','STRING');

$string= ' This is a string, and is an example';
$new_string = str_replace ($find, $replace, $string);

echo $new_string;

----------------------------------------------------------------------
<form action="phptest.php" method="POST">

<textarea name="text" rows="6" cols="30"> </textarea><br>
Search for: <br>
<input type="text" name=" searchfor"><br>
Replace With: <br>
<input type="text" name=" replacewith"><br>
<input type="submit" value="Find & Replace"> <br>


</form>

----------------------------------------------------------------------
$time = time();
$actual_time = date('D M Y @ h:i:s', $time);


echo 'The current time is ' .$actual_time;
----------------------------------------------------------------------
$time =  time();
$time_now = date ('d M Y @h:i:s', $time);
$time_modified = date('d M Y @H:i:s', $time);

echo ' The time now is '.$time_now.'<br	> The time modified is '.$time_modified;



----------------------------------------------------------------------
$rand = rand(1,10);
echo $rand;

----------------------------------------------------------------------

$_SERVER[];

echo $_SERVER;

----------------------------------------------------------------------
$redirect_page = 'http://google.com';
$redirect = true;

header ('Location:'.$redirect_page);

----------------------------------------------------------------------

ob_start();
ob_end_clean();
ob_end_flush();
----------------------------------------------------------------------
$browser = get_browser(null, ture);

echo $browser [$browser];
----------------------------------------------------------------------

session_start();

if (isset($_SESSION['Username'])) { echo 'Welcome, '. $_SESSION['Username'];}
else { echo ' Please log in' ; }



session_start();

if (isset($_SESSION['Username'])) { echo 'Welcome, '. $_SESSION['Username'];}
else { echo ' Please log in' ; }


session_start();
unset ($_SESSION['Username']);

or session_destroy();

----------------------------------------------------------------------
session_start();

if (isset($_SESSION['Username'])) { echo 'Welcome, '. $_SESSION['Username'];}
else { echo ' Please log in' ; }


----------------------------------------------------------------------
$to = 'mehmood.k@directi.com';
$subject = ' This is test mail';
$body = 'This is test email.'."/n/n".' hope you are fine.';
$headers = 'From: phptest <mehmood.k@directi.com>';

if (mail($to, $subject, $body, $headers )) { echo ' Email has been sent to '.$to;}

else { echo ' There was an error';}

----------------------------------------------------------------------
$string = 'password';
$string_hash = md5($string);
echo $string_hash;
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
