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
        width: 96%;
    }

    .shoppingCartTable > * > tr > * {
        padding: 0.5rem;
        border-width: 1px 0;
        vertical-align: center;
        text-align: center;
    }
</style>

<div class="min-h-screen flex flex-col items-center relative bg-gray-50">
    <p class="text-4xl my-10">Keranjang Belanja</p>

    <table class="shoppingCartTable table-auto mb-28 shadow-lg bg-white">
        <thead>
            <tr>
                <th>Produk</th>
                <th>Jumlah</th>
                <th>Hapus</th>
                <th class="w-1/6 lg:w-auto">Harga</th>
                <th class="w-1/5 lg:w-auto">Total</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($item as $key => $value) { ?>
                <?php $total += $value["price"] * $value["qty"] ?>
                <tr class="hover:bg-gray-100">
                    <td style="text-align: left;">
                        <div class="inline-flex items-center">
                            <div class="bg-contain bg-center bg-no-repeat bg-white w-20 h-20 mr-3 lg:w-24 lg:h-24" style="background-image: url(<?= $value["image"] ?>);"></div>
                            <p name="name"><?= $value["name"] ?></p>
                        </div>
                    </td>
                    <td>
                        <div class="inline-flex items-center">
                            <button onclick="addQty(this)" class="w-10 h-10 lg:w-12 lg:h-12 border-2">+</button>
                            <div class="flex items-center justify-center w-10 h-10 lg:w-12 lg:h-12 border-t-2 border-b-2"><p name="qty"><?= $value["qty"] ?></p></div>
                            <button onclick="subQty(this)" class="w-10 h-10 lg:w-12 lg:h-12 border-2">-</button>
                        </div>
                    </td>
                    <td><button onclick="removeItem(this)" class="w-10 h-10 lg:w-12 lg:h-12 border-2">X</button></td>
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
    <div class="flex absolute right-8 bottom-8">
        <button onclick="window.location.assign('./catalogs.php')" class="px-5 py-2 bg-gray-400 hover:opacity-80 mr-2 shadow-md">Lanjutkan Belanja</button>
        <button onclick="window.location.assign('./checkout.php')" class="px-5 py-2 text-white hover:opacity-80 shadow-md" style="background-color: red;">Checkout</button>
    </div>
    <button onclick="window.history.back()" class="absolute left-8 top-8 px-5 py-2 bg-gray-400 hover:opacity-80 shadow-md">Kembali</button>
    <!-- <button onclick="window.location.assign('./checkout.php')" class="absolute right-8 bottom-8 px-5 py-2 text-white hover:opacity-80 shadow-md" style="background-color: red;">Checkout</button> -->
</div>

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
                window.location.reload();
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
                    window.location.reload();
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
                window.location.reload();
            }
        });
    }
</script>

<?php require_once("./util/docClose.php") ?>