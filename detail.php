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
?>
    <div class="container min-h-screen flex justify-evenly">
        <div class="flex flex-col items-center w-11/12 min-h-screen">
            <div class= "w-full h-4/5 flex justify-evenly">
                <div class="flex flex-col w-1/2">
                    <a href="catalogs.php" class="my-5 text-lg hover:text-hh-orange-dark"><b>< Back to Catalog</b></a>
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
                        <span class="text-lg font-semibold ml-2">X (n reviews)</span>
                    </div>
                    <div class="mt-9 font-semibold">Color</div>
                    <div class="my-3 flex">
                        <?php
                            foreach ($colors as $key => $value) {
                        ?>
                            <div class="w-5 h-5 rounded-full mx-0.5" style="background-color: <?=$value['cvalue']?>;" title="<?=$value['cname']?>"></div>
                        <?php
                            }
                        ?>
                    </div>
                    <div class="mt-5 w-56 h-12 border-hh-orange-light border-solid border-2 flex flex-row">
                        <button id="qtydown" class="w-3/12 h-11 text-lg font-bold border-solid border-r-2 border-hh-orange-light bg-hh-orange-light">-</button>
                        <div class="w-6/12 h-8 mt-1 text-center text-2xl" id="qty">0</div>
                        <button id="qtyup" class="w-3/12 h-11 text-lg font-bold border-solid border-l-2 border-hh-orange-light bg-hh-orange-light">+</button>
                    </div>
                    <div class="mt-6 mb-4">
                        <button class="w-2/3 h-10 rounded bg-hh-orange-dark text-lg text-hh-black-dark font-semibold">Add to Cart</button>
                    </div>
                    <div class="mb-6 mt-4">
                        <button class="w-2/3 h-10 rounded bg-hh-pink-dark text-lg text-hh-white font-semibold">Add to Wishlist</button>
                    </div>
                </div>
            </div>
            <div class="w-11/12 my-12 flex flex-col items-center">
                <div class="w-2/5 h-16  flex justify-center items-center">
                    <div class="w-24 h-10 pt-1 text-center rounded-3xl border-2 border-solid border-gray-00 shadow-lg mx-5 cursor-pointer desc transition-colors duration-300 bg-hh-orange-light">Deskripsi</div>
                    <div class="w-24 h-10 pt-1 text-center rounded-3xl border-2 border-solid border-gray-00 shadow-lg mx-5 cursor-pointer desc transition-colors duration-300">Review</div>
                </div>
                <div class="w-3/4 bg-hh-orange-light flex flex-col items-center mt-2 py-5 rounded-xl shadow-lg">
                    <div class="w-5/6"><?=$item["itemdesc"]?></div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {

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
                if(parseInt($("#qty").text()) > 0){
                    $("#qty").text(parseInt($("#qty").text())-1);
                }
            });

            $("#qtyup").click(function(){
                $("#qty").text(parseInt($("#qty").text())+1);
            });

            $(".desc").click(function(){
                $(".desc").each(function(){
                    $(this).removeClass("bg-hh-orange-light");    
                });
                $(this).addClass("bg-hh-orange-light");
            });
        });
    </script>
<?php
    require_once("./util/footer.php");
    require_once("./util/docClose.php");
?>