<?php
$connection = mysqli_connect('localhost', 'root', 'nirmal2609');
if (!$connection){
die("Database Connection Failed" . mysqli_error($connection));
}
$select_db = mysqli_select_db($connection, 'phplogin');
if (!$select_db){
die("Database Selection Failed" . mysqli_error($connection));
}?>
