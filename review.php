<?php require_once("./util/connection.php") ?>
<?php 
    if (!isset($_SESSION["loggedIn"])) {
        header("Location: index.php");
    }
    if (!isset($_SESSION["reviewItem"])) {
        header("Location: index.php");
    }
    require_once("./util/docOpen.php") 
?>

<?php
    // $item[] = array(
    //     "name" => "Fender American Professional Precision Bass Guitar",
    //     "image" => "https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FF03-019-3612-776_2FF03-019-3612-776_1573183044250.jpg?v=1573183052"
    // );
    // $item[] = array(
    //     "name" => "Amahi UK550C Classic Series Flamed Maple Concert Ukulele",
    //     "image" => "https://cdn.shopify.com/s/files/1/1369/1865/products/amahi-uk550c-classic-series-flamed-maple-concert-ukulele-for-sale-waukegan-il-family-piano_2_360x.png?v=1588379861"
    // );
    // $item[] = array(
    //     "name" => "Casio CT-X5000 61-Key Portable Keyboard",
    //     "image" => "https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FC32-CT-X5000_2FC32-CT-X5000_1622175245030.jpg?v=1631182662"
    // );
    $item = $_SESSION["reviewItem"];
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

<div class="min-h-screen flex flex-col items-center relative bg-gray-50 relative">
    <p class="text-4xl my-10">Review dan Peringkat</p>
    <div class="w-4/5 bg-gray-100 flex flex-col items-center pt-10 mb-20">
        <?php foreach ($item as $key => $value) { ?>
            <div class="w-11/12 flex flex-col mb-12">
                <div class="w-full flex items-center mb-6">
                    <div class="w-9/12 flex items-center">
                        <div class="w-28 h-28 bg-contain bg-center bg-no-repeat bg-white border rounded-full" style="background-image: url(<?= $value["image"] ?>);"></div>
                        <p class="text-lg ml-5"><?= $value["name"] ?></p>
                    </div>
                    <div class="w-3/12 flex items-center justify-center text-lg md:text-2xl lg:text-3xl text-white">
                        <div class="fa fa-star mr-2 checked" value="1" name="<?= $value["name"] ?>"></div>
                        <div class="fa fa-star mr-2 checked" value="2" name="<?= $value["name"] ?>"></div>
                        <div class="fa fa-star mr-2 checked" value="3" name="<?= $value["name"] ?>"></div>
                        <div class="fa fa-star mr-2 checked" value="4" name="<?= $value["name"] ?>"></div>
                        <div class="fa fa-star checked" value="5" name="<?= $value["name"] ?>"></div>
                    </div>
                </div>
                <input type="text" placeholder="This is a review..." name="<?= $value["name"] ?>">
            </div>
        <?php } ?>
    </div>
    <button onclick="submit()" class="absolute bottom-5 px-5 py-2 text-white hover:opacity-80 shadow-md bg-green-600" style="right: 10%">Submit</button>
</div>

<script>
    $(document).ready(function () {
        itemData = {}
        <?php foreach ($item as $key => $value) { ?>
            itemData['<?= $value["name"] ?>'] = {
                'name': '<?= $value["name"] ?>',
                'review': '',
                'rating': 5
            }
        <?php } ?>
        $('.fa-star').click(function (e) { 
            e.preventDefault();
            let current = $(this);
            current.addClass('checked');
            current.prevAll().addClass('checked');
            current.nextAll().removeClass('checked');
            itemData[current.attr('name')]['rating'] = parseInt(current.attr('value'));
        });
        $('input[placeholder="This is a review..."]').change(function (e) { 
            let current = $(this);
            itemData[current.attr('name')]['review'] = current.val();
        });
    });

    function submit() {
        $.ajax({
            type: "post",
            url: "./ajax/insertReview.php",
            data: {
                "email": "<?= $_SESSION["loggedIn"]["email"] ?>",
                "item": itemData
            },
            success: function (response) {
                window.location.assign('index.php');
            }
        });
    }
</script>

<?php require_once("./util/docClose.php") ?>