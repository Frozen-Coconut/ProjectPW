<?php
    require_once("../util/connection.php");

    foreach ($_REQUEST as $key => $value) {
        $$key = $value;
    }

    if(isset($confirm)){
        updateStatusTransaction($transid,3);
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
                echo "<div class='sm:table-cell hidden p-2 align-middle'><ul>";
                foreach ($it as $k => $item) {
                    echo "<li class='flex my-1'>";
                        echo "<div class='w-12 h-12 bg-hh-black-light mix-blend-darken mr-2 bg-center bg-cover' style='background-image:url(".$item["image"].")'></div>";
                        echo "<div class='w-10/12 text-lg'>".$item["item_name"]." - ".$item["warna"]." - ".$item["quantity"]."pcs</div>";
                    echo "</li>";
                }
                echo "</ul></div>";
                echo "<div class='table-cell p-2 align-middle text-center'>".(($v["status"]==3)?"<div class='rounded-full p-2 px-4 border-4 border-green-600'>Selesai</div>":($v["status"]==2?"<div class='rounded-full p-2 px-4 border-4 border-yellow-500'>Dalam Perjalanan</div>":($v["status"]==4?"":"<div class='rounded-full p-2 px-4 border-4 border-red-600'>Menunggu Konfirmasi</div>")))."</div>";
                echo "<div class='table-cell p-2 align-middle text-sm md:text-md'>Rp ".getCurrencyFormatting($v["total"])."</div>";
                echo "<div class='table-cell p-2 align-middle'>".(($v["status"]==3)?"<div class='text-blue-600 hover:text-blue-400 hover:underline cursor-pointer w-min text-lg' onclick='makeReview(\"".$v["id"]."\")'>Review</div>":($v["status"]==2?"<div class='text-blue-600 hover:text-blue-400 hover:underline cursor-pointer w-min text-lg' onclick='confirmSampai(\"".$v["id"]."\")'>Konfirmasi Sampai</div>":""))."<div class='text-blue-600 hover:text-blue-400 hover:underline cursor-pointer w-min text-lg sm:hidden' onclick='viewDetail(\"".$v["id"]."\")'>Detail</div></div>";
            echo "</div>";
        }
    }
    else if($action=="review"){
        unset($_SESSION["idTransactionReview"]);
        $_SESSION["idTransactionReview"] = $transid;
        $transItems = selectItemTransaction($transid);
        unset($_SESSION["reviewItem"]);
        foreach ($transItems as $key => $value) {
            $_SESSION["reviewItem"][]=array(
                "name" => $value["item_name"],
                "image" => $value["image"]
            );
        }
    }
    else if($action=="detail"){
        $it = selectItemTransaction($transid);
        echo "<div class='flex flex-col items-center overflow-auto max-h-screen'>";
        foreach ($it as $key => $value) {
            echo "<div class='w-11/12 flex my-1 rounded'>";
                echo "<div class='w-12 h-12 bg-cover bg-no-repeat bg-center mix-blend-darken' style='background-image:url(\"".$value["image"]."\")'></div>";
                echo "<div>".$value["item_name"]." - ".$value["warna"]." - ".$value["quantity"]."pcs</div>";
            echo "</div>";
        }
        echo "</div>";
    }
?>