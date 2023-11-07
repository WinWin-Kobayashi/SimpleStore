<!-- PDO CONNECTION VER -->

<?php
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "store_database";

try{
    $con =  new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);

    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch(PDOexception $err) {
    echo "Database connection problem: " . $err->getMessage();
}
?>