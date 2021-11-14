<?php
    session_start();

    $conn = new mysqli("localhost", "root", "", "project_pw");

    function query($query) {
        global $conn;
        return $conn->query($query);
    }

    function select($tableName, $columns, $condition = "1 = 1") {
        global $conn;
        return $conn->query("SELECT $columns FROM $tableName WHERE $condition")->fetch_all(MYSQLI_ASSOC);
    }
?>