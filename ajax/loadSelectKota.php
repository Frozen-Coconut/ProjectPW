<?php
    require('../util/connection.php');

    $kota = [];
    if(isset($_GET["provinsi"]) && $_GET["provinsi"] != "" ){
        $kota = selectKota($_GET["provinsi"]);
    }
?>

<select name="kota" id="selectKota" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm">
    <option value="" disabled selected hidden class="text-gray-900">Kota</option>
    <?php foreach($kota as $key => $x) :?>
        <option value="<?= $x["id"] ?>"><?= $x["name"] ?></option>
    <?php endforeach; ?>
</select>