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

<?php
    require_once("./util/docOpen.php")
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
<?php
    require_once("./util/docClose.php")
?>