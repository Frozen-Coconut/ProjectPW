<?php
    session_start();
    session_destroy();
    setcookie("loggedIn", "", time()-(60*60*24*10));
    header("Location: ../index.php");
?>