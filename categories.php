<?php
    require_once("./connection.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Categories</title>
    <link rel="stylesheet" href="./tailwindcss.css">
    <link rel="stylesheet" href="./style.css">
</head>
<body>
    <div class="min-h-screen flex flex-col">
        <?php require_once("./navbar.php") ?>

        <div id="container" class="flex flex-col p-20">
            <h2 class="text-3xl">By Instrument</h2>
            <div id="containerInstrument" class="flex py-6 mb-3"></div>
            <h2 class="text-3xl">By Brand</h2>
            <div id="containerBrand" class="flex py-6 mb-3"></div>
        </div>

        <?php require_once("./footer.php") ?>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script>
        let currentInstrumentPage = 1;
        let currentBrandPage = 1;
        let num = 0;
        let maxInstrumentPage = 0;
        let maxBrandPage = 0;

        $(document).ready(function () {
            init();
        });

        $(window).resize(function() {
            init();
        });
        
        function init() {
            num = $(document).width()/200 - 1;
            initInstrument();
            initBrand();
        }
        
        function initInstrument() {
            loadCategories($('#containerInstrument'), "instrument", num, currentInstrumentPage);
        }
        
        function initBrand() {
            loadCategories($('#containerBrand'), "brand", num, currentBrandPage);
        }
        
        function loadCategories(container, type, num, page) {
            $.ajax({
                type: "get",
                url: "./ajax/loadCategories.php",
                data: {
                    "type": type,
                    "num": num,
                    "page": page
                },
                success: function (response) {
                    container.html(response);
                    if (type == "instrument") {
                        maxInstrumentPage = parseInt($('#maxInstrumentPage').val());
                        container.append($('<button onclick="if(currentInstrumentPage<maxInstrumentPage)currentInstrumentPage++;initInstrument();"><img src="https://cdn2.iconfinder.com/data/icons/250-perfect-vector-pictograms/48/9.5-512.png" id="next" class="w-10 h-10"></img></button>'));
                    } else if (type == "brand") {
                        maxBrandPage = parseInt($('#maxBrandPage').val());
                        container.append($('<button onclick="if(currentBrandPage<maxBrandPage)currentBrandPage++;initBrand();"><img src="https://cdn2.iconfinder.com/data/icons/250-perfect-vector-pictograms/48/9.5-512.png" id="next" class="w-10 h-10"></img></button>'));
                    }
                }
            });
        }
    </script>
</body>
</html>