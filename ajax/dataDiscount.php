<?php
    require_once('../util/connection.php');

    if(isset($_GET["add"])){
        $nama = $_GET["nama"];
        $value = $_GET["value"];
        if ($nama != "" && $value != "") {
          if ($value > 100) {
            echo("Diskon tidak boleh melebihi 100 !");
          }
          else {
          $data = [
            "nama" => $nama,
            "value" => $value
          ];insertDiskon($data);echo("Discount berhasil ditambahkan !");}
        }
        else echo("Isi semua input !");
  
      }
  
      if(isset($_GET["edit"])){
        $id = $_GET["id"];
        $nama = $_GET["nama"];
        $value = $_GET["value"];
        if ($nama != "" && $value != "") {
          if ($value > 100) {
            echo("Diskon tidak boleh melebihi 100 !");
          }
          else {
          $data = [
            "nama" => $nama,
            "value" => $value
          ];updateDiscount($id,$data);echo("Data discount berhasil diubah !");}
        }
        else echo("Isi semua input !");
  
      }
?>