<?php
    require('../util/connection.php');

    foreach ($_REQUEST as $key => $value) {
        $$key = $value;
    }

    if($action == "openReview"){
        $stmt = $conn->prepare("SELECT u.name as uname, r.review as rreview, r.rating as rrating FROM review r, user u WHERE items_name='$itemname' AND r.user_email=u.email");
        $stmt->execute();
        $r= $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
        if(count($r)>0){
            foreach ($r as $key => $v) {
                echo "<div class='w-full h-20 shadow-sm rounded p-2'>";
                echo "<div class='text-xl'>";
                echo $v["uname"];
                // $satuan = $v["rrating"]*10/10;
                // $pecahan = $v["rrating"]*10%10;
                // for ($i=0; $i < $satuan; $i++) { 
                //     echo "<i class='fas fa-star text-hh-orange-light text-lg'></i>";
                // }
                // if($pecahan != 0){
                //     echo "<i class='fas fa-star-half-alt text-hh-orange-light text-lg'></i>";
                // }
                // for ($i=0; $i < 4-$satuan; $i++) { 
                //     echo "<i class='far fa-star text-hh-orange-light text-lg'></i>";
                // }

                $rate = $v["rrating"];
                $starCtr = 0;
                $fullstar = floor($rate);
                $halfstar = ($rate*10%10!=0);
                echo "<span class='mx-2 w-min'>";
                for($i = 0 ; $i < $fullstar ; $i++){
                    echo "<i class='fas fa-star text-hh-orange-light text-lg'></i>";
                }
                if($halfstar){
                    echo "<i class='fas fa-star-half-alt text-hh-orange-light text-lg'></i>";
                }
                for($i = $fullstar+$halfstar ; $i < 5 ; $i++){
                    echo "<i class='far fa-star text-hh-orange-light text-lg'></i>";
                }
                echo "</span>";

                echo "</div>";
                echo "<div>".$v["rreview"]."</div>";
                echo "</div>";
            }
        }
        else{
            echo "Tidak ada Review";
        }
    }
?>