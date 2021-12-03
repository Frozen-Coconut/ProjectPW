<?php require_once("./util/connection.php") ?>
<?php require_once("./util/docOpen.php") ?>

<?php
    $item[] = array(
        "name" => "Fender American Professional Precision Bass Guitar",
        "image" => "https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FF03-019-3612-776_2FF03-019-3612-776_1573183044250.jpg?v=1573183052",
    );
    $item[] = array(
        "name" => "Amahi UK550C Classic Series Flamed Maple Concert Ukulele",
        "image" => "https://cdn.shopify.com/s/files/1/1369/1865/products/amahi-uk550c-classic-series-flamed-maple-concert-ukulele-for-sale-waukegan-il-family-piano_2_360x.png?v=1588379861",
    );
    $item[] = array(
        "name" => "Casio CT-X5000 61-Key Portable Keyboard",
        "image" => "https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FC32-CT-X5000_2FC32-CT-X5000_1622175245030.jpg?v=1631182662",
    );
?>

<style>
    .fa-star {
        text-shadow: 1px 1px black;
        cursor: pointer;
    }

    .fa-star:hover {
        color: #F2F235;
    }

    .checked {
        color: yellow;
    }
</style>

<div class="min-h-screen flex flex-col items-center relative bg-gray-50">
    <p class="text-4xl my-10">Review dan Peringkat</p>
    <div class="w-4/5 bg-gray-100 flex flex-col items-center pt-10">
        <?php foreach ($item as $key => $value) { ?>
            <div class="w-11/12 flex items-center mb-10">
                <div class="w-9/12 flex items-center">
                    <div class="w-28 h-28 bg-contain bg-center bg-no-repeat bg-white border rounded-full" style="background-image: url(<?= $value["image"] ?>);"></div>
                    <p class="text-lg ml-5"><?= $value["name"] ?></p>
                </div>
                <div class="w-3/12 flex items-center justify-center text-lg md:text-2xl lg:text-3xl text-white">
                    <div class="fa fa-star mr-2 checked"></div>
                    <div class="fa fa-star mr-2 checked"></div>
                    <div class="fa fa-star mr-2 checked"></div>
                    <div class="fa fa-star mr-2 checked"></div>
                    <div class="fa fa-star checked"></div>
                </div>
            </div>
        <?php } ?>
    </div>
</div>

<script>
    $(document).ready(function () {
        $('.fa-star').click(function (e) { 
            e.preventDefault();
            let current = $(this);
            current.addClass('checked');
            current.prevAll().addClass('checked');
            current.nextAll().removeClass('checked');
        });
    });
</script>

<?php require_once("./util/docClose.php") ?>