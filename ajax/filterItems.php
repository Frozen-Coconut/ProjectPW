<?php
    session_start();

    if(isset($_GET["brand"])){
        $_SESSION["filterBrand"] = $_GET["brand"];
    }

    if(isset($_GET["instrument"])){
        $_SESSION["filterInstrument"] = $_GET["instrument"];
    }

    if(isset($_GET["name"])){
        $_SESSION["filterName"] = $_GET["name"];
    }
?>