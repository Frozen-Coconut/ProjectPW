<?php
    require_once('../util/connection.php');

    if(isset($_GET["email"])){
        $email = $_GET["email"];
        $nama = $_GET["nameBaru"];
        $password =$_GET["passwordBaru"];
        $provinsi =$_GET["provinsiBaru"];
        $kota =$_GET["kotaBaru"];
        $birth_date = $_GET["birthDateBaru"];

        if ($nama != "" && $password != "" && $provinsi != "" && $kota !="" && $birth_date != "") {
            // Birth date dicek apakah lebih besar dari yang sekarang

            if (date('Y-m-d', strtotime($birth_date)) <= date('Y-m-d')) {
                $data = [
                    "name" => $nama,
                    "password" => $password,
                    "provinsi" => $provinsi,
                    "kota" => $kota,
                    "birth_date" => $birth_date
                ];
                updateProfileUser($data,$email);
                echo("Data user berhasil diubah !");
            }
            else echo('Tanggal lahir tidak boleh lebih besar dari tanggal sekarang !');
        }
        else echo('Isi semua input !');
    }
?>