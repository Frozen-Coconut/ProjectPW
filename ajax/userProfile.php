<?php
    require_once("../util/connection.php");

    if(isset($_REQUEST["action"])){
        foreach ($_REQUEST as $key => $value) {
            $$key = $value;
        }
    }

    if($action == "loadCity"){
        $kota = selectKota($id_provinsi);
        // echo "<pre>";
        // print_r($kota);
        // echo "</pre>";
        foreach ($kota as $key => $value) {
            echo "<option value='".$value["id"]."'".($value["id"]==$selected?"selected='selected'":"").">".$value["name"]."</option>";
        }
    }
?>