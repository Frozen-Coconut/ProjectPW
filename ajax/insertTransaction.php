<?php
    require_once('../util/connection.php');

    unset($_SESSION["shoppingCart"]);

    $dataTransaction = $_SESSION["transaction"];

    insertTransaction($dataTransaction);

    foreach ($dataTransaction["item"] as $key => $value) {
        $name = $value["nama"];
        $qty = $value["qty"];
        query("UPDATE items SET stock = stock - $qty WHERE name = '$name';");
    }

    header("Location: ../index.php");
?>