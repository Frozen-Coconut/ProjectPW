<?php

    if(isset($_SESSION["onalert"])){
        $onalert = $_SESSION["onalert"];
        unset($_SESSION["onalert"]);
    }

    if(isset($_SESSION["onnotice"])){
        $onnotice = $_SESSION["onnotice"];
        unset($_SESSION["onnotice"]);
    }
?>

<nav class="bg-hh-orange-dark justify-between py-4 px-4 hidden sm:flex">
    <div class="w-full flex justify-between">
        <ul class="flex">
            <a href="index.php">
                <li class="text-xl text-hh-black-light mx-2 transition-all transform hover:-translate-y-0.5 hover:-translate-x-0.5 hover:text-hh-white"><div class="w-16 h-8 bg-center bg-cover bg-no-repeat" style="background-image: url('asset/logo-tk.svg');"></div></li>
            </a>
            <a href="categories.php">
                <li class="text-xl text-hh-black-light mx-2 transition-all transform hover:-translate-y-0.5 hover:-translate-x-0.5 hover:text-hh-white">Produk</li>
            </a>
            <a href="aboutus.php">
                <li class="text-xl text-hh-black-light mx-2 transition-all transform hover:-translate-y-0.5 hover:-translate-x-0.5 hover:text-hh-white">Tentang Kami</li>
            </a>
        </ul>
        <ul class="flex">
            <?php
            if(isset($_SESSION["loggedIn"])){
            ?>
                <li id="profileButton" class="cursor-pointer text-xl transition-all text-hh-black-light mx-2 px-4 py-0.5 bg-hh-white rounded ring-2 ring-hh-white hover:bg-hh-orange-dark hover:text-hh-white">Profil</li>
                <div class="w-1/6 h-56 bg-hh-orange-light absolute top-12 right-5 rounded-xl z-10 flex" id="profileMenuList">
                    <ul class="w-full flex flex-col items-center">
                        <a href="profile.php" class="w-11/12"><li class="w-full border-b-2 border-hh-black-light h-10 text-xl my-2">Edit Profile</li></a>
                        <a href="orderHistory.php" class="w-11/12"><li class="w-full border-b-2 border-hh-black-light h-10 text-xl my-2">Riwayat Transaksi</li></a>
                        <a href="wishlist.php" class="w-11/12"><li class="w-full border-b-2 border-hh-black-light h-10 text-xl my-2">Wishlist</li></a>
                        <a href="index.php?logout='true'" class="w-11/12"><li class="w-full border-b-2 border-hh-black-light h-10 text-xl my-2">Logout</li></a>
                    </ul>
                </div>
            <?php
            }
            else {
            ?>
                <a href="login.php"><li id="loginBtn" class="text-xl transition-all text-hh-black-light mx-2 ring-2 px-4 py-0.5 rounded ring-hh-black-light hover:bg-hh-orange-light hover:text-hh-white">Masuk</li></a>
                <a href="register.php"><li id="registerBtn" class="text-xl transition-all text-hh-orange-dark mx-2 px-4 py-0.5 bg-hh-black-light rounded ring-2 ring-hh-black-light hover:text-hh-white hover:bg-hh-orange-light">Daftar</li></a>
            <?php
            }
            ?>
        </ul>
    </div>
</nav>
    
<nav class="bg-hh-orange-dark py-4 px-4 flex justify-between sm:hidden">
    <a href="index.php" class="text-xl text-hh-black-light mx-2 transition-all transform hover:-translate-y-0.5 hover:-translate-x-0.5 hover:text-hh-white"><div class="w-20 h-10 bg-center  bg-cover bg-no-repeat" style="background-image: url('asset/logo-tk.svg');"></div></a>
    <div class="w-10 h-10 bg-hh-orange-lighter rounded flex flex-col items-center justify-evenly" id="hamburger">
        <span class="w-3/4 h-1 bg-hh-black-light rounded-full opacity-80 duration-200 ease-in" id="bread-top"></span>
        <span class="w-3/4 h-1 bg-hh-black-light rounded-full opacity-80 duration-200 ease-in" id="cheese-burger"></span>
        <span class="w-3/4 h-1 bg-hh-black-light rounded-full opacity-80 duration-200 ease-in" id="bread-bot"></span>
    </div>
</nav>
<div class="w-full bg-hh-orange-darker hidden py-1" id="ham-content">
    <ul class="w-11/12 mx-5 text-xl">
        <a href="categories.php"><li class="py-3 border-b-2 border-hh-black-light text-hh-black-light font-semibold">Produk</li></a>
        <a href="aboutus.php"><li class="py-3 border-b-2 border-hh-black-light text-hh-black-light font-semibold">Tentang kami</li></a>
        <?php
            if(isset($_SESSION["loggedIn"])){
        ?>
            <a href="profile.php"><li class="py-3 border-b-2 border-hh-black-light text-hh-black-light font-semibold">Edit Profil</li></a>
            <a href="profile.php"><li class="py-3 border-b-2 border-hh-black-light text-hh-black-light font-semibold">Riwayat Transaksi</li></a>
            <a href="wishlist.php"><li class="py-3 border-b-2 border-hh-black-light text-hh-black-light font-semibold">Wishlist</li></a>
            <a href="shoppingcart.php"><li class="py-3 border-b-2 border-hh-black-light text-hh-black-light font-semibold">Keranjang</li></a>
            <a href="index.php?logout='true'"><li class="py-3 text-hh-black-light font-semibold">Logout</li></a>
        <?php
            }
            else{
        ?>
            <a href="login.php"><li class="py-3 border-b-2 border-hh-black-light text-hh-black-light font-semibold">Masuk</li></a>
            <a href="register.php"><li class="py-3 border-b-2 border-hh-black-light text-hh-black-light font-semibold">Daftar</li></a>
        <?php
            }
        ?>
    </ul>
</div>

<?php
    if(isset($onalert)){
?>
    <div class="flex justify-between fixed w-1/3 bg-hh-pink-light opacity-80 top-20 right-2 p-3 rounded-lg font-semibold" id="alertbox">
        <?=$onalert?>
        <div class="cursor-pointer border-2 border-hh-black-light text-hh-black-light w-5 text-center h-5 rounded-full text leading-none" id="closealertbox">X</div>
    </div>
<?php
    }
?>
<?php
    if(isset($onnotice)){
?>
    <div class="flex justify-between fixed w-1/3 bg-hh-orange-dark opacity-80 top-20 right-2 p-3 rounded-lg font-semibold" id="noticebox">
        <?=$onnotice?>
        <div class="cursor-pointer border-2 border-hh-black-light text-hh-black-light w-5 text-center h-5 rounded-full text leading-none" id="closenoticebox">X</div>
    </div>
<?php
    }
?>

<script>
    $(document).ready(function () {
        $("#profileMenuList").slideUp(-1);
        $("#profileButton").click(function(){
            console.log("A");
            // $("#profileMenuList").toggleClass("flex");
            // $("#profileMenuList").toggleClass("hidden");
            $("#profileMenuList").slideToggle();
        });

        $("#profileButton").focusout(function(){
            console.log("A");
            // $("#profileMenuList").removeClass("flex");
            // $("#profileMenuList").addClass("hidden");
            $("#profileMenuList").slideToggle();
        });

        $("#closealertbox").click(function () {
            $("#alertbox").remove();
        })

        $("#closenoticebox").click(function () {
            $("#noticebox").remove();
        })

        $("#hamburger").click(function () {
            $("#bread-top").toggleClass("clicked-top");
            $("#bread-bot").toggleClass("clicked-bot");
            $("#cheese-burger").toggleClass("clicked-mid");
            $("#ham-content").slideToggle(400,"swing");
        })
    });
    
</script>