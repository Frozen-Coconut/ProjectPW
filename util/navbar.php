<nav class="bg-hh-orange-dark flex justify-between py-4 px-4">
    <ul class="flex ">
        <a href="">
            <li class="text-xl text-hh-black-light mx-2 transition-all transform hover:-translate-y-0.5 hover:-translate-x-0.5 hover:text-hh-white"><div id="logo">Ini Logo Gais</div></li>
        </a>
        <a href="">
            <li class="text-xl text-hh-black-light mx-2 transition-all transform hover:-translate-y-0.5 hover:-translate-x-0.5 hover:text-hh-white">Products</li>
        </a>
        <a href="">
            <li class="text-xl text-hh-black-light mx-2 transition-all transform hover:-translate-y-0.5 hover:-translate-x-0.5 hover:text-hh-white">About Us</li>
        </a>
        <a href="">
            <li class="text-xl text-hh-black-light mx-2 transition-all transform hover:-translate-y-0.5 hover:-translate-x-0.5 hover:text-hh-white">Contact</li>
        </a>
    </ul>
    <ul class="flex ">
        <?php
        if(isset($_SESSION["loggedin"])){
        ?>
            <li id="profileButton" class="cursor-pointer text-xl transition-all text-hh-black-light mx-2 px-4 py-0.5 bg-hh-white rounded ring-2 ring-hh-white hover:bg-hh-orange-dark hover:text-hh-white">Profile</li>
        <?php
        }
        else{
        ?>
            <a href=""><li id="loginBtn" class="text-xl transition-all text-hh-black-light mx-2 ring-2 px-4 py-0.5 rounded ring-hh-black-light hover:bg-hh-orange-light hover:text-hh-white">Login</li></a>
            <a href=""><li id="registerBtn" class="text-xl transition-all text-hh-orange-dark mx-2 px-4 py-0.5 bg-hh-black-light rounded ring-2 ring-hh-black-light hover:text-hh-white hover:bg-hh-orange-light">Register</li></a>
        <?php
        }
        ?>
    </ul>
</nav>