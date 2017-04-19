<?php //Start the Session
session_start();
require('connect.php');
if (isset($_POST['username']) and isset($_POST['password'])){
$username = $_POST['username'];
$password = $_POST['password'];
$query = "SELECT * FROM `user` WHERE username='$username' and
password='$password'";
$result = mysqli_query($connection, $query) or die(mysqli_error($connection));
$count = mysqli_num_rows($result);
if ($count == 1){
$_SESSION['username'] = $username;
}else{
$fmsg = "Invalid Login Credentials.";
}
}
if (isset($_SESSION['username'])){
$username = $_SESSION['username'];
header("location:welcome.php");
}else{}
?>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-
theme.min.css" >
<link rel="stylesheet" href="styles.css" >
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<form class="form-signin" method="POST">
<h2 class="form-signin-heading">Please Login</h2>
<div class="input-group">
<span class="input-group-addon" id="basic-addon1">@</span>
<input type="text" name="username" class="form-control" placeholder="Username"
required>
</div>
<label for="inputPassword" class="sr-only">Password</label>
<input type="password" name="password" id="inputPassword" class="form-control"
placeholder="Password" required>
<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
<a class="btn btn-lg btn-primary btn-block" href="register.php">Register</a>
</form>
</html>