<?php
    require_once("../util/connection.php");

    if (isset($_REQUEST["type"])) {
        $type = strval($_REQUEST["type"]);
        $num = intval($_REQUEST["num"]);
        $page = intval($_REQUEST["page"]);
        $start = ($page - 1) * $num;
        if ($type == "instrument") {
            $arr = query("SELECT * FROM instrument LIMIT $start, $num;")->fetch_all(MYSQLI_ASSOC);
            $count = query("SELECT count(*) FROM instrument")->fetch_all(MYSQLI_NUM)[0][0];
        } else if ($type == "brand") {
            $arr = query("SELECT * FROM brand LIMIT $start, $num;")->fetch_all(MYSQLI_ASSOC);
            $count = query("SELECT count(*) FROM brand")->fetch_all(MYSQLI_NUM)[0][0];
        }
        $counter = $num;
        foreach ($arr as $key => $value) {
            $image = $value["image"];
?>
<div class="mr-6 flex flex-col justify-center items-center">
    <div class="w-40 h-40 border-2 rounded-xl border-black cursor-pointer bg-contain bg-center bg-no-repeat shadow-md hover:shadow-xl hover:opacity-90 mb-3" style="background-image: url(<?= $image ?>);"></div>   
    <p><?= $value["name"] ?></p>
</div>
<?php
            $counter--;
        }
        for ($i = 0; $i < $counter; $i++) { 
?>
<div class="mr-6" style="visibility: hidden;">
    <div class="w-40 h-40"></div>   
    <p>...</p>
</div>
<?php
        }
    }
?>
<input type="hidden" id="max<?= ucwords($type) ?>Page" value='<?= intval(($count - 1) / $num) + 1 ?>'>