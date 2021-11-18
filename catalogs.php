<?php require_once("./util/docOpen.php") ?>
    <div class="min-h-screen flex flex-col">
        <?php require_once("./util/navbar.php") ?>

        <div id="container" class="flex px-40 py-20">
            <div class="flex flex-col border-2 border-gray-400 rounded-3xl shadow-lg pl-5 pt-5 pb-8 w-60">
                <h1 class="text-2xl font-bold">Filter</h1>
                <div class="flex flex-col ml-4 mt-2">
                    <label for="topRated" class="inline-flex items-center">
                        <input type="checkbox" id="topRated" value="topRated" class="rounded"/>
                        <span class="ml-2">Top Rated</span>
                    </label>
                    <label for="newRelease" class="inline-flex items-center">
                        <input type="checkbox" id="newRelease" value="newRelease" class="rounded"/>
                        <span class="ml-2">New Release</span>
                    </label>
                    <label for="topSeller" class="inline-flex items-center">
                        <input type="checkbox" id="topSeller" value="topSeller" class="rounded"/>
                        <span class="ml-2">Top Seller</span>
                    </label>
                    <label for="discount" class="inline-flex items-center">
                        <input type="checkbox" id="discount" value="discount" class="rounded"/>
                        <span class="ml-2">Discount</span>
                    </label>
                    <h2 class="inline-flex items-center my-1 toggle"><img src="https://icon-library.com/images/dropdown-icon/dropdown-icon-14.jpg" alt="*" class="w-4 h-4 mr-2"><span>By Instrument</span></h2>
                    <div id="byInstrument" class="flex flex-col ml-4"></div>
                    <h2 class="inline-flex items-center my-1 toggle"><img src="https://icon-library.com/images/dropdown-icon/dropdown-icon-14.jpg" alt="*" class="w-4 h-4 mr-2"><span>By Brand</span></h2>
                    <div id="byBrand" class="flex flex-col ml-4"></div>
                </div>
            </div>
            <div class="flex flex-col">
                <div></div> <!-- Search -->
                <div></div> <!-- Catalogs -->
            </div>
        </div>

        <?php require_once("./util/footer.php") ?>
    </div>
    <script>
        $(document).ready(function () {
            listCategories($('#byInstrument'), 'instrument');
            listCategories($('#byBrand'), 'brand');

            let toggle = $('.toggle');
            toggle.css('cursor', 'pointer');
            toggle.click(function(e) { 
                e.preventDefault();
                $(this).next().slideToggle('slow');
                $('img', this).toggleClass('transform -rotate-90');
            });
        });

        function listCategories(container, type) {
            $.ajax({
                type: "get",
                url: "./ajax/listCategories.php",
                data: {
                    "type": type
                },
                success: function (response) {
                    container.html(response);
                }
            });
        }
    </script>
<?php  require_once("./util/docClose.php"); ?>