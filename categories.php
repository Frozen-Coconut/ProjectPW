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

        <div id="container" class="flex flex-col p-20"></div>

        <?php require_once("./footer.php") ?>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function() {
            init();
            $(window).resize(function() {
                init();
            });

            function init() {
                let container = $('#container');
                container.html('');
                // by instrument
                container.append($(`<h2 class="text-3xl">By Instrument</h2>`));
                let instrumentContainer = $(`<div class="flex py-6 mb-3"></div>`);
                container.append(instrumentContainer);
                // for (let j = 1; j <= $(document).width()/200; j++) {
                //     instrumentContainer.append($(`<div class="w-40 h-40 border-2 rounded-xl border-black mr-6"></div>`));
                // }
                loadCategories(instrumentContainer, "instrument", 1);
                
                // by brand
                container.append($(`<h2 class="text-3xl">By Brand</h2>`));
                let brandContainer = $(`<div class="flex py-6 mb-3"></div>`);
                container.append(brandContainer);
                // for (let j = 1; j <= $(document).width()/200; j++) {
                //     brandContainer.append($(`<div class="w-40 h-40 border-2 rounded-xl border-black mr-6"></div>`));
                // }
                loadCategories(brandContainer, "brand", 1);
            }

            function loadCategories(container, type, page) {
                $.ajax({
                    type: "get",
                    url: "./ajax/loadCategories.php",
                    data: {
                        "type": type,
                        "num": $(document).width()/200,
                        "page": page
                    },
                    success: function (response) {
                        container.html(response);
                    }
                });
            }
        });
    </script>
</body>
</html>