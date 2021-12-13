<?php 
    require_once("../util/connection.php");

    insertReview($_REQUEST["email"], $_REQUEST["item"]);
    
    updateStatusTransaction($_REQUEST["idTransaction"], 4)
?>