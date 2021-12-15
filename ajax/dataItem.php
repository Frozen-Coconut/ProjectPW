<?php
    require_once("../util/connection.php");

    if(isset($_GET["stockBaru"]) && isset($_GET["name"])){
        if($_GET["stockBaru"] != "") { updateStock($_GET["stockBaru"], $_GET["name"]); echo("Stock berhasil diupdate !"); }
        else echo("Isi stock !");
    }

    if(isset($_GET["add"])){

      if ($_GET["name"]!= "" && $_GET["brand"] != "" && $_GET["instrument"] != "" && $_GET["price"] != "" && $_GET["stock"] != "" && $_GET["desc"] != "" && $_GET["image"] != "") {
        $data = [
          "name" => $_GET["name"],
          "brand" => $_GET["brand"],
          "instrument" => $_GET["instrument"],
          "price" => $_GET["price"],
          "stock" => $_GET["stock"],
          "desc" => $_GET["desc"],
          "image" => $_GET["image"]
        ];
        insertItems($data);
        echo("Item berhasil ditambahkan !");
      }
      else echo("Isi semua input !");
    }

    if(isset($_GET["addColor"])){
     if ($_GET["name"] != "" && $_GET["value"] != "") {
      $data = [
        "name" => $_GET["name"],
        "value" => $_GET["value"]
      ];
      insertColor($data);
      echo("Warna berhasil ditambahkan !");
     }
     else echo("Isi semua input !");

    }

    if(isset($_GET["addColorItem"])){
      if ($_GET["name"] != "" && $_GET["color"] != "") {
      $data = [
        "name" => $_GET["name"],
        "color" => $_GET["color"]
      ];
      insertColorItem($data);
      echo("Warna berhasil ditambahkan ke Item !");
    }
    else echo("Isi semua input !");

    }
?>