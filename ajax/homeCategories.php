<?php
    require_once("../util/connection.php");
        
    $arr = query("SELECT * FROM instrument")->fetch_all(MYSQLI_ASSOC);
    $count = query("SELECT count(*) FROM instrument")->fetch_all(MYSQLI_NUM)[0][0];
    $counter = 1;
    foreach ($arr as $key => $value) {
        
?>
        <div class="w-full bg-white p-12 flex flex-col justify-center items-center" onClick="catSelect('<?= $counter ?>')">
            <div class="mb-8">
                <img class="object-center object-cover h-36 w-36" src="<?= $value["image"] ?>" alt="photo">
            </div>
            <div class="text-center">
                <p class="text-xl text-gray-700 font-bold mb-2"><?= $value["name"] ?></p>
            </div>
            <input type="hidden" value='<?= $value["id"] ?>'>
        </div>
<?php
        $counter++;
    }  
?>