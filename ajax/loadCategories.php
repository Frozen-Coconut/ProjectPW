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
        foreach ($arr as $key => $value) {
            $image = $value["image"];
?>
<div class="w-40 h-40 border-2 rounded-xl border-black mr-6 flex flex-col justify-center items-center cursor-pointer">
    <img src="<?= $image ?>" alt="<?= $value["name"] ?>" class="w-32 h-32 rounded-xl">
    <p><?= $value["name"] ?></p>
</div>   
<?php
        }
    }
?>
<input type="hidden" id="max<?= ucwords($type) ?>Page" value='<?= intval($count / $num) + 1 ?>'>