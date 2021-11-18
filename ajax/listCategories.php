<?php
    require_once("../util/connection.php");

    if (isset($_REQUEST["type"])) {
        $type = strval($_REQUEST["type"]);
        if ($type == "instrument") {
            $arr = query("SELECT * FROM instrument;")->fetch_all(MYSQLI_ASSOC);
        } else if ($type == "brand") {
            $arr = query("SELECT * FROM brand;")->fetch_all(MYSQLI_ASSOC);
        }
        foreach ($arr as $key => $value) {
?>
<label class="inline-flex items-center transform scale-90">
    <input type="checkbox" class="rounded"/>
    <span class="ml-2"><?= $value["name"] ?></span>
</label>
<?php
        }
    }
?>