<?php
    if(isset($_POST["submit"])){
        $birthdate = $_POST["birthDate"];

        $birthDate = date('Y-m-d', strtotime($birthdate));
        $date_now = date('Y-m-d');

        echo($birthdate." : ".$date_now);
        if ($birthdate>$date_now) {
            echo ("Ga bisa woe");
        }
        else echo("Mantap !");
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="post">
        <input type="date" name="birthDate" id="">
        <button name="submit">Coba cek</button>
    </form>
</body>
</html>