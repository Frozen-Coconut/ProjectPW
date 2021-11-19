<nav class="bg-gray-400 flex justify-between py-4 px-4">
    <ul class="flex ">
        <a href="">
            <li class="text-xl text-gray-100 mx-2 transition-all transform hover:-translate-y-0.5 hover:-translate-x-0.5 hover:text-gray-600"><div id="logo">Ini Logo Gais</div></li>
        </a>
        <a href="">
            <li class="text-xl text-gray-100 mx-2 transition-all transform hover:-translate-y-0.5 hover:-translate-x-0.5 hover:text-gray-600">Products</li>
        </a>
        <a href="">
            <li class="text-xl text-gray-100 mx-2 transition-all transform hover:-translate-y-0.5 hover:-translate-x-0.5 hover:text-gray-600">About Us</li>
        </a>
        <a href="">
            <li class="text-xl text-gray-100 mx-2 transition-all transform hover:-translate-y-0.5 hover:-translate-x-0.5 hover:text-gray-600">Contact</li>
        </a>
    </ul>
    <ul class="flex ">
        <?php
        if(isset($_SESSION["loggedin"])){
        ?>
            <li id="profileButton" class="cursor-default text-xl transition-all text-gray-500 mx-2 px-4 py-0.5 bg-white rounded ring-2 ring-white">Profile</li>
        <?php
        }
        else{
        ?>
            <a href=""><li id="loginBtn" class="text-xl transition-all text-gray-100 mx-2 ring-2 px-4 py-0.5 rounded ring-white hover:bg-white hover:text-gray-500">Login</li></a>
            <a href=""><li id="registerBtn" class="text-xl transition-all text-gray-500 mx-2 px-4 py-0.5 bg-white rounded ring-2 ring-white hover:text-gray-100 hover:bg-transparent">Register</li></a>
        <?php
        }
        ?>
    </ul>
</nav>