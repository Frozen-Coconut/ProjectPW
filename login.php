<?php
    require_once("./util/docOpen.php")
?>

<?php
    if(isset($_POST["login"])){
        $username = $_POST["username"];
        $password = $_POST["password"];
        if ($username == "admin" && $password == "admin") {
            header("Location: adminUser.php");
        }
        if ($username != "" && $password != "") {
            $hasil = login(["username" => $username, "password" => $password]);
            if ($hasil == 0) echo("<script>alert('Username / Email salah!')</script>"); //Kasi pesan username tidak ketemu
            else if ($hasil == 1) echo("<script>alert('Password salah!')</script>"); //Kasi pesan password salah
            else {
                if(isset($_POST["remember"])){
                    setcookie("loggedIn", json_encode($_SESSION["loggedIn"]), time() + (60*60*24*10));
                }
                header("Location:index.php");
            }//Masuk ke halaman home, karena login berhasil
            //Apabila login berhasil, user login yang sedang masuk tersimpan dalam $_SESSION["login"]
            //Apabila ada remember me masukkan ke dalam cookie.
        }
        else echo("<script>alert('Isi semua input!')</script>"); // Kasi pesan semua input harus di isi
    }
    
    if(isset($_POST["register"])){
        header("Location:register.php");
    }
?>
    <script>
        document.title = 'Login';
    </script>
    <div class="min-h-screen flex items-center justify-center bg-gray-500">
        <div class="border-2 border-black border-opacity-25 rounded-lg flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8 bg-gray-400 bg-opacity-50">
            <div class="max-w-md w-full space-y-8">
                <div>
                <h2 class="mt-6 text-center text-3xl font-extrabold text-gray-700 text-opacity-75">
                    Login
                </h2>
                </div>
                <form class="mt-8 space-y-6" action="#" method="POST">
                <input type="hidden" name="remember" value="true">
                <div class="rounded-md shadow-sm -space-y-px">
                    <div>
                    <label for="username" class="sr-only" text-gray-300 text-opacity-50>Username</label>
                    <input id="username" name="username" type="text" autocomplete="" class="my-2 appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Username / Email">
                    </div>
                    <div>
                    <label for="password" class="sr-only" text-gray-300 text-opacity-50>Password</label>
                    <input id="password" name="password" type="password" autocomplete="current-password" class="my-2 appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Password">
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
                <div>
                    <button type="submit" name="login" class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-gray-600 hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">
                    Login
                    </button>
                </div>
                </form>
                <div>
                    <a href="register.php">
                    <button name="register" class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-gray-500 hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">
                        Register
                    </button>
                    </a>
                </div>
            </div>
        </div>
    </div>
<?php
    require_once("./util/docClose.php")
?>