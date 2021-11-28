<?php
    require_once("./util/docOpen.php");
    require_once("./util/navbar.php");

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
        if(isset($_SESSION["loggedin"])){
            $_SESSION["shoppingCart"][$itemname]=array(
                "name" => $itemname,
                "image" => $item["itemimg"],
                "price" => $item["price"],
                "qty" => $_REQUEST["qty"]
            );
            $_SESSION["onnotice"] = "Berhasil memasukkan ke keranjang!";
        }
        else{
            $_SESSION["onalert"] = "Anda harus login terlebih dahulu!";
        }
    }
    if(isset($_REQUEST["towish"])){
        if(isset($_SESSION["loggedin"])){
            $loggedin = $_SESSION["loggedin"];
            $stmt = $conn->prepare("SELECT * FROM wishlist WHERE user_email='$loggedin' AND items_name='$itemname'");
            $stmt->execute();
            $result= $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
            if(count($result) == 0){
                $stmt = $conn->prepare("INSERT INTO wishlist(user_email, items_name) VALUES($loggedin, $itemname)");
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
    }
?>
    <div class="container min-h-screen flex justify-evenly">
        <div class="flex flex-col items-center w-11/12 min-h-screen">
            <div class= "w-full h-4/5 flex justify-evenly">
                <div class="flex flex-col w-1/2">
                    <a href="catalogs.php" class="my-5 text-lg hover:text-hh-orange-dark"><b>< Kembali</b></a>
                    <div class="w-full h-full bg-gray-100 shadow-md bg-cover bg-center bg-no-repeat" style='background-image:url(<?=$item["itemimg"]?>);'></div>
                </div>
                <div class="w-4/12 h-full pt-16">
                    <div class="uppercase text-hh-pink-light text-xl font-medium mb-3"><?=$item["instrumentname"]?></div>
                    <div class="text-5xl font-medium my-3"><?=$item["itemname"]?></div>
                    <div class="text-2xl font-medium text-hh-orange-light my-3 line-through">Rp <?=getCurrencyFormatting($item["price"])?></div>
                    <div class="text-4xl font-medium text-hh-orange-dark my-3">Rp <?=getCurrencyFormatting($item["price"])?></div>
                    <div class="uppercase text-xl font-medium mb-3"><?=$item["brandname"]?></div>
                    <div class="my-3">
                        <i class="fas fa-star text-hh-orange-light  text-lg"></i>
                        <i class="fas fa-star text-hh-orange-light  text-lg"></i>
                        <i class="fas fa-star-half-alt text-hh-orange-light text-lg"></i>
                        <i class="far fa-star text-hh-orange-light  text-lg"></i>
                        <i class="far fa-star text-hh-orange-light  text-lg"></i>
                        <span class="text-lg font-semibold ml-2">X (n review)</span>
                    </div>
                    <div class="mt-9 font-semibold">Warna</div>
                    <div class="my-3 flex">
                        <?php
                            foreach ($colors as $key => $value) {
                        ?>
                            <div class="w-5 h-5 rounded-full mx-0.5" style="background-color: <?=$value['cvalue']?>;" title="<?=$value['cname']?>"></div>
                        <?php
                            }
                        ?>
                    </div>
                    <div>
                        <form action="" method="POST">
                        <div class="mt-5 w-56 h-12 border-hh-orange-light border-solid border-2 flex flex-row">
                            <button id="qtydown" type="button" class="w-3/12 h-11 text-lg font-bold border-solid border-r-2 border-hh-orange-light bg-hh-orange-light">-</button>
                            <input type="text" name="qty" style="text-align:center;" class="w-6/12 h-8 mt-1 text-2xl border-0" id="qty" value="<?php if (isset($_SESSION["shoppingCart"][$itemName])) {$iniVariabelIsi = $_SESSION["shoppingCart"][$itemName]["qty"]; echo "$iniVariabelIsi";} else echo "0"; ?>"></input>
                            <button id="qtyup" type="button" class="w-3/12 h-11 text-lg font-bold border-solid border-l-2 border-hh-orange-light bg-hh-orange-light">+</button>
                        </div>
                        <div class="mt-6 mb-4">
                            <button type="submit" name="tocart" id="tocart" value="clicked" class="w-2/3 h-10 rounded bg-hh-orange-dark text-lg text-hh-black-dark font-semibold disabled:opacity-50" disabled>Masukkan Keranjang</button>
                        </div>
                        <div class="mb-6 mt-4">
                            <button type="submit" name="towish" value="clicked" class="w-2/3 h-10 rounded bg-hh-pink-dark text-lg text-hh-white font-semibold">Masukkan Wishlist</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="w-11/12 my-12 flex flex-col items-center">
                <div class="w-2/5 h-16  flex justify-center items-center">
                    <div class="w-24 h-10 pt-1 text-center rounded-3xl border-2 border-solid border-gray-00 shadow-lg mx-5 cursor-pointer desc transition-colors duration-300 bg-hh-orange-light" onclick="openDesc()">Deskripsi</div>
                    <div class="w-24 h-10 pt-1 text-center rounded-3xl border-2 border-solid border-gray-00 shadow-lg mx-5 cursor-pointer desc transition-colors duration-300" onclick="openReview()">Review</div>
                </div>
                <div class="w-3/4 bg-hh-orange-light flex flex-col items-center mt-2 py-5 rounded-xl shadow-lg">
                    <div class="w-5/6" id="descContainer"><?=$item["itemdesc"]?></div>
                </div>
            </div>
        </div>
    </div>
    <script>
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
                $("#qty").val(parseInt($("#qty").val())+1);
                $("#tocart").prop("disabled",false);
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