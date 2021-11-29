<?php require_once("./util/docOpen.php") ?>

<script>
    document.title = 'Checkout';
</script>

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
    #shoppingCartTable {
        width: 96%;
    }

    #shoppingCartTable > * > tr > * {
        padding: 0.5rem;
        border-width: 1px 0;
        vertical-align: center;
        text-align: center;
    }
</style>

<div class="min-h-screen flex flex-col items-center relative bg-green-50">
    <p class="text-4xl my-10">Check Out</p>

    <table id="shoppingCartTable" class="table-auto shadow-lg bg-white">
        <thead>
            <tr>
                <th>Produk</th>
                <th>Jumlah</th>
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
                        <?= $value["qty"] ?>
                    </td>
                    <td>Rp <?= number_format($value["price"], 2, ",", ".") ?></td>
                    <td>Rp <?= number_format($value["price"] * $value["qty"], 2, ",", ".") ?></td>
                </tr>
            <?php } ?>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td>Rp <?= number_format($total, 2, ",", ".") ?></td>
            </tr>
        </tbody>
    </table>
    <!-- action ke pembayaran midtrans -->
    <form action="SOMEWHERE" method="post" class="mt-8 mb-28" style="width: 96%;">
        <label for="alamat">Alamat Pengiriman</label><br>
        <input type="text" name="alamat" id="alamat" placeholder="Alamat Pengiriman" class="w-full mt-3"><br>
        <button id="bayar" class="absolute right-8 bottom-8 px-5 py-2 text-white hover:opacity-80 shadow-md bg-green-600">Bayar</button>
    </form>
    <button onclick="window.history.back()" class="absolute left-8 top-8 px-5 py-2 bg-gray-400 hover:opacity-80 shadow-md">Kembali</button>
</div>

<script>
    $(document).ready(function () {
        disableBayar();
        if ($('#shoppingCartTable tbody tr').length > 1) {
            $('#alamat').change(function(e) { 
                if ($('#alamat').val() == '') {
                    disableBayar();
                } else {
                    enableBayar();
                }
            });
        }
    });

    function disableBayar() {
        let bayar = $('#bayar');
        bayar.attr('disabled', true);
        bayar.addClass('opacity-60');
        bayar.removeClass('hover:opacity-80');
        bayar.css('cursor', 'default');
    }
    
    function enableBayar() {
        let bayar = $('#bayar');
        bayar.attr('disabled', false);
        bayar.removeClass('opacity-60');
        bayar.addClass('hover:opacity-80');
        bayar.css('cursor', 'pointer');
    }
</script>

<?php require_once("./util/docClose.php") ?>