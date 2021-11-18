<?php
    require_once("./util/docOpen.php")
?>

<?php
    if(isset($_POST["login"])){
        $username = $_POST["username"];
        $password = $_POST["password"];
        if ($username != "" && $password != "") {
            $hasil = login(["username" => $username, "password" => $password]);
            if ($hasil == 0) echo("Message1"); //Kasi pesan username tidak ketemu
            else if ($hasil == 1) echo("Message2"); //Kasi pesan password salah
            else echo("Message3"); //Masuk ke halaman home, karena login berhasil
            //Apabila login berhasil, user login yang sedang masuk tersimpan dalam $_SESSION["login"]
        }
        else echo("Message"); // Kasi pesan semua input harus di isi
    }
?>
    <h1>Login</h1>
    <form action="#" method="post">
        <input type="text" name="username" id="" placeholder="Username">
        <input type="password" name="password" id="" placeholder="Password">
        <a href="">Forget Password?</a>
        <button name="login">Login</button>
        <a href="register.php"><button>Register</button></a>
    </form>
<?php
    require_once("./util/docClose.php")
?>