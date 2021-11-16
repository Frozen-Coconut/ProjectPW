<?php
    require_once("./util/docOpen.php");
    require_once("./util/navbar.php");
?>
    <div class="container min-h-screen flex justify-evenly">
        <div class="flex flex-col items-center w-11/12 min-h-screen">
            <a href="" class="my-5 text-lg w-full"><b>< Back to Catalog</b></a>
            <div class= "w-full h-4/5 flex justify-evenly">
                <div class="w-1/2 h-full bg-gray-100 shadow-md"></div>
                <div class="w-4/12 h-full">
                    <div class="uppercase text-gray-400 text-xl font-medium mb-3">instrument</div>
                    <div class="text-5xl font-medium my-3">Ini Nama Item Ini Nama Item Ini Nama Item </div>
                    <div class="text-3xl font-medium text-yellow-600 my-3">Rp 000.000.000.000.-</div>
                    <div class="my-3">
                        <i class="far fa-star text-yellow-400 cursor-pointer text-lg"></i>
                        <i class="far fa-star text-yellow-400 cursor-pointer text-lg"></i>
                        <i class="far fa-star text-yellow-400 cursor-pointer text-lg"></i>
                        <i class="far fa-star text-yellow-400 cursor-pointer text-lg"></i>
                        <i class="far fa-star text-yellow-400 cursor-pointer text-lg"></i>
                        <span class="text-lg font-semibold ml-2">X (n reviews)</span>
                    </div>
                    <div class="my-3 flex ">
                        <div class="text-sm bg-gray-200 w-16 text-center rounded-md py-0.5 text-gray-600 font-semibold mx-0.5">Ini Tag</div>
                        <div class="text-sm bg-gray-200 w-16 text-center rounded-md py-0.5 text-gray-600 font-semibold mx-0.5">Ini Tag</div>
                        <div class="text-sm bg-gray-200 w-16 text-center rounded-md py-0.5 text-gray-600 font-semibold mx-0.5">Ini Tag</div>
                    </div>
                    <div class="mt-9 font-semibold">Color</div>
                    <div class="my-3 flex">
                        <div class="w-5 h-5 bg-gray-300 rounded-full mx-0.5"></div>
                        <div class="w-5 h-5 bg-gray-300 rounded-full mx-0.5"></div>
                        <div class="w-5 h-5 bg-gray-300 rounded-full mx-0.5"></div>
                        <div class="w-5 h-5 bg-gray-300 rounded-full mx-0.5"></div>
                    </div>
                    <div class="mt-5">
                        <select id="promo">
                            <option value="-1">No Active Promo</option>
                        </select>
                    </div>
                    <div class="mt-5 w-56 h-12 border-gray-400 border-solid border-2 flex flex-row">
                        <button id="qtydown" class="w-3/12 h-11 text-lg font-bold border-solid border-r-2 border-gray-400 bg-gray-400">-</button>
                        <div class="w-6/12 h-8 mt-1 text-center text-2xl" id="qty">0</div>
                        <button id="qtyup" class="w-3/12 h-11 text-lg font-bold border-solid border-l-2 border-gray-400 bg-gray-400">+</button>
                    </div>
                    <div class="mt-6 mb-4">
                        <button class="bg-gray-400 w-2/3 h-10 rounded">Add to Cart</button>
                    </div>
                    <div class="mb-6 mt-4">
                        <button class="bg-gray-400 w-2/3 h-10 rounded">Add to Wishlist</button>
                    </div>
                </div>
            </div>
            <div class="w-11/12 my-12 flex flex-col items-center">
                <div class="w-2/5 h-16  flex justify-center items-center">
                    <div class="w-24 h-10 pt-1 text-center rounded-3xl border-2 border-solid border-gray-00 shadow-lg mx-5 cursor-pointer desc transition-colors duration-300 bg-gray-300">Deskripsi</div>
                    <div class="w-24 h-10 pt-1 text-center rounded-3xl border-2 border-solid border-gray-00 shadow-lg mx-5 cursor-pointer desc transition-colors duration-300">Spesifikasi</div>
                    <div class="w-24 h-10 pt-1 text-center rounded-3xl border-2 border-solid border-gray-00 shadow-lg mx-5 cursor-pointer desc transition-colors duration-300">Review</div>
                </div>
                <div class="w-3/4 bg-gray-400 flex flex-col items-center mt-2 py-5 rounded-xl shadow-lg">
                    <div class="w-5/6">Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt magnam eveniet neque dolor est quas ab porro quae deserunt. Ullam, cumque nemo asperiores laboriosam suscipit sequi culpa provident. Totam, excepturi!</div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {

            $(".fa-star").mouseenter(function () { 
                for (let i = 0; i <= $(this).index()+1; i++) {
                    $(".fa-star:nth-child("+i+")").removeClass("far");
                    $(".fa-star:nth-child("+i+")").addClass("fas");
                }
            });

            $(".fa-star").mouseleave(function () { 
                for (let i = 0; i <= $(this).index()+1; i++) {
                    $(".fa-star:nth-child("+i+")").removeClass("fas");
                    $(".fa-star:nth-child("+i+")").addClass("far");
                }
            });

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
                    $(this).removeClass("bg-gray-300");    
                });
                $(this).addClass("bg-gray-300");
            });
        });
    </script>
<?php
    require_once("./util/footer.php");
    require_once("./util/docClose.php");
?>