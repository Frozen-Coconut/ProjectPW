<footer class="flex-col bg-gray-200 px-10 pt-6 pb-2">
    <div class="flex justify-around py-3 flex-col-reverse sm:flex-row">
        <div id="pages" class="w-44">
            <div class="font-medium text-lg uppercase">Halaman</div>
            <a href="index.php"><div class="text-xs my-2 text-gray-700">Home</div></a>
            <a href="catalogs.php"><div class="text-xs my-2 text-gray-700">Produk</div></a>
            <a href="aboutus.php"><div class="text-xs my-2 text-gray-700">Tentang Kami</div></a>
            <a href="profile.php"><div class="text-xs my-2 text-gray-700">Profil</div></a>
        </div>
        <div id="categories" class="w-44">
            <div class="font-medium text-lg uppercase">Kategori</div>
            <a href="categories.php"><div class="text-xs my-2 text-gray-700">Instrumen</div></a>
            <a href="categories.php"><div class="text-xs my-2 text-gray-700">Brand</div></a>
        </div>
    </div>
    <div class="text-xs text-center pt-3">&copy 2021 Kelompok PW</div>
    <?php //if (isset($_SESSION["loggedIn"])) { ?>
        <div id="shoppingCart" class="w-16 h-16 fixed right-10 bottom-10 bg-contain bg-center bg-no-repeat cursor-pointer bg-hh-orange-light border-2 border-hh-orange-dark rounded-full hover:opacity-80" style="background-image: url(https://www.freeiconspng.com/uploads/shopping-cart-icon-2.png); background-size: 2rem;"></div>
        <script>
            $('#shoppingCart').draggable();
            $('#shoppingCart').dblclick(function(e) {
                e.preventDefault();
                window.location.assign('./shoppingcart.php');
            });
        </script>
    <?php //} ?>
</footer>