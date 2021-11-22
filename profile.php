<?php
    require_once("./util/docOpen.php");
    require_once("./util/navbar.php");

    if(isset($_REQUEST["save"])){
        foreach ($_REQUEST as $key => $value) {
            $$key = $value;
        }
        $cmd = "UPDATE user SET name='$u_name', email='$u_email', password='$u_password', alamat='$u_address', birth_date='$u_birthday' WHERE username='$u_username'";
        $stmt = $conn->prepare("UPDATE user SET name='$u_name', email='$u_email', password='$u_password', alamat='$u_address', birth_date='$u_birthday' WHERE username='$u_username'");
        echo "<pre>";
        print_r($_REQUEST);
        echo "<script>$cmd</script>";
        echo "</pre>";
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
    
?>
    <div class="container min-h-screen flex justify-evenly">
        <div class="flex flex-col items-center w-4/6 pt-3 px-10  mt-10">
            <div class="text-5xl font-bold h-16 text-gray-800 w-full">Profile</div>
            <div class="w-5/6 px-5 py-6 shadow-md border-gray-100 border-2 rounded-2xl mt-10">
                <div class="w-full h-10 mb-12 flex justify-center items-center">
                    <div class=" border-2 border-gray-800 text-center py-0.5 px-4 mx-2 rounded-full cursor-pointer hover:bg-hh-orange-darker hover:text-white bg-hh-orange-lighter">User Profile</div>
                    <div class=" border-2 border-gray-800 text-center py-0.5 px-4 mx-2 rounded-full cursor-pointer hover:bg-hh-orange-darker hover:text-white">Order History</div>
                </div>

                <form action="" method="POST" class="flex justify-center">
                <div class="table w-11/12">
                    <div class="table-row-group ">
                            <input type="hidden" name="username" value="<?=$username?>">
                        <div class="table-row">
                            <div class="table-cell text-xl font-medium border-4 border-white">Name</div>
                            <div class="table-cell border-4 border-white">:<input class="h-8 ml-3 w-11/12" type="text" name="u_name" id="u_name" value="<?=$name??""?>" onkeydown="isChanged()"></div>
                        </div>
                        <div class="table-row">
                            <div class="table-cell text-xl font-medium border-4 border-white">Username</div>
                            <div class="table-cell border-4 border-white">:<input class="h-8 ml-3 w-11/12 disabled:opacity-50" type="text" name="u_username" id="u_username" value="<?=$username??""?>" readonly="true"></div>
                        </div>
                        <div class="table-row">
                            <div class="table-cell text-xl font-medium border-4 border-white">Password</div>
                            <div class="table-cell border-4 border-white">:<input class="h-8 ml-3 w-11/12" type="password" name="u_password" id="u_password" value="<?=$password??""?>" onkeydown="isChanged()"></div>
                        </div>
                        <div class="table-row">
                            <div class="table-cell text-xl font-medium border-4 border-white">Email</div>
                            <div class="table-cell border-4 border-white">:<input class="h-8 ml-3 w-11/12" type="email" name="u_email" id="u_email" value="<?=$email??""?>" onkeydown="isChanged()"></div>
                        </div>
                        <div class="table-row">
                            <div class="table-cell text-xl font-medium border-4 border-white">Address</div>
                            <div class="table-cell border-4 border-white">:<input class="h-8 ml-3 w-11/12" type="text" name="u_address" id="u_address" value="<?=$alamat??""?>" onkeydown="isChanged()"></div>
                        </div>
                        <div class="table-row">
                            <div class="table-cell text-xl font-medium border-4 border-white">Birthday</div>
                            <div class="table-cell border-4 border-white">:<input class="h-8 ml-3 w-11/12" type="date" name="u_birthday" id="u_birthday" value="<?=$birth_date??""?>" onchange="isChanged()"></div>
                        </div>
                        <div class="table-row">
                            <div class="table-cell text-xl font-medium border-4 border-white text-right pt-2"></div>
                            <div class="table-cell text-xl font-medium border-4 border-white text-right pt-2 pr-4">
                                <input type="button" value="Reset" id="reset" class="bg-hh-pink-dark hover:bg-hh-pink-light cursor-pointer px-4 py-1 rounded mx-1 text-white" onclick="resetData()">
                                <input type="submit" value="Save" name="save" id="save" class="bg-hh-orange-darker cursor-pointer px-4 py-1 rounded mx-1 text-white disabled:opacity-50" disabled>
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
            $("#u_address").val("<?=$alamat?>");
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
    </script>
<?php
    require_once("./util/footer.php");
    require_once("./util/docClose.php");
?>