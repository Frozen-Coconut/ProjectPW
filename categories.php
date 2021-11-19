<?php require_once("./util/docOpen.php") ?>
    <div class="min-h-screen flex flex-col">
        <?php require_once("./util/navbar.php") ?>

        <div id="container" class="flex flex-col p-20">
            <p class="text-3xl">By Instrument</p>
            <div id="containerInstrument" class="flex py-6 mb-3"></div>
            <p class="text-3xl">By Brand</p>
            <div id="containerBrand" class="flex py-6 mb-3"></div>
        </div>

        <?php require_once("./util/footer.php") ?>
    </div>
    <script>
        let currentInstrumentPage = 1;
        let currentBrandPage = 1;
        let num = 0;
        let maxInstrumentPage = 0;
        let maxBrandPage = 0;

        $(document).ready(function() {
            init();

            $(window).resize(function() {
                currentInstrumentPage = 1;
                currentBrandPage = 1;
                init();
            });
        });
        
        function init() {
            num = $(document).width()/200 - 1;
            initInstrument();
            initBrand();
        }
        
        function initInstrument() {
            loadCategories($('#containerInstrument'), "instrument", num, currentInstrumentPage);
        }
        
        function initBrand() {
            loadCategories($('#containerBrand'), "brand", num, currentBrandPage);
        }
        
        function loadCategories(container, type, num, page) {
            $.ajax({
                type: "get",
                url: "./ajax/loadCategories.php",
                data: {
                    "type": type,
                    "num": num,
                    "page": page
                },
                success: function (response) {
                    container.html(response);
                    if (type == "instrument") {
                        container.prepend($('<button onclick="if(currentInstrumentPage>1)currentInstrumentPage--;initInstrument();"><img src="https://cdn2.iconfinder.com/data/icons/250-perfect-vector-pictograms/48/9.5-512.png" class="w-10 h-10 mr-6" style="transform: scaleX(-1);"></img></button>'));
                        maxInstrumentPage = parseInt($('#maxInstrumentPage').val());
                        container.append($('<button onclick="if(currentInstrumentPage<maxInstrumentPage)currentInstrumentPage++;initInstrument();"><img src="https://cdn2.iconfinder.com/data/icons/250-perfect-vector-pictograms/48/9.5-512.png" class="w-10 h-10"></img></button>'));
                    } else if (type == "brand") {
                        container.prepend($('<button onclick="if(currentBrandPage>1)currentBrandPage--;initBrand();"><img src="https://cdn2.iconfinder.com/data/icons/250-perfect-vector-pictograms/48/9.5-512.png" class="w-10 h-10 mr-6" style="transform: scaleX(-1);"></img></button>'));
                        maxBrandPage = parseInt($('#maxBrandPage').val());
                        container.append($('<button onclick="if(currentBrandPage<maxBrandPage)currentBrandPage++;initBrand();"><img src="https://cdn2.iconfinder.com/data/icons/250-perfect-vector-pictograms/48/9.5-512.png" class="w-10 h-10"></img></button>'));
                    }
                    $('div>p', container).hide();
                    $('div', container).hover(function() {
                        $('p', this).toggle();
                    });
                    $('div', container).click(function(e) { 
                        e.preventDefault();
                        window.location.assign(`./catalogs.php?filter=${$('p', this).html()}`);
                    });
                }
            });
        }
    </script>
<?php require_once("./util/docClose.php"); ?>