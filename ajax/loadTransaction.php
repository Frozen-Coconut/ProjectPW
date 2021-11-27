<?php
    require_once("../util/connection.php");

    if(isset($_GET["confirm"])){
        updateStatusTransaction($_GET["confirm"],$_GET["statusBaru"]);
    }

    $transaction = selectTransaction();

    if(isset($_GET["search"])){
        $transaction = selectTransactionId($_GET["search"]);
    }
?>

<?php foreach($transaction as $x) :?>
    <tr>
        <td class="px-4 py-4 whitespace-nowrap"><?= $x["id"] ?></td>
        <td class="pr-6 py-4 whitespace-nowrap">
            <?php foreach($x["item"] as $y) :?>
                <div class="flex items-center">
                <div class="flex-shrink-0 h-10 w-10">
                    <img class="h-10 w-10 rounded-full" src="<?= $y["image"] ?>" alt="">
                </div>
                <div class="ml-4">
                    <div class="text-sm font-medium text-gray-900 break-word">
                        <?= $y["item_name"]." - ".$y["quantity"] . " - ".$y["warna"] ?>
                    </div>
                </div>
                </div>
            <?php endforeach; ?>
        </td>
        <td class="pr-6 py-4 whitespace-nowrap">
            <div class="flex items-center">
                <div class="">
                    <div class="text-sm font-medium text-gray-900">
                    <?= $x["user_name"] ?>
                    </div>
                    <div class="text-sm text-gray-500">
                    <?= $x["email"] ?>
                    </div>
                    <div class="text-sm text-gray-500">
                    <?= $x["username"] ?>
                    </div>
                </div>
            </div>
        </td>
        <td class="px-6 py-4 whitespace-nowrap">
          <div class="text-sm text-gray-500"><?= "Rp. ". getCurrencyFormatting($x["total"]) ?></div>
        </td>
        <td class="px-6 py-5 whitespace-nowrap">
            <?php
            if ($x["status"] == 1) {
            ?>
            <span class="text-sm rounded-full border-4 border-red-300 p-1.5 -mx-1.5">
                Menunggu Konfirmasi
            </span>
            <?php
            } else if ($x["status"] == 2) {
            ?>
            <span class="text-sm rounded-full border-4 border-yellow-300 p-1.5 -mx-1.5">
                Sedang di Perjalanan
            </span>
            <?php
            } else {
            ?>
            <span class="text-sm rounded-full border-4 border-green-300 p-1.5 -mx-1.5">
                Selesai
            </span>
            <?php
            }
            ?>
        </td>
        <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
            <?php
            if ($x["status"] == 1) {
            ?>
            <button class="text-indigo-600 hover:text-indigo-900 p-2" onclick="confirmStatus('<?= $x['id'] ?>', '<?= $x['status']+1 ?>')">Confirm</button>
            <?php
            } else if ($x["status"] == 2) {
            ?>
            <button class="text-indigo-600 hover:text-indigo-900 p-2" onclick="trackStatus('<?= $x['id'] ?>')">Track</button>
            <?php
            }
            ?>
        </td>
    </tr>
<?php endforeach; ?>