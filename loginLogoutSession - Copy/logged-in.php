<!-- ADMIN PAGE -->

<?php 
    // start session for this page as well
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Midterm</title>
    <link rel="stylesheet" href="style.css">
    <style>
        h1, h5{
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>Admin</h1>
    <h1>Welcome <?php echo $_SESSION['user_name']; ?> </h1>
    <h5>Click here to <a href="logout.php">Logout</a> </h5>
<?php
    $gender = '';
    $mtype = '';
    $addr = '';
    $from_date = '';
    $to_date = '';

    if (isset($_POST['filter'])) {
        $gender = $_POST['gender'];
        $mtype = $_POST['mtype'];
        $addr = $_POST['addr'];
        $from_date = $_POST['from_date'];
        $to_date = $_POST['to_date'];
    }
?>

<?php include('filter-options.php'); ?>

<div class="box">
    <div class="container mt-5 d-flex justify-content-center">
    <?php
include("filter.php");
?>



<table class="table">
    <thead>
        <tr>
            <th scope="col">members id</th>
            <th scope="col">First</th>
            <th scope="col">Last</th>
            <th scope="col">Gender</th>
            <th scope="col">Birthdate</th>
            <th scope="col">Home address</th>
            <th scope="col">Email</th>
            <th scope="col">Username</th>
            <th scope="col">Password</th>
            <th scope="col">Member Type</th>
            <th scope="col">Date Created</th>
        </tr>
    </thead>
    <tbody>
    <?php
    if (count($result) > 0) {
        foreach ($result as $row) {
            $id = $row['member_id'];
            $name = $row['first_name'];
            $lname = $row['last_name'];
            $gender = $row['gender'];
            $bdate = $row['birthdate'];
            $haddress = $row['home_address'];
            $email = $row['email'];
            $user = $row['username'];
            $pass = $row['password'];
            $mtype = $row['member_type'];
            $date = $row['date_created'];

            echo '
            <tr>
                <th scope="row">' . $id . '</th>
                <td>' . $name . '</td>
                <td>' . $lname . '</td>
                <td>' . $gender . '</td>
                <td>' . $bdate . '</td>
                <td>' . $haddress . '</td>
                <td>' . $email . '</td>
                <td>' . $user . '</td>
                <td>' . $pass . '</td>
                <td>' . $mtype . '</td>
                <td>' . $date . '</td>
            </tr>';
        }
    } else {
        echo "No results found.";
    }
    ?>
</tbody>
</table>
    </div>
</div>

</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="script.js"></script> 
</body>
</html>