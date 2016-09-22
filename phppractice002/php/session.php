<?php session_start(); ?>

<html>
<body>
This Wss Dept.

</body>
</html>

<?php
session_start();
// store session data
$_SESSION['views']=1;
?>

<html>
<body>

<?php
//retrieve session data
echo "Pageviews=". $_SESSION['views'];
?>

</body>
</html>
