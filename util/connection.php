<?php
    session_start();

    $conn = new mysqli("103.146.203.49", "tokokit2_bebas", "siapayangcarry", "tokokit2_project_pw");

    function query($query) {
        global $conn;
        return $conn->query($query);
    }

    //Function Select
    function select($tableName, $columns, $condition = "1 = 1") {
        global $conn;
        return $conn->query("SELECT $columns FROM $tableName WHERE $condition")->fetch_all(MYSQLI_ASSOC);
    }

    function selectUser () {
        global $conn;

        $query = 'SELECT u.email as "email", u.username as "username", u.password as "password"
        , u.name as "name", p.name as "provinsi", k.name as "kota", u.birth_date as "birth_date", 
        u.gender as "gender", u.status as "status" FROM user u, provinsi p, kota k WHERE u.id_provinsi = p.id 
        AND u.id_kota = k.id';

        return $conn->query($query)->fetch_all(MYSQLI_ASSOC);
    }

    function selectUserLike ($like) {
        global $conn;

        $query = 'SELECT u.email as "email", u.username as "username", u.password as "password"
        , u.name as "name", p.name as "provinsi", k.name as "kota", u.birth_date as "birth_date", 
        u.gender as "gender", u.status as "status" FROM user u, provinsi p, kota k WHERE u.id_provinsi = p.id 
        AND u.id_kota = k.id AND u.name LIKE "%'.$like.'%"';

        return $conn->query($query)->fetch_all(MYSQLI_ASSOC);
    }

    function selectUserEmail ($email) {
        global $conn;

        $query = 'SELECT u.email as "email", u.username as "username", u.password as "password"
        , u.name as "name",p.id as "id_provinsi", p.name as "provinsi", k.id as "id_kota", k.name as "kota", u.birth_date as "birth_date", 
        u.gender as "gender", u.status as "status" FROM user u, provinsi p, kota k WHERE u.id_provinsi = p.id 
        AND u.id_kota = k.id AND u.email = "'.$email.'"';

        return $conn->query($query)->fetch_all(MYSQLI_ASSOC);
    }

    function selectItem() {
        global $conn;

        $query = 'SELECT i.name as "name", i.price as "price", i.image as "image", 
        i.description as "desc", i.stock as "stock", b.name as "brand", ins.name as "instrument"
        FROM items i, brand b, instrument ins
        WHERE i.id_brand = b.id AND i.id_instrument = ins.id';
        

        $data =  $conn->query($query)->fetch_all(MYSQLI_ASSOC);
        return $data;
    }

    function selectItemsName ($name) {
        global $conn;

        $query = 'SELECT i.name as "name", i.price as "price", i.image as "image", 
        i.description as "desc", i.stock as "stock", b.name as "brand", ins.name as "instrument"
        FROM items i, brand b, instrument ins
        WHERE i.id_brand = b.id AND i.id_instrument = ins.id AND i.name = "'.$name.'"';

        return $conn->query($query)->fetch_all(MYSQLI_ASSOC);
    }

    function selectItemsNameLike ($name) {
        global $conn;

        $query = 'SELECT i.name as "name", i.price as "price", i.image as "image", 
        i.description as "desc", i.stock as "stock", b.name as "brand", ins.name as "instrument"
        FROM items i, brand b, instrument ins
        WHERE i.id_brand = b.id AND i.id_instrument = ins.id AND i.name LIKE "%'.$name.'%"';

        return $conn->query($query)->fetch_all(MYSQLI_ASSOC);
    }

    function selectItemsBrand ($brand) {
        global $conn;

        $query = 'SELECT i.name as "name", i.price as "price", i.image as "image", 
        i.description as "desc", i.stock as "stock", b.name as "brand", ins.name as "instrument", 
        d.name as "diskon", d.value as "besarDiskon" 
        FROM items i, brand b, instrument ins, diskon d 
        WHERE i.id_brand = b.id AND i.id_instrument = ins.id AND i.id_diskon = d.id AND b.name = \''.$brand.'\'';

        $data = $conn->query($query)->fetch_all(MYSQLI_ASSOC);
        for ($i=0; $i < sizeof($data); $i++) { 
            $nama = $data[$i]["name"];
            $data[$i]["rating"] = selectRating($nama);
            $data[$i]["review"] = selectReview($nama);
            $data[$i]["color"] = selectColorAvailable($nama);
        }

        return $data;
    }

    function selectColorAvailable ($itemsName) {
        global $conn;

        $data = $conn->query('SELECT c.name as "name", c.value as "value" FROM color c, color_items ci WHERE ci.id_color = c.id AND ci.items_name = \''.$itemsName.'\'' )->fetch_all(MYSQLI_ASSOC);
        return $data;
    }

    function selectAllColor() {
        global $conn;

        $query = 'SELECT * FROM color';

        return $conn->query($query)->fetch_all(MYSQLI_ASSOC);
    }
    
    function selectRating ($itemsName) {
        global $conn;

        $data = $conn->query('SELECT AVG(r.rating) as "avgRating" FROM review r WHERE r.items_name = \''.$itemsName.'\'')->fetch_all(MYSQLI_ASSOC);
        return $data["avgRating"];
    }

    function selectReview ($itemsName) {
        global $conn;
        
        return $conn->query('SELECT r.user_email as "reviewer", r.review as "content" FROM review r WHERE r.items_name = \''.$itemsName.'\'')->fetch_all(MYSQLI_ASSOC);
    }

    function selectProvinsi () {
        global $conn;
        
        return $conn->query('SELECT * FROM provinsi')->fetch_all(MYSQLI_ASSOC);
    } 

    function selectKota ($idProv) {
        global $conn;
        
        return $conn->query('SELECT * FROM kota WHERE id_provinsi = '.$idProv)->fetch_all(MYSQLI_ASSOC);
    } 

    function selectDiscount () {
        global $conn;

        return $conn->query('SELECT * FROM diskon')->fetch_all(MYSQLI_ASSOC);
    }

    function selectDiscountSearch ($name) {
        global $conn;

        return $conn->query('SELECT * FROM diskon WHERE diskon.name LIKE "%'.$name.'%"')->fetch_all(MYSQLI_ASSOC);
    }

    function selectDiscountId ($id) {
        global $conn;

        return $conn->query('SELECT * FROM diskon WHERE diskon.id = '.$id)->fetch_all(MYSQLI_ASSOC);
    }

    function selectTransaction () {
        $query = 'SELECT t.id as "id", t.total as "total", t.status as "status", 
        u.email as "email", u.username as "username", u.name as "user_name" FROM transaction t, user u WHERE t.user_email = u.email';
        global $conn;
                
        $data = $conn->query($query)->fetch_all(MYSQLI_ASSOC);

        foreach($data as $key=>$x) {
            $data[$key]["item"] = selectItemTransaction($data[$key]["id"]);
        }

        return $data;
    }

    function selectTransactionId($id) {
        $query = 'SELECT t.id as "id", t.total as "total", t.status as "status", t.alamat as "alamat",
        u.email as "email", u.username as "username", u.name as "user_name" FROM transaction t, user u WHERE t.user_email = u.email AND t.id = '.$id;
        global $conn;
                
        $data = $conn->query($query)->fetch_all(MYSQLI_ASSOC);

        foreach($data as $key=>$x) {
            $data[$key]["item"] = selectItemTransaction($data[$key]["id"]);
        }

        return $data;
    }

    function selectItemTransaction($id) {
        global $conn;

        $query = 'SELECT i.name as "item_name", i.image as "image", i.price as "price", ti.quantity as "quantity",
        c.name as "warna", c.value as "warna_value" FROM items i, transaction_items ti, color c WHERE i.name = ti.items_name AND ti.color_id = c.id
        AND ti.transaction_id = '.$id;

        return $conn->query($query)->fetch_all(MYSQLI_ASSOC);
    }

    function selectTransactionOrderById() {
        $query = 'SELECT t.id as "id", t.total as "total", t.status as "status", t.alamat as "alamat",
        u.email as "email", u.username as "username", u.name as "user_name" FROM transaction t, user u 
        WHERE t.user_email = u.email ORDER BY t.id DESC';
        
        global $conn;

        return $conn->query($query)->fetch_all(MYSQLI_ASSOC);
    }

    function selectColor () {
        global $conn;

        $query = 'SELECT * FROM color';

        return $conn->query($query)->fetch_all(MYSQLI_ASSOC);
    }

    //Function Insert

    function insertUser ($data) {
        global $conn;

        $stmt = $conn->prepare("INSERT INTO user(email, username, password, name, id_provinsi, id_kota, birth_date, gender, status) VALUES(?,?,?,?,?,?,?,?,1)");

        $stmt->bind_param("ssssiisi", $data["email"], $data["username"], $data["password"], $data["name"], $data["provinsi"], $data["kota"], $data["birth_date"], $data["gender"]);

        $stmt->execute();
    }

    function insertItems($data) {
        global $conn;

        $stmt = $conn->prepare("INSERT INTO items(name, id_brand, id_instrument, price, image, description, stock) VALUES(?,?,?,?,?,?,?)");

        $stmt->bind_param("siiissi", $data["name"], $data["brand"], $data["instrument"], $data["price"], $data["image"], $data["desc"], $data["stock"]);

        $stmt->execute();
    }

    function insertColor ($data) {
        global $conn;

        $stmt = $conn->prepare("INSERT INTO color(name, value) VALUES (?,?)");

        $stmt->bind_param("ss", $data["name"], $data["value"]);

        $stmt->execute();
    }

    function insertColorItem ($data) {
        global $conn;

        $stmt = $conn->prepare("INSERT INTO color_items(id_color, items_name) VALUES (?,?)");

        $stmt->bind_param("ss", $data["color"], $data["name"]);

        $stmt->execute();
    }

    function insertDiskon($data) {
        global $conn;

        $stmt = $conn->prepare("INSERT INTO diskon(name, value) VALUES (?,?)");

        $stmt->bind_param("si", $data["nama"], $data["value"]);

        $stmt->execute();
    }

    function insertTransaction($data) {
        global $conn;

        $stmt = $conn->prepare("INSERT INTO transaction(user_email, total, alamat,  status) VALUES(?,?,?,1)");

        $stmt->bind_param("sis", $data["email"], $data["total"], $data["alamat"]);

        $stmt->execute();

        $transactionTerbaru = selectTransactionOrderById();
        $idtransactionTerbaru = $transactionTerbaru[0]["id"];

        foreach ($data["item"] as $key => $x) {
            $stmt = $conn->prepare("INSERT INTO transaction_items(transaction_id, items_name, quantity, color_id) VALUES(?,?,?,?)");

            $stmt->bind_param("isii", $idtransactionTerbaru, $x["nama"], $x["qty"], $x["color_id"]);

            $stmt->execute();
        }
    }

    function insertReview($email, $data) {
        global $conn;
        
        $stmt = $conn->prepare("INSERT INTO review (user_email, items_name, review, rating) VALUES (?, ?, ?, ?)");

        foreach ($data as $key => $value) {
            $stmt->bind_param("sssi", $email, $value["name"], $value["review"], $value["rating"]);

            $stmt->execute();
        }
    }

    //Function Delete

    function deleteItem($name) {
        global $conn;

        $query = "DELETE FROM items WHERE items.name = '".$name."'";

        $hasil = mysqli_query($conn, $query);
    }

    function deleteDiscount($id) {
        global $conn;

        $query = "UPDATE items i SET i.id_diskon = NULL WHERE i.id_diskon = $id";

        mysqli_query($conn, $query);

        $query = "DELETE FROM diskon WHERE diskon.id = $id";

        mysqli_query($conn,$query);
    }
    
    function deleteWishListItem($name) {
        global $conn;

        $query = "DELETE FROM wishlist WHERE wishlist.items_name = '".$name."'";

        $hasil = mysqli_query($conn, $query);
    }

    //Function Edit
    function updateStatusUser($status, $email) {
        global $conn;
        $status = $status % 2;
        $status += 1;
        $query = "UPDATE user u SET status = $status WHERE u.email = '".$email."'";
        $hasil = mysqli_query($conn, $query);
        return mysqli_affected_rows($conn);
    }

    function updateProfileUser($data, $email) {
        global $conn;
        $stmt = $conn->prepare("UPDATE user u SET u.name = ?, u.password = ?, u.id_provinsi = ?, u.id_kota = ?, u.birth_date = ? WHERE u.email = '".$email."'");
        
        $stmt->bind_param("ssiis", $data["name"], $data["password"], $data["provinsi"], $data["kota"], $data["birth_date"]);

        $stmt->execute();
    }

    function updateStock($stockBaru, $name) {
        global $conn;
        
        $query = ("UPDATE items SET stock = ".$stockBaru." WHERE name = '".$name."'");

        mysqli_query($conn,$query);
    }

    function updateStatusTransaction($id, $statusBaru) {
        global $conn;
        
        $query = ("UPDATE transaction SET status = $statusBaru WHERE id = $id");

        mysqli_query($conn,$query);
    }

    function updateDiscount ($id, $data) {
        global $conn;

        $stmt = $conn->prepare("UPDATE diskon d SET d.name = ?, d.value = ? WHERE d.id = $id");

        $stmt->bind_param("si", $data["nama"], $data["value"]);
        
        $stmt->execute();
    }

    function updateDiscountItem ($idDiscount, $idItem) {
        global $conn;

        $query = ("UPDATE items SET id_diskon = ".$idDiscount." WHERE name = '".$idItem."'");

        mysqli_query($conn,$query);
    }

    //Function Tambahan

    function cheatStock () {
        global $conn;
        
        $query = ("UPDATE items SET stock = 100");

        mysqli_query($conn,$query);
    }

    function login($data){
        global $conn;

        $user = selectUser();
        $cek = -1;
        $hasil = 0;
        foreach($user as $key => $x) {
            if ($data["username"] == $x["username"] || $data["username"] == $x["email"]){ $cek = $key; $hasil+=1;}
        }
        if ($cek != -1) {
            if ($data["password"] == $user[$cek]["password"]) {
                $hasil +=1;
                if ($user[$cek]["status"] == 1) {
                    $hasil +=1;
                    $_SESSION["loggedIn"] = $user[$cek];
                }
            }
        }
        return $hasil;
    }

    function cekKembar($data) {
        global $conn;

        $user = selectUser();
        $hasil = 0;
        foreach($user as $key => $x) {
            if ($data["username"] == $x["username"] || $data["email"] == $x["email"]) $hasil+=1;
        }
        return $hasil;
    }

    function getPageName(){
        return basename($_SERVER["PHP_SELF"]);
    }
    
    function getCurrencyFormatting($price){
        return number_format($price, 2, ',' , '.');
    }

    function reloadPage(){
        header("Location: ".$_SERVER["REQUEST_URI"]);
    }

    function addAlert($msg){
        $_SESSION["onalert"] = $msg;
    }

    function addNotice($msg){
        $_SESSION["onnotice"] = $msg;
    }

    function getTotalRevenue() {
        global $conn;
        $query = "SELECT SUM(total) as 'sum' FROM transaction";
        
        $result = $conn->query($query)->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function getBanyakUser() {
        global $conn;
        $query = "SELECT count(email) as 'total' FROM user";
        
        $result = $conn->query($query)->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function getBanyakItem() {
        global $conn;
        $query = "SELECT count(name) as 'total' FROM items";
        
        $result = $conn->query($query)->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function getItemTransaction() {
        global $conn;
        $query = "SELECT SUM(ti.quantity) as 'sum', ti.items_name as 'name' FROM transaction_items ti GROUP BY ti.items_name ORDER BY 1 DESC";
        
        $result = $conn->query($query)->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function getBrandTransaction() {
        global $conn;
        $query = "SELECT SUM(ti.quantity) as 'sum', b.name as 'brand' FROM transaction_items ti, items i, brand b WHERE ti.items_name = i.name AND i.id_brand = b.id GROUP BY b.id ORDER BY 1 DESC";
        
        $result = $conn->query($query)->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function getItemRating() {
        global $conn;
        $query = "SELECT AVG(r.rating) as 'rating', r.items_name as 'name' FROM review r GROUP BY r.items_name ORDER BY 1 DESC";
        
        $result = $conn->query($query)->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function getInstrumentTransaction() {
        global $conn;
        $query = "SELECT SUM(ti.quantity) as 'sum', t.name as 'instrument' FROM transaction_items ti, items i, instrument t WHERE ti.items_name = i.name AND i.id_instrument = t.id GROUP BY t.id ORDER BY 1 DESC";
        
        $result = $conn->query($query)->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function getTopUser() {
        global $conn;
        $query = "SELECT COUNT(t.id) as 'count', u.name as 'user' FROM transaction t, user u WHERE t.user_email = u.email GROUP BY t.user_email ORDER BY 1 DESC";
        
        $result = $conn->query($query)->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function getWishlist(){
        global $conn;
        $query = "SELECT * FROM wishlist WHERE user_email='".$_SESSION["loggedIn"]["email"]."'";
        
        $result = $conn->query($query)->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function randomWarnaItem () {
        global $conn;
        $query = 'TRUNCATE TABLE color_items';

        mysqli_query($conn, $query);

        $semuaItem = selectItem();
        $semuaWarna = selectAllColor();
        $banyakWarna = sizeof($semuaWarna);
        foreach($semuaItem as $x) {
            $hasilRand = rand(1,4);
            $temp = [];
            $warna = [];
            for ($i=0; $i < $hasilRand; $i++) { 
                do {
                    $cek = false;
                    $randWarna = rand(0, $banyakWarna-1);
                    for ($i=0; $i < sizeof($temp); $i++) { 
                        if ($randWarna == $temp[$i]) $cek = true;
                    }
                } while ($cek);
                $temp[] = $randWarna;
                $warna[] = $semuaWarna[$randWarna];
            }
            for ($i=0; $i < $hasilRand; $i++) { 
                $stmt = $conn->prepare("INSERT INTO color_items(id_color, items_name) VALUES(?,?)");

                $stmt->bind_param("is", $warna[$i]["id"], $x["name"]);

                $stmt->execute();
            }
        }
    }
?>