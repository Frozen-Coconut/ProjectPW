<?php require_once("./util/docOpen.php") ?>
    <?php
        if (isset($_REQUEST["filter"])) {
            $filter = $_REQUEST["filter"];
            echo "<script>filter='$filter'</script>";
        }
        if (isset($_REQUEST["filter"])) {
            $filterType = $_REQUEST["type"];
            echo "<script>filterType='$filterType'</script>";
        }
    ?>
    <div class="min-h-screen flex flex-col">
        <?php require_once("./util/navbar.php") ?>

        <div id="container" class="flex px-40 py-20">
            <div class="flex flex-col border-2 border-gray-400 rounded-3xl shadow-xl pl-5 pt-5 pb-8 w-60">
                <p class="text-2xl font-bold">Filter</p>
                <div class="flex flex-col ml-4 mt-2">
                    <label class="inline-flex items-center">
                        <input type="checkbox" value="Top Rated" class="rounded cursor-pointer" name="filter">
                        <span class="ml-2">Top Rated</span>
                    </label>
                    <label class="inline-flex items-center">
                        <input type="checkbox" value="New Release" class="rounded cursor-pointer" name="filter">
                        <span class="ml-2">New Release</span>
                    </label>
                    <label class="inline-flex items-center">
                        <input type="checkbox" value="Top Seller" class="rounded cursor-pointer" name="filter">
                        <span class="ml-2">Top Seller</span>
                    </label>
                    <label class="inline-flex items-center">
                        <input type="checkbox" value="Discount" class="rounded cursor-pointer" name="filter">
                        <span class="ml-2">Discount</span>
                    </label>
                    <p class="inline-flex items-center my-1 cursor-pointer" name="toggle"><img src="https://icon-library.com/images/dropdown-icon/dropdown-icon-14.jpg" alt="*" class="w-4 h-4 mr-2"><span>By Instrument</span></p>
                    <div id="byInstrument" class="flex flex-col ml-4"></div>
                    <p class="inline-flex items-center my-1 toggle cursor-pointer" name="toggle"><img src="https://icon-library.com/images/dropdown-icon/dropdown-icon-14.jpg" alt="*" class="w-4 h-4 mr-2"><span>By Brand</span></p>
                    <div id="byBrand" class="flex flex-col ml-4"></div>
                </div>
            </div>
            <div class="flex flex-col ml-10" style="width: 55vw;">
                <div>
                    <div class="relative">
                        <input type="text" class="w-full h-14 pl-5 pr-8 border-2 border-gray-400 rounded-xl shadow-lg" placeholder="Search anything..." name="search">
                        <div class="absolute top-4 right-3"><i class="fa fa-search text-gray-400 z-20 hover:text-gray-500 cursor-pointer" onclick="search();"></i></div>
                    </div>
                </div>
                <div id="catalogs" class="grid xl:grid-cols-4 lg:grid-cols-3 md:grid-cols-2 sm:grid-cols-1 gap-4 mt-8"></div>
            </div>
        </div>

        <?php require_once("./util/footer.php") ?>
    </div>
    <script>
        let filterArr = [];
        let searchStr = '';

        $(document).ready(function() {
            listCategories($('#byInstrument'), 'instrument');
            listCategories($('#byBrand'), 'brand');

            $('[name=filter]').click(function(e) {
                alert($(this).val());
            });

            $('[name=toggle]').click(function(e) { 
                e.preventDefault();
                $(this).next().slideToggle('slow');
                $('img', this).toggleClass('transform -rotate-90');
            });
            
            loadCatalogs();
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
                    $('label>input', container).click(function(e) {
                        if ($(this).is(':checked')) {
                            filterArr.push([$(this).val(), $(this.parentElement.parentElement).attr('id') == 'byInstrument' ? 'id_instrument' : $(this.parentElement.parentElement).attr('id') == 'byBrand' ? 'id_brand' : '']);
                        } else {
                            let thisVal = $(this).val();
                            filterArr.splice(filterArr.findIndex(function(sub) {
                                return sub.indexOf(thisVal) != -1;
                            }), 1);
                        }
                        loadCatalogs();
                    });
                    if (typeof filter != 'undefined') {
                        if (!$(`input[value='${filter}']`).is(':checked')) {
                            $(`input[value='${filter}'][name=${filterType}]`).click();
                        }
                    }
                }
            });
        }

        function search() {
            searchStr = $('[name=search]').val();
            loadCatalogs();
            $('[name=search]').val('');
        }

        function loadCatalogs() {
            $.ajax({
                type: "get",
                url: "./ajax/loadCatalogs.php",
                data: {
                    "filter": filterArr,
                    "search": searchStr
                },
                success: function (response) {
                    $('#catalogs').html(response);
                    $('[name=catalog]>img').css('height', $('[name=catalog]>img').css('width'));
                    $('[name=catalog]').click(function() {
                        window.location.assign(`./detail.php?filter=${$('input[type=hidden]', this).val()}`);
                    });
                }
            });
        }
    </script>
<?php require_once("./util/docClose.php"); ?>