<?php
    require_once("../util/connection.php");

    $filterInstrument = "1 = 1";
    $filterBrand = "1 = 1";
    if (isset($_REQUEST["filter"])) {
        $temp = $_REQUEST["filter"];
        // $type = $temp[0][1];
        // $value = $temp[0][0];
        // $filter = "($type=$value";
        // for ($i = 1; $i < count($temp); $i++) {
        //     $type = $temp[$i][1];
        //     $value = $temp[$i][0];
        //     $filter .= " OR $type=$value";
        // }
        // $filter .= ")";
        for ($i = 0; $i < count($temp); $i++) {
            $type = $temp[$i][1];
            $value = $temp[$i][0];
            if ($type == "id_instrument") {
                if ($filterInstrument == "1 = 1") {
                    $filterInstrument = "($type=$value";
                } else {
                    $filterInstrument .= " OR $type=$value";
                }
            } else if ($type == "id_brand") {
                if ($filterBrand == "1 = 1") {
                    $filterBrand = "($type=$value";
                } else {
                    $filterBrand .= " OR $type=$value";
                }
            }
        }
        if ($filterInstrument != "1 = 1") {
            $filterInstrument .= ")";
        }
        if ($filterBrand != "1 = 1") {
            $filterBrand .= ")";
        }
        unset($temp);
    }

    $search = "1 = 1";
    if (isset($_REQUEST["search"])) {
        $temp = $_REQUEST["search"];
        $search = "name like '%$temp%'";
        unset($temp);
    }

    $item = query("SELECT * FROM items WHERE $filterInstrument AND $filterBrand AND $search");
    
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