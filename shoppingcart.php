<?php require_once("./util/docOpen.php") ?>
<?php
    // $_SESSION["shoppingCart"]["Fender American Professional Precision Bass Guitar"] = array(
    //     "name" => "Fender American Professional Precision Bass Guitar",
    //     "image" => "https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FF03-019-3612-776_2FF03-019-3612-776_1573183044250.jpg?v=1573183052",
    //     "price" => 26300000,
    //     "qty" => 5
    // );

    if (isset($_SESSION["shoppingCart"])) {
        $item = $_SESSION["shoppingCart"];
    } else {
        $item = array();
    }
?>

<style>
    .shoppingCartTable {
        width: 100%;
    }

    .shoppingCartTable > * > tr > * {
        padding: 0.5rem;
        background-color: transparent;
        border-width: 1px 0;
        vertical-align: center;
        text-align: center;
    }
</style>

<table class="shoppingCartTable table-fixed">
    <thead>
        <tr>
            <th style="width: 50%;">Product</th>
            <th style="width: 20%;">Quantity</th>
            <th style="width: 10%;">Remove</th>
            <th style="width: 20%;">Price</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($item as $key => $value) { ?>
            <tr>
                <td style="text-align: left;">
                    <div class="inline-flex items-center">
                        <div class="bg-contain bg-center bg-no-repeat bg-white w-20 h-20" style="background-image: url(<?= $value["image"] ?>);"></div>
                        <p name="name"><?= $value["name"] ?></p>
                    </div>
                </td>
                <td>
                    <div class="inline-flex items-center">
                        <button onclick="addQty(this)" class="w-12 h-12 border-2">+</button>
                        <div class="flex items-center justify-center w-12 h-12 border-t-2 border-b-2"><p name="qty"><?= $value["qty"] ?></p></div>
                        <button onclick="subQty(this)" class="w-12 h-12 border-2">-</button>
                    </div>
                </td>
                <td><button onclick="removeItem(this)" class="w-12 h-12 border-2">X</button></td>
                <td><?= $value["price"] ?></td>
            </tr>
        <?php } ?>
    </tbody>
</table>

<script>
    function addQty(sender) {
        $.ajax({
            type: "post",
            url: "./ajax/editShoppingCart.php",
            data: {
                "name": $('p[name=name]', sender.parentElement.parentElement.parentElement).html(),
                "num": 1
            },
            success: function (response) {
                $('p[name=qty]', sender.parentElement).html(parseInt($('p[name=qty]', sender.parentElement).html()) + 1);
            }
        });
    }

    function subQty(sender) {
        if ($('p[name=qty]', sender.parentElement).html() > 1) {
            $.ajax({
                type: "post",
                url: "./ajax/editShoppingCart.php",
                data: {
                    "name": $('p[name=name]', sender.parentElement.parentElement.parentElement).html(),
                    "num": -1
                },
                success: function (response) {
                    $('p[name=qty]', sender.parentElement).html($('p[name=qty]', sender.parentElement).html() - 1);
                }
            });
        }
    }

    function removeItem(sender) {
        $.ajax({
            type: "post",
            url: "./ajax/editShoppingCart.php",
            data: {
                "name": $('p[name=name]', sender.parentElement.parentElement).html()
            },
            success: function (response) {
                $(sender.parentElement.parentElement).remove();
            }
        });
    }
</script>

<?php require_once("./util/docClose.php") ?>