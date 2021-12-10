<?php
    // $documentTitle = ucfirst(basename($_SERVER["REQUEST_URI"]));
    $documentTitle = ucfirst(basename($_SERVER["PHP_SELF"], ".php"));
    // $documentTitle = str_replace(".php","", $documentTitle);
    // if(strpos($documentTitle, "?") > -1){
        // $documentTitle = str_replace("?"," | ", $documentTitle);
        // $documentTitle = str_replace("%20"," ", $documentTitle);
        // $documentTitle = str_replace(substr($documentTitle, strpos($documentTitle, "|")+2, strpos($documentTitle,"=")-1),"",$documentTitle);
        // $documentTitle = explode("?", $documentTitle)[0];
    // }
    if ($documentTitle == "Index" || $documentTitle == "ProjectPW") {
        $documentTitle = "Home";
    } else {
        $firstWords = array("About", "Admin", "Shopping");
        foreach ($firstWords as $key => $value) {
            if (substr($documentTitle,0,strlen($value)) == $value) {
                $documentTitle = ucwords(str_replace($value, "$value ", $documentTitle));
                break;
            }
        }
    }

    if(isset($_COOKIE["loggedIn"])){
        $_SESSION["loggedIn"] = json_decode($_COOKIE["loggedIn"],true);
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=$documentTitle?></title>
    <link rel="stylesheet" href="./tailwindcss.css">
    <!-- <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css"> -->
    <link rel="stylesheet" href="./style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="shortcut icon" href="asset/favicon.ico" type="image/x-icon">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
</head>
<body>