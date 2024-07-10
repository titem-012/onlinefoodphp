<?php
include("../connection/connect.php");
error_reporting(0);
session_start();

mysqli_query($db, "UPDATE users SET status = 'banned' WHERE u_id = '".$_GET['user_del']."'");
header("location: all_users.php");
?>
