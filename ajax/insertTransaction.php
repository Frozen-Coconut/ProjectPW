<?php
    require_once('../util/connection.php');

    unset($_SESSION["shoppingCart"]);

    $dataTransaction = $_SESSION["transaction"];

    insertTransaction($dataTransaction);
?>