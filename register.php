<?php
    require_once("./util/docOpen.php")
?>
<?php
    if(isset($_POST["register"])){
        $name = $_POST["name"];
        $username = $_POST["username"];
        $email = $_POST["email"];
        $password = $_POST["password"];
        $confirm = $_POST["confirm"];
        $phone = $_POST["phone"];
        $gender = $_POST["gender"];
        $birth_date = $_POST["birthDate"];

    }

    $provinsi = selectProvinsi();
?>
    <h1>Register</h1>
    <form action="#" method="post">
        <input type="text" name="name" id="" placeholder="Name">
        <input type="text" name="username" id="" placeholder="Username">
        <input type="email" name="email" id="" placeholder="Email">
        <input type="password" name="password" id="" placeholder="Password">
        <input type="password" name="confirm" id="" placeholder="Confirm Password">
        <input type="text" name="phone" id="" placeholder="Phone Number">
        <select name="provinsi" id="prov">
            <option value="" disabled selected hidden>Provinsi</option>
            <?php foreach($provinsi as $key => $x) :?>
                <option value="<?= $x["id"] ?>"><?= $x["name"] ?></option>
            <?php endforeach; ?>
        </select>
        <div id="kota"></div>
        <input type="date" name="birthDate" id="" placeholder="Date of Birth">
        <select name="gender" id="">
            <option value="" disabled selected hidden>Gender</option>
            <option value="1">Male</option>
            <option value="2">Female</option>
        </select>
        <input type="checkbox" name="agree" id=""><label for="agree">I Agree to Terms & Conditions</label>

        <button name="register">Register</button>
        <a href="login.php"><button>Login</button></a>
    </form>
    <div class="min-h-screen flex items-center justify-center bg-gray-500">
        <div class="border-2 border-black border-opacity-25 rounded-lg flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8 bg-gray-400 bg-opacity-50">
            <div class="max-w-md w-full space-y-8">
                <div>
                <h2 class="mt-6 text-center text-3xl font-extrabold text-gray-700 text-opacity-75">
                    Register
                </h2>
                </div>
                <form class="mt-8 space-y-6 px-3" action="#" method="POST">
                <input type="hidden" name="remember" value="true">
                <div class="rounded-md shadow-sm -space-y-px bg-dark">
                    <div>
                    <label for="name" class="sr-only" text-gray-300 text-opacity-50>Name</label>
                    <input id="name" type="text" name="name" autocomplete="email" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Username">
                    </div>
                    <div>
                    <label for="username" class="sr-only" text-gray-300 text-opacity-50>Username</label>
                    <input id="username" name="username" type="text" autocomplete="email" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Username">
                    </div>
                    <div>
                    <label for="email" class="sr-only" text-gray-300 text-opacity-50>Email</label>
                    <input id="email" name="email" type="email" autocomplete="email" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Email">
                    </div>
                    <div>
                    <label for="password" class="sr-only" text-gray-300 text-opacity-50>Password</label>
                    <input id="password" name="password" type="password" autocomplete="current-password" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Password">
                    </div>
                    <div>
                    <label for="confirm" class="sr-only" text-gray-300 text-opacity-50>Confirm Password</label>
                    <input id="confirm" name="confirm" type="password" autocomplete="current-password" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Confirm Password">
                    </div>
                </div>
                <div class="flex items-center justify-between">
                    <div class="flex items-center">
                    <input id="remember-me" name="remember" type="checkbox" class="h-4 w-4 text-indigo-600 focus:ring-indigo-500 border-gray-300 rounded">
                    <label for="remember-me" class="ml-2 block text-sm text-gray-900">
                        Remember me
                    </label>
                    </div>
                    <div class="text-sm">
                    <a href="#" class="font-medium text-black hover:text-gray-300 text-opacity-50 ml-8">
                        Forgot your password?
                    </a>
                    </div>
                </div>
                <!-- <div class="flex items-center justify-center">
                <p class="text-center text-sm text-gray-600">
                    You haven't sign up ? 
                    <a href="register.php" class="font-medium text-black hover:text-gray-300 text-opacity-50">
                    Sign up now
                    </a>
                </p>
                </div> -->
                <div>
                    <button type="submit" name="register" class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-gray-600 hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">
                    Register
                    </button>
                </div>
                <div>
                    <a href="login.php">
                    <button class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-gray-500 hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">
                        Login
                    </button>
                    </a>
                </div>
                </form>
            </div>
        </div>
    </div>
<?php
    require_once("./util/docClose.php")
?>