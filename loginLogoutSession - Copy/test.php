<?php 
    //start session
    session_start();
    // if the user hasn't logged in, redirect to index.php page where login occurs
    if($_SESSION['user_name'] == null){
        header("Location: index.php");
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Midterm</title>
</head>
<body>
    <h1>BOANG KA</h1>
</body>
</html>