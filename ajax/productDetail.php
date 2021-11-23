<?php
    require('../util/connection.php');

    foreach ($_REQUEST as $key => $value) {
        $$key = $value;
    }

    if($action == "openReview"){
        echo "<h1>ini review lho gais</h1>";
    }
?>