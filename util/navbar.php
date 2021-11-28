<?php
    if(isset($_COOKIE["loggedIn"])){
        $_SESSION["loggedIn"] = json_decode($_COOKIE["loggedIn"],true);
    }

    if(isset($_SESSION["onalert"])){
        $onalert = $_SESSION["onalert"];
        unset($_SESSION["onalert"]);
    }
?>

<nav class="bg-hh-orange-dark flex justify-between py-4 px-4">
    <ul class="flex ">
        <a href="home.php">
            <li class="text-xl text-hh-black-light mx-2 transition-all transform hover:-translate-y-0.5 hover:-translate-x-0.5 hover:text-hh-white"><div id="logo">Ini Logo Gais</div></li>
        </a>
        <a href="categories.php">
            <li class="text-xl text-hh-black-light mx-2 transition-all transform hover:-translate-y-0.5 hover:-translate-x-0.5 hover:text-hh-white">Produk</li>
        </a>
        <a href="aboutus.php">
            <li class="text-xl text-hh-black-light mx-2 transition-all transform hover:-translate-y-0.5 hover:-translate-x-0.5 hover:text-hh-white">Tentang Kami</li>
        </a>
    </ul>
    <ul class="flex ">
        <?php
        if(isset($_SESSION["loggedIn"])){
        ?>
            <a href="profile.php"><li id="profileButton" class="cursor-pointer text-xl transition-all text-hh-black-light mx-2 px-4 py-0.5 bg-hh-white rounded ring-2 ring-hh-white hover:bg-hh-orange-dark hover:text-hh-white">Profil</li></a>
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
</nav>
<?php
    if(isset($onalert)){
?>
    <div class="flex justify-between fixed w-1/3 bg-hh-pink-light opacity-80 top-20 right-2 p-3 rounded-lg font-semibold" id="msgbox">
        <?=$onalert?>
        <div class="cursor-pointer border-2 border-hh-black-light text-hh-black-light w-5 text-center h-5 rounded-full text leading-none" id="closemsgbox">X</div>
    </div>
<?php
    }
?>
<script>
    $(document).ready(function () {
        $("#profileButtonForHover").click(function(){
            console.log("A");
            $("#profileMenuList").toggleClass("flex");
            $("#profileMenuList").toggleClass("hidden");
        });

        $("#profileButtonForHover").focusout(function(){
            console.log("A");
            $("#profileMenuList").removeClass("flex");
            $("#profileMenuList").addClass("hidden");
        });

        $("#closemsgbox").click(function () {
            $("#msgbox").remove();
        })
    });
    
</script>