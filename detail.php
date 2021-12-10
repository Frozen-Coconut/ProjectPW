<?php
    require_once("./util/connection.php");
    
    if(isset($_REQUEST["itemname"])){
        $itemname = $_REQUEST["itemname"];
        $stmt = $conn->query("SELECT i.name as itemname, b.name as brandname, n.name as instrumentname, i.price as price, i.image as itemimg, i.description as itemdesc, i.stock as itemstock, i.id_diskon as disc FROM items i, brand b, instrument n WHERE i.name='$itemname' AND i.id_brand=b.id AND i.id_instrument=n.id;");
        $item = $stmt->fetch_assoc();
        $itemName = $item["itemname"];
        $stmt = $conn->prepare("SELECT c.name as cname, c.value as cvalue FROM color_items cc, color c WHERE cc.items_name='$itemname' AND cc.id_color=c.id");
        $stmt->execute();
        $colors= $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    }
    
    if(isset($_REQUEST["tocart"])){
        if(isset($_SESSION["loggedIn"])){
            $color_id = $_REQUEST["color_id"];
            $stmt = $conn->query("SELECT id FROM color WHERE value='$color_id'");
            $colorpick = $stmt->fetch_assoc();
            $_SESSION["shoppingCart"]["$itemname $color_id"]=array(
                "name" => $itemname,
                "image" => $item["itemimg"],
                "price" => $item["price"],
                "qty" => $_REQUEST["qty"],
                "color_id"=> $colorpick["id"],
                "color_value" => $color_id
            );
            $_SESSION["onnotice"] = "Berhasil memasukkan ke keranjang!";
        }
        else{
            $_SESSION["onalert"] = "Anda harus login terlebih dahulu!";
        }
        // header("Location: ".$_SERVER["REQUEST_URI"]);
    }
    if(isset($_REQUEST["towish"])){
        if(isset($_SESSION["loggedIn"])){
            $loggedin = $_SESSION["loggedIn"];
            $email = $loggedin["email"];
            $stmt = $conn->prepare("SELECT * FROM wishlist WHERE user_email='$email' AND items_name='$itemname'");
            $stmt->execute();
            $result= $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
            if(count($result) == 0){
                $stmt = $conn->prepare("INSERT INTO wishlist(user_email, items_name) VALUES('$email', '$itemname')");
                $stmt->execute();
                $_SESSION["onnotice"] = "Berhasil memasukkan wishlist!";
            }
            else{
                $_SESSION["onalert"] = "Item sudah ada di wishlist!";
            }
        }
        else{
            $_SESSION["onalert"] = "Anda harus login terlebih dahulu!";
        }
        header("Location: ".$_SERVER["REQUEST_URI"]);
    }
?>
<?php require_once("./util/docOpen.php"); ?>
<?php require_once("./util/navbar.php"); ?>
    <script>
        // document.title = 'Detail';
    </script>
    <div class="container min-h-screen flex justify-evenly">
        <div class="flex flex-col items-center w-10/12 min-h-screen">
            <div class= "w-full h-4/5 flex flex-col sm:flex-row justify-evenly">
                <div class="flex flex-col w-full h-screen">
                    <a href="catalogs.php" class="my-5 text-lg hover:text-hh-orange-dark"><b>< Kembali</b></a>
                    <div class="w-full h-full bg-gray-100 shadow-md bg-cover bg-center bg-no-repeat" style='background-image:url(<?=$item["itemimg"]?>);'></div>
                </div>
                <div class="w-full sm:h-full pt-4 sm:pt-16 ml-10">
                    <div class="uppercase text-hh-pink-light text-xl font-medium mb-3 sm:block hidden"><?=$item["instrumentname"]?></div>
                    <div class="text-3xl sm:text-5xl font-medium my-3"><?=$item["itemname"]?></div>
                    <?php
                        if(isset($item["disc"])){
                            $stmt = $conn->query("SELECT value FROM diskon WHERE id='".$item["disc"]."'");
                            $diskon = $stmt->fetch_assoc();
                            echo "<div class='text-xl font-medium text-hh-orange-light my-3 line-through'>Rp ". getCurrencyFormatting($item["price"]) . "</div>";
                            echo "<div class='text-3xl sm:text-4xl font-medium text-hh-orange-light my-3'>Rp ". getCurrencyFormatting($item["price"] - ($item["price"] * $diskon["value"] / 100)) . "</div>";
                        }
                        else{
                            echo "<div class='text-3xl sm:text-4xl font-medium text-hh-orange-light my-3'>Rp ". getCurrencyFormatting($item["price"]) . "</div>";
                        }
                    ?>
                    
                    
                    <div class="uppercase text-md sm:text-xl font-medium mb-3"><?=$item["brandname"]?></div>
                    <div class="my-3">
                        <?php
                            $stmt = $conn->prepare("SELECT rating FROM review WHERE items_name='".$item["itemname"]."'");
                            $stmt->execute();
                            $rate= $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
                            $totalrate = 0; 
                            foreach ($rate as $key => $value) {
                                $totalrate+= $value["rating"];
                            }
                            $avgrate = $totalrate/((count($rate)==0)?1:count($rate));
                            $fullstar = floor($avgrate);
                            
                            $halfstar = ($avgrate*10%10!=0);
                            for($i = 0 ; $i < $fullstar ; $i++){
                                echo "<i class='fas fa-star text-hh-orange-light text-lg'></i>";
                            }
                            if($halfstar){
                                echo "<i class='fas fa-star-half-alt text-hh-orange-light text-lg'></i>";
                            }
                            for($i = $fullstar+$halfstar ; $i < 5 ; $i++){
                                echo "<i class='far fa-star text-hh-orange-light text-lg'></i>";
                            }
                            echo "<span class='text-2xl sm:text-lg font-semibold ml-2'>".$avgrate." (".count($rate)." review)</span>";
                        ?>
                    </div>
                    <div class="mt-3  sm:mt-9 font-semibold">Warna</div>
                    <form action="" method="POST">
                    <div class="my-3 flex">
                        <?php
                            foreach ($colors as $key => $value) {
                        ?>
                            <!-- <label class="w-5 h-5 rounded-full mx-0.5" style="background-color: <?=$value['cvalue']?>;"  for=""></label> -->
                            <input class="p-4 sm:p-2 mx-2 sm:mx-0.5 colorPick" type="radio" name="color_id" id="" value="<?=$value['cvalue']?>"style="background-color: <?=$value['cvalue']?>;" title="<?=$value['cname']?>">
                        <?php
                            }
                        ?>
                    </div>
                    <div>
                        <div class="mt-5 w-full sm:w-56 h-12 border-hh-orange-light border-solid border-2 flex flex-row">
                            <button id="qtydown" type="button" class="w-2/12 sm:w-3/12 h-11 text-lg font-bold border-solid border-r-2 border-hh-orange-light bg-hh-orange-light">-</button>
                            <input type="text" name="qty" style="text-align:center;" class="w-8/12 sm:w-6/12 h-8 mt-1 text-2xl border-0" id="qty" value="<?php echo "0"; // if (isset($_SESSION["shoppingCart"][$itemName])) {$iniVariabelIsi = $_SESSION["shoppingCart"][$itemName]["qty"]; echo "$iniVariabelIsi";} else echo "0"; ?>"></input>
                            <button id="qtyup" type="button" class="w-2/12 sm:w-3/12 h-11 text-lg font-bold border-solid border-l-2 border-hh-orange-light bg-hh-orange-light">+</button>
                        </div>
                        <div class="mt-6 mb-4">
                            <button type="submit" name="tocart" id="tocart" value="clicked" class="w-full sm:w-2/3 h-10 rounded bg-hh-orange-dark text-lg text-hh-black-dark font-semibold disabled:opacity-50" disabled>Masukkan Keranjang</button>
                        </div>
                        <div class="mb-6 mt-4">
                            <button type="submit" name="towish" value="clicked" class="w-full sm:w-2/3 h-10 rounded bg-hh-pink-dark text-lg text-hh-white font-semibold">Masukkan Wishlist</button>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
            <div class="w-11/12 mb-5 sm:my-12 flex flex-col items-center">
                <div class="w-full sm:w-2/5 h-16  flex justify-center items-center">
                    <div class="w-56 sm:w-24 h-10 pt-1 text-center rounded-3xl border-2 border-solid border-gray-00 shadow-lg mx-5 cursor-pointer desc transition-colors duration-300 bg-hh-orange-light" onclick="openDesc()">Deskripsi</div>
                    <div class="w-56 sm:w-24 h-10 pt-1 text-center rounded-3xl border-2 border-solid border-gray-00 shadow-lg mx-5 cursor-pointer desc transition-colors duration-300" onclick="openReview()">Review</div>
                </div>
                <div class="w-full sm:w-3/4 bg-hh-orange-light flex flex-col items-center mt-2 py-5 rounded-xl shadow-lg">
                    <div class="w-11/12" id="descContainer"><?=$item["itemdesc"]?></div>
                </div>
            </div>
        </div>
    </div>
    <script>
        let instock = <?=$item["itemstock"]?>;
        $(document).ready(function () {
            if(parseInt($("#qty").val()) == 0){
                $("#tocart").prop("disabled",true);
            } else {
                $("#tocart").prop("disabled",false);
            }
            // $(".fa-star").mouseenter(function () { 
            //     for (let i = 0; i <= $(this).index()+1; i++) {
            //         $(".fa-star:nth-child("+i+")").removeClass("far");
            //         $(".fa-star:nth-child("+i+")").addClass("fas");
            //     }
            // });

            // $(".fa-star").mouseleave(function () { 
            //     for (let i = 0; i <= $(this).index()+1; i++) {
            //         $(".fa-star:nth-child("+i+")").removeClass("fas");
            //         $(".fa-star:nth-child("+i+")").addClass("far");
            //     }
            // });

            $("#qtydown").click(function(){
                if(parseInt($("#qty").val()) > 0){
                    $("#qty").val(parseInt($("#qty").val())-1);
                }
                if(parseInt($("#qty").val()) == 0){
                    $("#tocart").prop("disabled",true);
                } else {
                    $("#tocart").prop("disabled",false);
                }
            });

            $("#qtyup").click(function(){
                if(parseInt($("#qty").val()) < instock){
                    $("#qty").val(parseInt($("#qty").val())+1);
                    $("#tocart").prop("disabled",false);
                }
                console.log($("#tocart").prop("disabled"));
            });

            $(".desc").click(function(){
                $(".desc").each(function(){
                    $(this).removeClass("bg-hh-orange-light");    
                });
                $(this).addClass("bg-hh-orange-light");
            });
        });
        function openDesc() {
            $("#descContainer").html(`<?=$item["itemdesc"]?>`);
        }

        function openReview(){
            $.ajax({
                type: "POST",
                url: "ajax/productDetail.php",
                data: {
                    "action" : "openReview",
                    "itemname":"<?=$itemname?>"
                },
                success: function (response) {
                    $("#descContainer").html(response);
                }
            });
        }
    </script>
<?php
    require_once("./util/footer.php");
    require_once("./util/docClose.php");
?>