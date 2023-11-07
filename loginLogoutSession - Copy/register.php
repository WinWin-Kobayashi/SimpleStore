<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Midterm</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <form action="" method="POST">
        <h1>Register</h1>

        <!-- get user_name input -->
        <input type="text" class="textbox" name="user_name" placeholder="User Name" required = ""> <br>
        <!-- get email input -->
        <input type="text" class="textbox" name="email" placeholder="Email" required = ""> <br>
        <!-- get password input -->
        <input type="password" class="textbox" name="password" placeholder="Password" required = ""> <br>
        <!-- get retyped password input -->
        <input type="password" class="textbox" name="password2" placeholder="Retype Password" required = ""> <br>
        <!-- register button -->
        <button type="submit" class="button" name="register">Register</button>
    </form>
  
</body>


</html>

<?php 

    $error = NULL;

    //if the register button is clicked
    if(isset($_POST['register']))  
    {   
        // get data from form
        $user_name = $_POST['user_name'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $password2 = $_POST['password2'];

        if(strlen($user_name) < 5){
            $error = "<p> Your username must be at least 5 characters </p>";
            echo $error;
        }else if(strlen($password) < 7){
            $error .= "<p> Your password must be at least 7 characters long </p>";
            echo $error;
        }else if($password2 != $password){
            $error .= "<p> Your passwords do not match </p>";
            echo $error;
        }else{
            //form is valid

            //so connect to database >>>
            $mysqli = new mysqli('localhost', 'root', '', 'store_database');

            //sanitize the form data >>>
            $user_name = $mysqli->real_escape_string($user_name);  
            $password = $mysqli->real_escape_string($password);  
            $password2 = $mysqli->real_escape_string($password2);   
            $email = $mysqli->real_escape_string($email); 

            // Check if the email already exists
            $checkEmailQuery = "SELECT * FROM accounts WHERE email = '$email'";

            // retrive query result
            $result = $mysqli->query($checkEmailQuery);

            if ($result->num_rows > 0) {
                // Email already exists, handle the error
                $error .= "<p> This email is already registered. Please use a different email address. </p>";
                echo $error;
            }else{
                // if email doesn't exit already, register

                //encrypt password
                $password = md5($password);
                $insert = $mysqli->query("INSERT INTO accounts(user_name,password,email) VALUES('$user_name','$password','$email')");

                if($insert){
                    header('location:index.php');
                }
            }
        }
        
    }

?>