<!-- LOGIN PAGE -->

<?php 

// start session 
session_start();

//establish db connection
$conn = mysqli_connect('localhost', 'root', '', 'store_database') or die ('Unable to connect');

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <form action="index.php" method="POST">
        <h1>Login</h1>

        <!-- get email input -->
        <input type="text" class="textbox" name="email" placeholder="Email" required = ""> <br>

        <!-- get password input -->
        <input type="password" class="textbox" name="password" placeholder="Password" required = ""> <br>

        <!-- login button -->
        <button type="submit" class="button" name="login">Login</button>
        <!-- OR -->
        <!-- <input type="submit" class="button" name="login" value="Login"> -->

        <h4>No Account? <a href="register.php">Register</a> </h4>

    </form>
</body>
</html>

<?php 

    //if the login button is clicked
    if(isset($_POST['login']))  
    {   
        // get data from form
        $email = $_POST['email'];
        $password = $_POST['password'];

        //turn the password to the encrypted version
        $password = md5($password);

        // select the row data from the "accounts" table if the user's email and password have matching values with that table
        $select = mysqli_query($conn, "SELECT *  FROM accounts WHERE email = '$email' AND password = '$password' ");

        // get the row data
        $row = mysqli_fetch_array($select);

        //if user's input email and password match email and password data from the "accounts" table
        if(is_array($row)){

            // create session superglobal variables
            $_SESSION['user_name'] = $row['user_name'];
            $_SESSION['email'] = $row['email'];
            $_SESSION['password'] = $row['password'];

            header("Location:logged-in.php");
        }else{  

            // error message
            echo '<script type = "text/javascript">';
            echo 'alert("INVALID EMAIL OR PASSWORD!");';
            echo 'window.location.href = "index.php"';
            echo '</script>';
        }
    }

?>