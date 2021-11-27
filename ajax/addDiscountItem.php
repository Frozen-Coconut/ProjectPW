<?php
    require('../util/connection.php');

    $idItem = $_GET["item"];

    $idDiskon = $_GET["diskon"];

    updateDiscountItem($idDiskon,$idItem);
?>