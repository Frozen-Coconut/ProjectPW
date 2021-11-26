<?php
    require_once('../util/connection.php');

    if(isset($_GET["email"])){
        $email = $_GET["email"];
        $nama = $_GET["nameBaru"];
        $password =$_GET["passwordBaru"];
        $provinsi =$_GET["provinsiBaru"];
        $kota =$_GET["kotaBaru"];
        $birth_date = $_GET["birthDateBaru"];

        $data = [
            "name" => $nama,
            "password" => $password,
            "provinsi" => $provinsi,
            "kota" => $kota,
            "birth_date" => $birth_date
        ];
        updateProfileUser($data,$email);
    }
?>