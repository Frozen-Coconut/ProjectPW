<?php require_once("./util/docOpen.php") ?>

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
        <tr>
            <td style="text-align: left;">
                <div class="inline-flex items-center">
                    <div class="bg-contain bg-center bg-no-repeat bg-white w-20 h-20" style="background-image: url(./asset/icons/youtube.png);"></div>
                    <p>Item1</p>
                </div>
            </td>
            <td>
                <div class="inline-flex items-center">
                    <button class="w-12 h-12 border-2">+</button>
                    <div class="flex items-center justify-center w-12 h-12 border-t-2 border-b-2"><p>1</p></div>
                    <button class="w-12 h-12 border-2">-</button>
                </div>
            </td>
            <td><button class="w-12 h-12 border-2">X</button></td>
            <td>Rp 10.000.000</td>
        </tr>
    </tbody>
</table>

<?php require_once("./util/docClose.php") ?>