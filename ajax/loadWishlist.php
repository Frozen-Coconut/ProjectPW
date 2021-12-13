<?php
require_once('../util/connection.php');

if(isset($_POST["delete"])){
    deleteWishListItem($_POST["delete"]);
}

$wish = getWishlist();

foreach ($wish as $key => $value){
    //echo $value["items_name"];
    $item = selectItemsName($value["items_name"]);
    // var_dump($item);
?>
    <tr class="border-b">
        <td class="py-4 px-7"><img src="<?= $item[0]["image"] ?>" style="width: 3em; height: 3em;" alt=""></td>
        <td class="py-4 px-7"><a href="./detail.php?itemname=<?=$value["items_name"]?>"><?= $value["items_name"] ?></a></td>
        <td class="py-4 px-7"><?= getCurrencyFormatting($item[0]["price"]) ?></td>
        <td class="py-4 px-7">
        <button class="text-lg transition-all text-gray-100 px-4 py-0.5 rounded bg-hh-orange-dark hover:bg-hh-orange-lighter hover:text-gray-500" onclick='deleteWishlist("<?= $value["items_name"] ?>")'>
            Hapus
        </button>
        </td>
    </tr>
    
<?php

}
?>