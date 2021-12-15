<?php
    if(isset($_GET["notice"])){
        $notice = $_GET["notice"];
    }
?>

<?= $notice ?>
<div class="cursor-pointer border-2 border-hh-black-light text-hh-black-light w-5 text-center h-5 rounded-full text leading-none" id="closenoticebox" onclick="closeNotice()">X</div>