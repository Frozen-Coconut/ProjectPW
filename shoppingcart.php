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

    $total = 0;
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
            <th style="width: 45%;">Product</th>
            <th style="width: 15%;">Quantity</th>
            <th style="width: 10%;">Remove</th>
            <th style="width: 15%;">Price</th>
            <th style="width: 15%;">Total</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($item as $key => $value) { ?>
            <?php $total += $value["price"] * $value["qty"] ?>
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
                <td>Rp <?= number_format($value["price"], 2, ",", ".") ?></td>
                <td>Rp <?= number_format($value["price"] * $value["qty"], 2, ",", ".") ?></td>
            </tr>
        <?php } ?>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>Rp <?= number_format($total, 2, ",", ".") ?></td>
        </tr>
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
                // $('p[name=qty]', sender.parentElement).html(parseInt($('p[name=qty]', sender.parentElement).html()) + 1);
                location.reload();
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
                    // $('p[name=qty]', sender.parentElement).html($('p[name=qty]', sender.parentElement).html() - 1);
                    location.reload();
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
                // $(sender.parentElement.parentElement).remove();
                location.reload();
            }
        });
    }
</script>

<?php require_once("./util/docClose.php") ?>