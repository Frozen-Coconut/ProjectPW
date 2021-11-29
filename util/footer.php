<footer class="flex-col bg-gray-200 px-10 pt-6 pb-2">
    <div class="flex justify-between py-3">
        <div id="newsletter" class="flex-col max-w-sm">
            <div class="mb-3 text-lg uppercase font-medium">Dapatkan informasi mengenai produk terbaru kami beserta dengan promo promo menarik disini</div>
            <input type="my-3 text" id="nlmail" placeholder="example@email.com" class="w-72 rounded-l-md p-1 pl-2">
            <input type="button" id="nlbutton" value="Daftar" class="cursor-pointer text-gray-100 bg-gray-600 w-20 rounded-r-md p-1 pm-2">
            <div class="my-3 text-xs">by signing up you agree to our <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" class="text-hh-pink-dark" target="_blank" title="This is not a rickroll video">terms & conditions</a></div>
        </div>
        <div id="pages" class="w-44">
            <div class="font-medium text-lg uppercase">Halaman</div>
            <a href="index.php"><div class="text-xs my-2 text-gray-700">Home</div></a>
            <a href="categories.php"><div class="text-xs my-2 text-gray-700">Produk</div></a>
            <a href="aboutus.php"><div class="text-xs my-2 text-gray-700">Tentang Kami</div></a>
            <a href="profile.php"><div class="text-xs my-2 text-gray-700">Profil</div></a>
        </div>
        <div id="categories" class="w-44">
            <div class="font-medium text-lg uppercase">Kategori</div>
            <a href="categories.php"><div class="text-xs my-2 text-gray-700">Instrumen</div></a>
            <a href="categories.php"><div class="text-xs my-2 text-gray-700">Brand</div></a>
        </div>
        <div id="followus" class="w-44">
            <div class="font-medium text-lg uppercase">Ikuti Kami</div>
            <div class="flex">
                <div class="w-7 h-7 bg-cover bg-no-repeat bg-ig-ico"url></div>
                <div class="w-7 h-7 bg-cover bg-no-repeat bg-fb-ico"></div>
                <div class="w-7 h-7 bg-cover bg-no-repeat bg-tw-ico"></div>
                <div class="w-7 h-7 bg-cover bg-no-repeat bg-yt-ico"></div>
                <div class="w-7 h-7 bg-cover bg-no-repeat bg-in-ico"></div>
            </div>
        </div>
    </div>
    <div class="text-xs text-center pt-3">&copy 2021 Kelompok PW</div>
    <div id="shoppingCart" class="w-16 h-16 fixed right-10 bottom-10 bg-contain bg-center bg-no-repeat cursor-pointer bg-hh-orange-light border-2 border-hh-orange-dark rounded-full hover:opacity-80" style="background-image: url(https://www.freeiconspng.com/uploads/shopping-cart-icon-2.png); background-size: 2rem;"></div>
    <script>
        $('#shoppingCart').draggable();
        $('#shoppingCart').dblclick(function(e) {
            e.preventDefault();
            window.location.assign('./shoppingcart.php');
        });
    </script>
</footer>