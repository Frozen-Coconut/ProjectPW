<?php
    require_once("../util/connection.php");

    foreach ($_REQUEST as $key => $value) {
        $$key = $value;
    }

    if($action=="fetch"){
        $useremail = $_SESSION["loggedIn"]["email"];
        $q = "SELECT * FROM transaction WHERE user_email=\"$useremail\"".$filter;
        $stmt = $conn->prepare($q);
        $stmt->execute();
        $hist = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
        foreach ($hist as $key => $v) {
            $it = selectItemTransaction($v["id"]);
            echo "<div class='align-baseline table-row ".(($key%2==0)?"bg-hh-orange-lighter":"bg-hh-gray-light")."'>";
                echo "<div class='table-cell p-2 align-middle'>".($key+1)."</div>";
                echo "<div class='table-cell p-2 align-middle'><ul>";
                foreach ($it as $k => $item) {
                    echo "<li class='flex my-1'>";
                        echo "<div class='w-12 h-12 bg-hh-black-light mix-blend-darken mr-2 bg-center bg-cover' style='background-image:url(".$item["image"].")'></div>";
                        echo "<div class='w-10/12 text-lg'>".$item["item_name"]." - ".$item["warna"]." - ".$item["quantity"]."pcs</div>";
                    echo "</li>";
                }
                echo "</ul></div>";
                echo "<div class='table-cell p-2 align-middle text-center'>".(($v["status"]==3)?"<span class='rounded-full p-2 px-4 border-4 border-green-600'>Selesai</span>":($v["status"]==2?"<span class='rounded-full p-2 px-4 border-4 border-yellow-500'>Dalam Perjalanan</span>":"<span class='rounded-full p-2 px-4 border-4 border-red-600'>Menunggu Konfirmasi</span>"))."</div>";
                echo "<div class='table-cell p-2 align-middle'>Rp ".getCurrencyFormatting($v["total"])."</div>";
                echo "<div class='table-cell p-2 align-middle'>".(($v["status"]==3)?"<div class='text-blue-600 hover:text-blue-400 hover:underline cursor-pointer w-min text-lg' onclick='makeReview(\"".$v["id"]."\")'>Review</div>":"")."</div>";
            echo "</div>";
        }
    }
    else if($action=="review"){
        $transItems = selectItemTransaction($transid);
        unset($_SESSION["reviewItem"]);
        foreach ($transItems as $key => $value) {
            $_SESSION["reviewItem"][]=array(
                "name" => $value["item_name"],
                "image" => $value["image"]
            );
        }
    }
?>