<?php
    session_start();

    $conn = new mysqli("localhost", "root", "", "project_pw");

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
        u.gender as "gender"  FROM user u, provinsi p, kota k WHERE u.id_provinsi = p.id 
        AND u.id_kota = k.id';

        return $conn->query($query)->fetch_all(MYSQLI_ASSOC);
    }

    function selectItemsBrand ($brand) {
        global $conn;

        $query = 'SELECT i.name as "name", i.price as "price", i.image as "image", 
        i.description as "desc", i.stock as "stock", b.name as "brand", ins.name as "instrument", 
        d.name as "diskon", d.value as "besarDiskon" 
        FROM items i, brand b, instruments ins, diskon d 
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
    
    function selectRating ($itemsName) {
        global $conn;

        $data = $conn->query('SELECT AVG(r.value) as "avgRating" FROM rating r WHERE r.items_name = \''.$itemsName.'\'')->fetch_all(MYSQLI_ASSOC);
        return $data["avgRating"];
    }

    function selectReview ($itemsName) {
        global $conn;
        
        return $conn->query('SELECT r.user_email as "reviewer", r.content as "content" FROM review r WHERE r.items_name = \''.$itemsName.'\'')->fetch_all(MYSQLI_ASSOC);
    }

    function selectProvinsi () {
        global $conn;
        
        return $conn->query('SELECT * FROM provinsi')->fetch_all(MYSQLI_ASSOC);
    } 

    function selectKota ($idProv) {
        global $conn;
        
        return $conn->query('SELECT * FROM kota WHERE id_provinsi = '.$idProv)->fetch_all(MYSQLI_ASSOC);
    } 

    //Function Insert

    function insertUser ($data) {
        global $conn;

        $stmt = $conn->prepare("INSERT INTO user(email, username, password, name, id_provinsi, id_kota, birth_date, gender, status) VALUES(?,?,?,?,?,?,?,?,1)");

        $stmt->bind_param("ssssiisi", $data["email"], $data["username"], $data["password"], $data["name"], $data["provinsi"], $data["kota"], $data["birth_date"], $data["gender"]);

        $stmt->execute();
    }

    function insertTransaction ($data) {
        global $conn;

        $stmt = $conn->prepare("INSERT INTO transaction(user_email, items_name, quantity, total, status) VALUES(?,?,?,?,1)");

        $stmt->bind_param("ssii", $data["user"], $data["items_name"], $data["quantity"], $data["items_price"]*$data["quantity"]);

        $stmt->execute();
    }

    function insertItems($data) {

    }

    function insertDiskon($data) {

    }

    //Function Delete

    //Function Edit

    //Function Tambahan

    function login($data){
        global $conn;

        $user = selectUser();
        $cek = -1;
        $hasil = 0;
        foreach($user as $key => $x) {
            if ($data["username"] == $x["username"]){ $cek = $key; $hasil+=1;}
        }
        if ($cek != -1) {
            if ($data["password"] == $user[$cek]["password"]) {
                $hasil +=1;
                $_SESSION["login"] = $user[$cek];
            }
        }
        return $hasil;
    }

    function getPageName(){
        return basename($_SERVER["PHP_SELF"]);
    }
    
    function getCurrencyFormatting($price){
        return number_format($price, 2, ',' , '.');
    }
?>