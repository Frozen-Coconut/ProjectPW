<footer class="flex-col bg-gray-200 px-10 pt-6 pb-2">
    <div class="flex justify-between py-3">
        <div id="newsletter" class="flex-col max-w-sm">
            <div class="mb-3 text-lg uppercase font-medium">get the latest information of our promotion and newest product</div>
            <input type="my-3 text" id="nlmail" placeholder="example@email.com" class="w-72 rounded-l-md p-1 pl-2">
            <input type="button" id="nlbutton" value="Sign Up" class="cursor-pointer text-gray-100 bg-gray-600 w-20 rounded-r-md p-1 pm-2">
            <div class="my-3 text-xs">by signing up you agree to our <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" class="text-hh-pink-dark" target="_blank" title="This is not a rickroll video">terms & conditions</a></div>
        </div>
        <div id="pages" class="w-44">
            <div class="font-medium text-lg uppercase">Pages</div>
            <a href="home.php"><div class="text-xs my-2 text-gray-700">Home</div></a>
            <a href="categories.php"><div class="text-xs my-2 text-gray-700">Products</div></a>
            <a href="aboutus.php"><div class="text-xs my-2 text-gray-700">About Us</div></a>
            <a href="profile.php"><div class="text-xs my-2 text-gray-700">Profile</div></a>
        </div>
        <div id="categories" class="w-44">
            <div class="font-medium text-lg uppercase">Categories</div>
            <a href="categories.php"><div class="text-xs my-2 text-gray-700">Instruments</div></a>
            <a href="categories.php"><div class="text-xs my-2 text-gray-700">Brands</div></a>
        </div>
        <div id="followus" class="w-44">
            <div class="font-medium text-lg uppercase">Follow Us</div>
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
    <div id="shoppingCart" class="w-10 h-10 fixed right-10 bottom-10 bg-contain bg-center bg-no-repeat bg-transparent cursor-pointer" style="background-image: url(https://www.freeiconspng.com/uploads/shopping-cart-icon-2.png);"></div>
    <script>
        $('#shoppingCart').draggable();
        $('#shoppingCart').dblclick(function(e) {
            e.preventDefault();
            window.location.assign('./shoppingcart.php');
        });
    </script>
</footer>