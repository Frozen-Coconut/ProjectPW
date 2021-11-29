<?php
    require_once("./util/docOpen.php");
    require_once("./util/navbar.php");

    if(isset($_REQUEST["save"])){
        foreach ($_REQUEST as $key => $value) {
            $$key = $value;
        }
        $stmt = $conn->prepare("UPDATE user SET name='$u_name', email='$u_email', password='$u_password', id_provinsi=$u_province, id_kota=$u_city, birth_date='$u_birthday' WHERE username='$u_username'");
        $stmt->execute();
    }

    if(isset($_REQUEST["username"])){
        $username = $_REQUEST["username"];
        $stmt = $conn->query("SELECT * FROM user WHERE username='$username'");
        $user = $stmt->fetch_assoc();
        foreach ($user as $key => $value) {
            $$key = $value;
        }
    }
    
    $provinsi = selectProvinsi();
?>
    <script>
        document.title = 'Profile';
    </script>
    <div class="container min-h-screen flex justify-evenly">
        <div class="flex flex-col items-center w-4/6 pt-3 px-10  mt-10">
            <div class="text-5xl font-bold h-16 text-gray-800 w-full">Profil</div>
            <div class="w-5/6 px-5 py-6 shadow-md border-gray-100 border-2 rounded-2xl mt-10 bg-hh-orange-dark">
                <div class="w-full h-10 mb-12 flex justify-center items-center">
                    <div class=" border-2 border-hh-gray-dark text-center py-0.5 px-4 mx-2 rounded-full cursor-pointer hover:bg-hh-orange-darker hover:text-white bg-hh-orange-light">Profil Pengguna</div>
                    <div class=" border-2 border-hh-gray-dark text-center py-0.5 px-4 mx-2 rounded-full cursor-pointer hover:bg-hh-orange-darker hover:text-white">Riwayat Transaksi</div>
                    <a href="wishlist.php"><div class=" border-2 border-hh-gray-dark text-center py-0.5 px-4 mx-2 rounded-full cursor-pointer hover:bg-hh-orange-darker hover:text-white">Wishlist</div></a>
                </div>

                <form action="" method="POST" class="flex justify-center">
                <div class="table w-11/12">
                    <div class="table-row-group">
                            <input type="hidden" name="username" value="<?=$username?>">
                        <div class="table-row">
                            <div class="table-cell text-xl font-medium border-4 border-hh-orange-dark">Nama</div>
                            <div class="table-cell border-4 border-hh-orange-dark">:<input class="h-8 ml-3 w-11/12" type="text" name="u_name" id="u_name" value="<?=$name??""?>" onkeydown="isChanged()"></div>
                        </div>
                        <div class="table-row">
                            <div class="table-cell text-xl font-medium border-4 border-hh-orange-dark">Username</div>
                            <div class="table-cell border-4 border-hh-orange-dark">:<input class="h-8 ml-3 w-11/12 disabled:opacity-50" type="text" name="u_username" id="u_username" value="<?=$username??""?>" readonly="true"></div>
                        </div>
                        <div class="table-row">
                            <div class="table-cell text-xl font-medium border-4 border-hh-orange-dark">Password</div>
                            <div class="table-cell border-4 border-hh-orange-dark">:<input class="h-8 ml-3 w-11/12" type="password" name="u_password" id="u_password" value="<?=$password??""?>" onkeydown="isChanged()"></div>
                        </div>
                        <div class="table-row">
                            <div class="table-cell text-xl font-medium border-4 border-hh-orange-dark">Email</div>
                            <div class="table-cell border-4 border-hh-orange-dark">:<input class="h-8 ml-3 w-11/12" type="email" name="u_email" id="u_email" value="<?=$email??""?>" onkeydown="isChanged()"></div>
                        </div>
                        <div class="table-row">
                            <div class="table-cell text-xl font-medium border-4 border-hh-orange-dark">Alamat</div>
                            <div class="table-cell border-4 border-hh-orange-dark">:
                                <select class="ml-3 w-6/12" name="u_province" id="u_province" onchange="loadCity()">
                                <?php
                                    foreach ($provinsi as $key => $value) {
                                ?>
                                    <option value="<?=$value["id"]?>" <?=$value["id"]==$id_provinsi?"selected='selected'":""?>><?=$value["name"]?></option>
                                <?php
                                    }
                                ?>
                                </select>
                                <select class="w-2/5" name="u_city" id="u_city" onchange="isChanged()"></select>
                            </div>
                        </div>
                        <div class="table-row">
                            <div class="table-cell text-xl font-medium border-4 border-hh-orange-dark">Tanggal Lahir</div>
                            <div class="table-cell border-4 border-hh-orange-dark">:<input class="h-8 ml-3 w-11/12" type="date" name="u_birthday" id="u_birthday" value="<?=$birth_date??""?>" onchange="isChanged()"></div>
                        </div>
                        <div class="table-row">
                            <div class="table-cell text-xl font-medium border-4 border-hh-orange-dark text-right pt-2"></div>
                            <div class="table-cell text-xl font-medium border-4 border-hh-orange-dark text-right pt-2 pr-4">
                                <input type="button" value="Reset" id="reset" class="bg-hh-pink-dark hover:bg-hh-pink-light cursor-pointer px-4 py-1 rounded mx-1 text-white" onclick="resetData()">
                                <input type="submit" value="Simpan" name="save" id="save" class="bg-hh-orange-darker cursor-pointer px-4 py-1 rounded mx-1 text-white disabled:opacity-50" disabled>
                            </div>
                        </div>
                    </div>
                </div>
                </form>
                <div>

                </div>
            </div>
        </div>
    </div>
    <script>
        isEdited = false;
        function resetData(){
            $("#u_name").val("<?=$name?>");
            $("#u_username").val("<?=$username?>");
            $("#u_password").val("<?=$password?>");
            $("#u_email").val("<?=$email?>");
            $("#u_province").val(<?=$id_provinsi?>);
            loadCity();
            $("#u_city").val(<?=$id_kota?>);
            $("#u_birthday").val("<?=$birth_date?>");
            isEdited = false;
            $("#save").prop("disabled", true);
        }

        function isChanged(){
            if(!isEdited){
                isEdited = true;
                $("#save").prop("disabled", false);
            }
        }

        function loadCity() {
            let provinsi = $("#u_province").val();
            let selected = <?=$id_kota?>;
            console.log(provinsi);
            console.log(selected);
            // isChanged();
            $.ajax({
                type: "POST",
                url: "ajax/userProfile.php",
                data: {
                    "action":"loadCity",
                    "id_provinsi":provinsi,
                    "selected":selected
                },
                success: function (response) {
                    $("#u_city").html(response);
                }
            });
        }
    
        $(document).ready(function () {
            loadCity();
        });
    </script>
<?php
    require_once("./util/footer.php");
    require_once("./util/docClose.php");
?>