<?php

//create a database connection
$connection = mysql_connect("localhost", "root", "wss");
if(!$connection){
	die("Database connection failed:" . mysql_error());
	}

//select a database to use.
$db_select = mysql_select_db("elvis_store", $connection);
if(!$db_select) {
	die("Database selection failed:" . mysql_error());

	}

	/*

if(isset($_POST['submit'])) {
	
	
		$from = 'elmer@makemeelvis.com';
		$subject = $_POST['subject'];
		$text = $_POST['elvismail'];
		

if($subject=='' or $text=='') {

	
		echo " <script> alert('some fileds is missing')</script>";
		exit();

		}

		else {
			
		$query = "SELECT * FROM email_list ";
		$result = mysql_query($query);


	while($row= mysql_fetch_array($result)) {

    $firstname = $row['firstname'];
    $lastname = $row['lastname'];



		$msg = "Dear $firstname, $lastname  $text";
		$to = $row['email'];
		mail($to, $subject, $msg, 'From:' .$from);

		echo 'Email sent to:' . $to . '<br/>';



			}	


	}


		





}
*/
?>

<?php




if(isset($_POST['submit'])) {
	
$from = 'elemer@makemeelvis.com';
$subject = $_POST['subject'];
$text = $_POST['elvismail'];
$output_form = false;

	
if(empty($subject) && empty($text)){
	// We know both Subject & $text are blank.
	echo "you forgot the mail subject and body text";
	$output_form = true;
	
}

if(empty($subject) && (!empty($text))) {
	echo "You forgot the email subject";
	$output_form = true;

}


if(!empty($subject) && (empty($text))) {
	echo "You forgot the email body text";
	$output_form = true;

}
if((!empty($subject)) && (!empty($text))) {

		echo " Processing...wait.";

}

}
else {

	$output_form = true;

}

if($output_form) {
	
?>

<form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
    <label for="subject">Subject Of Email:</label> </br>
    <input type="text" id="subject" name="subject" value="<?php echo $subject; ?>" size="60"/><br />
    <label for="elvismail">Body Of Email:</label> </br>
    <textarea id="elvismail" name="elvismail" value="<?php echo $text; ?>" rows="8" cols="60"></textarea> </br>
    <input type="submit" value="Submit" name="submit" />
  </form>



<?php
	}
?>







