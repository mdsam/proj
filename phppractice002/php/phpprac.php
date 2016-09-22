<?php
// switch statment :
$favcolor="red";

switch ($favcolor) {
  case "red":
    echo "Your favorite color is red!";
    break;
  case "blue":
    echo "Your favorite color is blue!";
    break;
  case "green":
    echo "Your favorite color is green!";
    break;
  default:
    echo "Your favorite color is neither red, blue, or green!";
}

?>

<br>
<br>

<?php
// while loops :

$x=1; 

while($x<=5) {
  echo "The number is: $x <br>";
  $x++;
} 

?>

<br>
<br>

<?php
// do...while loops

$x=2; 

do {
  echo "The number is: $x <br>";
  $x++;
} while ($x<=5);

?>

<br>
<br>

<?php
// for ..each loop
for ($x=0; $x<=10; $x++) { echo " The Number is: $x <br>";}

?>

<br>
<br>

<?php

$color = array ("red", "green","blue","yellow");

foreach ($color as $value) { echo "$value <br>";}

?>

<br>
<br>

<?php
//funcitons
function writemsg() { echo " hello World" ; }
writemsg(); //call the function

?>

<br>
<br>

<?php

// function with arguments.
function familyName ($fname) { echo " $fname Refsnes. <br>"; }
familyname ("chhaya");
familyname ("jay");
familyname ("soni");
familyname ("kashif");

?>

<br>
<br>

<?php
function setHeight ($minheight=50) { echo " The Height is: $minheight <br> " ; }
setHeight (350);
setHeight ();
setHeight (135); // will use the default value of  50
setHeight (80);
?>



<br>
<br>

<?php
// function with two arguments.
function familyname ($fname, $year) { echo "$fname Refnses. Born in $year <br>" ; }
familyname ("Hege", "1975");
familyname ("stale", "1987");
familyname ("kai jim", "1983");

?>








