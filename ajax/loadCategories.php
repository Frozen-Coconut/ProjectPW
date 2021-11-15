<?php
    require_once("../connection.php");

    if (isset($_REQUEST["type"])) {
        $type = strval($_REQUEST["type"]);
        $num = intval($_REQUEST["num"]);
        $page = intval($_REQUEST["page"]);
        $start = ($page - 1) * $num;
        if ($type == "instrument") {
            $arr = query("SELECT * FROM instrument LIMIT $start, $num;")->fetch_all(MYSQLI_ASSOC);
        } else if ($type == "brand") {
            $arr = query("SELECT * FROM brand LIMIT $start, $num;")->fetch_all(MYSQLI_ASSOC);
        }
        foreach ($arr as $key => $value) {
            $image = $value["image"];
?>
    <div class="w-40 h-40 border-2 rounded-xl border-black mr-6">
        <img src="<?= $image ?>" alt="<?= $value["name"] ?>" class="w-full h-full rounded-xl">
    </div>
<?php
        }
    }
?>