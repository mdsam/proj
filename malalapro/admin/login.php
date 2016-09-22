<?php 

session_start();


?>



<html>
    <head>
        <title>Admin Login</title>
    </head>
    <body>
        
        
        <form method="POST" action=""login.php">
              
              
              <table width="400" border="10" align="center" bgcolor="pink" bodybgcolor="gray">
                
                  <tr>
                      <td bgcolor="yellow" colspan="4" align="center"> <h1>Admin Login Form</h1></td>
                  </tr>
                  
                  
                     <tr>
                         <td align="right">User Name:</td>
                         <td><input type="text" name="user_name"> </td>
                    </tr>
                    
                    
                     <tr>
                         <td align="right">User Password:</td>
                         <td><input type="password" name="user_pass"> </td>
                    </tr>
                  
                    
                     <tr>
                         <td colspan="5" align="center"><input type="submit" name="login" value="login">  </td>
                    </tr>
                  
            </table>
    </form>
        
        
        
        
        
        
        
        
    </body>
</html>

<?php 

include ("includes/connect.php");


if(isset($_POST['login'])){
    
    $user_name = mysql_real_escape_string($_POST['user_name']);
    $user_pass = mysql_real_escape_string($_POST['user_pass']);
    
    $encrypt = md5($user_pass);
    
    $admin_query = "SELECT * FROM admin_login WHERE user_name='$user_name' and user_pass='$user_pass'";
    
    $run = mysql_query($admin_query) or die (mysql_error());
    
    if(mysql_num_rows($run) > 0){
        
        $_SESSION['user_name']= $user_name;
        
        echo "<script> window.open('index.php', 'self')</script> ";
       
        
    }else {
        
        echo "<script> alert('Username & Password Is Incorrect')</script> ";
        
    }
    
}

?>