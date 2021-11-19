<?php
    require_once("../util/connection.php");

    $filter = "1 = 1";
    if (isset($_REQUEST["filter"])) {
        $temp = $_REQUEST["filter"];
        // TODO
        unset($temp);
    }

    $search = "1 = 1";
    if (isset($_REQUEST["search"])) {
        $temp = $_REQUEST["search"];
        $search = "name like '%$temp%'";
        unset($temp);
    }

    $item = query("SELECT * FROM items WHERE $filter AND $search");
    
    foreach ($item as $key => $value) {
?>
<div class="flex flex-col p-4 border-2 rounded-xl bg-gray-50 cursor-pointer shadow-md hover:shadow-lg hover:opacity-90" name="catalog">
    <img src="<?= $value["image"] ?>" alt="<?= $value["name"] ?>" class="border-2 rounded-xl mb-4">
    <p><?= $value["name"] ?></p>
    <p>Rp <?= number_format($value["price"], 2, ",", ".") ?></p>
    <input type="hidden" value='<?= $value["name"] ?>'>
</div>
<?php
    }
?>