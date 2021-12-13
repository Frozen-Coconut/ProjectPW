<?php
    require_once("./util/connection.php");
?>
<?php
    if(isset($_SESSION["loggedIn"]) || isset($_COOKIE["loggedIn"])) {
        header("Location:index.php");
    }

    if(isset($_POST["register"])){
        $name = $_POST["name"];
        $username = $_POST["username"];
        $email = $_POST["email"];
        $password = $_POST["password"];
        $confirm = $_POST["confirm"];
        $gender = $_POST["gender"] ?? "";
        $birth_date = $_POST["birthDate"];
        $provinsi = $_POST["provinsi"] ?? "";
        $kota = $_POST["kota"] ?? "";

        if ($name != "" && $username != "" && $email != "" && $password != "" && $confirm != "" && $gender != "" && $birth_date != "" && $provinsi !="" && $kota != "") {
            if(isset($_POST["accept"])){
                if (strtolower($username) != "admin") {
                    $cek = cekKembar(["username" => $username, "email" => $email]);
                    if ($cek == 0) {
                        //regis
                        if ($password == $confirm) {
                            $userBaru = [
                                "email" => $email,
                                "username" => $username,
                                "password" => $password,
                                "name" => $name,
                                "provinsi" => $provinsi,
                                "kota" => $kota,
                                "birth_date" => $birth_date,
                                "gender" => $gender
                            ];
                            insertUser($userBaru);
                            header("Location: login.php");
                        }
                        else addNotice("Password dan Confirm tidak sama !"); // Kasi pesan password dan confirm salah 
                    }
                    else addNotice("Username atau email tidak boleh kembar !"); // Kasi pesan username atau email tidak boleh kembar
                }
                else addNotice ("Username tidak dapat menggunakan admin !");
            }
            else addNotice("Terima terms dan condition !"); // Kasi pesan accept terms and condition
        }
        else addNotice("Isi semua input !"); // Kasi pesan semua input harus di isi
    }

    if(isset($_POST["login"])){
        header("Location:login.php");
    }

    $provinsi = selectProvinsi();
?>

<?php
    require_once("./util/docOpen.php");
?>
<?php
  require_once('./util/notice.php');
?>
    <script>
        // document.title = 'Register';
    </script>
    <div class="min-h-screen flex items-center justify-center bg-gradient-to-r from-hh-orange-darker to-hh-orange-light">
        <div class="border-2 border-black border-opacity-25 rounded-lg flex items-center justify-center py-4 px-4 sm:px-6 lg:px-8 bg-hh-white bg-opacity-50">
            <div class="max-w-md w-full space-y-8">
                <div>
                <h2 class="mt-6 text-center text-4xl font-abold text-gray-700 text-opacity-75">
                    Register
                </h2>
                </div>
                <form class="mt-8 space-y-6 px-3" action="#" method="POST">
                <input type="hidden" name="remember" value="true">
                <div class="rounded-md -space-y-px bg-dark">
                    <div>
                    <label for="name" class="sr-only" text-gray-300 text-opacity-50>Name</label>
                    <input id="name" type="text" name="name" autocomplete="" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Name">
                    </div>
                    <div>
                    <label for="username" class="sr-only" text-gray-300 text-opacity-50>Username</label>
                    <input id="username" name="username" type="text" autocomplete="" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Username">
                    </div>
                    <div>
                    <label for="email" class="sr-only" text-gray-300 text-opacity-50>Email</label>
                    <input id="email" name="email" type="email" autocomplete="" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Email">
                    </div>
                    <div>
                    <label for="password" class="sr-only" text-gray-300 text-opacity-50>Password</label>
                    <input id="password" name="password" type="password" autocomplete="" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Password">
                    </div>
                    <div>
                    <label for="confirm" class="sr-only" text-gray-300 text-opacity-50>Confirm Password</label>
                    <input id="confirm" name="confirm" type="password" autocomplete="" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Confirm Password">
                    </div>
                    <div>
                    <select onchange="loadSelectKota()" name="provinsi" id="selectProvinsi" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm">
                        <option value="" disabled selected hidden class="text-gray-900">Provinsi</option>
                        <?php foreach($provinsi as $key => $x) :?>
                            <option value="<?= $x["id"] ?>"><?= $x["name"] ?></option>
                        <?php endforeach; ?>
                    </select>
                    </div>
                    <div id="kota">
                        
                    </div>
                    <div>
                    <label for="birthDate" class="sr-only" text-gray-300 text-opacity-50>Birth Date</label>
                    <input type="date" name="birthDate" id="birthDate" placeholder="Date of Birth" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm">
                    </div>
                    <div>
                    <div class="flex items-center">
                        <input type="radio" name="gender" id="radioDef" class="hidden" disabled value="" checked>
                        <input class="mr-2" id="radio1" type="radio" name="gender" value="1"/>
                        <label for="radio1" class="flex items-center cursor-pointer mr-8">
                        Male</label>
                        <input class="mr-2" id="radio2" type="radio" name="gender" value="2"/>
                        <label for="radio2" class="flex items-center cursor-pointer">
                        Female</label>
                    </div>
                    </div>
                </div>
                <div class="flex items-center justify-between">
                    <div class="flex items-center">
                    <input id="accept" name="accept" type="checkbox" class="h-4 w-4 text-indigo-600 focus:ring-indigo-500 border-gray-300 rounded">
                    <label for="accept" class="mr-20 ml-2 block text-sm text-gray-900">
                        I Accept to Terms & Conditions
                    </label>
                    </div>
                </div>
                <div>
                    <button type="submit" name="register" class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-hh-orange-dark hover:bg-hh-orange-light focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">
                    Register
                    </button>
                </div>
                <div>
                    <a href="login.php">
                    <button name="login" class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-gray-700 hover:bg-gray-500 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500">
                        Login
                    </button>
                    </a>
                </div>
                </form>
            </div>
        </div>
    </div>
    <script>
        loadSelectKota();
        
        function loadSelectKota() {
            $.ajax({
                type: "get",
                url: "./ajax/loadSelectKota.php",
                data: {
                    "provinsi" : $("#selectProvinsi").val()
                }
            }).then(res=>{
                $("#kota").html(res);
            })
        }
    </script>
<?php
    require_once("./util/docClose.php")
?>