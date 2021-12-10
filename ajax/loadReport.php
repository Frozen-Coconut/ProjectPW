<?php
    require('../util/connection.php');

    if(isset($_GET["brand"])){
        $brand = getBrandTransaction();

        $data = [];

        if (sizeof($brand) >=5) {
            for ($i=0; $i < 5; $i++) { 
                $data[] = $brand[$i];
            }
        }
        else {
            for ($i=0; $i < sizeof($brand); $i++) { 
                $data[] = $brand[$i];
            }
        }

        echo json_encode($data);
    }

    if(isset($_GET["instrument"])){
        $instrument = getInstrumentTransaction();

        $data = [];

        if (sizeof($instrument) >=5) {
            for ($i=0; $i < 5; $i++) { 
                $data[] = $instrument[$i];
            }
        }
        else {
            for ($i=0; $i < sizeof($instrument); $i++) { 
                $data[] = $instrument[$i];
            }
        }

        echo json_encode($data);
    }
?>