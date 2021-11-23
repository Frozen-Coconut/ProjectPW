<?php
    require_once("../util/connection.php");

    if (isset($_REQUEST["name"])) {
        $name = $_REQUEST["name"];
        if (isset($_REQUEST["num"])) {
            $_SESSION["shoppingCart"][$name]["qty"] = intval($_SESSION["shoppingCart"][$name]["qty"]) + intval($_REQUEST["num"]);
        } else {
            unset($_SESSION["shoppingCart"][$name]);
        }
    }
?>