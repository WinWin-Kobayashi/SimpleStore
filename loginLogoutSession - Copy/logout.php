<?php
    session_start();
    if(session_destroy()){
        // go back to login page
        header('location: index.php'); 
    }
?>