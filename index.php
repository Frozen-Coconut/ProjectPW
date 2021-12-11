<?php require_once("./util/connection.php"); ?>
<?php
    if (isset($_REQUEST["logoutAdmin"])) {
        unset($_SESSION["iniAdmin"]);
    }
    if(isset($_REQUEST["logout"])){
        unset($_SESSION["loggedIn"]);
        setcookie("loggedIn", "", time()-(60*60*24*10));
    }
?>
<?php require_once("./util/docOpen.php"); ?>

<?php require_once("./util/navbar.php")?>

<script>
        // document.title = 'Home';
</script>

<section class="w-full h-screen bg-center bg-no-repeat bg-cover flex" style="background-image: url('https://images.unsplash.com/photo-1511379938547-c1f69419868d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80');">
    <div class="w-full h-screen bg-opacity-70 bg-black flex justify-center items-center">
        <div class="sm-none lg:w-1/2"></div>
        <div class="sm-none md:w-3/4 lg:w-1/2">
        <div class="mx-4 text-left text-white px-10">
            <h1 class="font-bold text-6xl mb-4">TokoKita</h1>
            <p class="text-1xl mb-4">Toko alat musik terlengkap di Indonesia! Kami menyediakan alat musik professional dan pro audio dari merek ternama.</p>
            <form action="./catalogs.php" method="get">
                <input type="text" class="rounded-md px-5 py-3 transition duration-300 ease-in-out text-black" placeholder="Telusuri Toko" name="search">
                <button class="bg-red-500 rounded-md font-bold text-white text-center px-4 py-3 transition duration-300 ease-in-out hover:bg-red-600">
                    Search
                </button>
            </form>
        </div>
        </div>
    </div>
</section>
<section class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-4 py-12">
    <div class="text-center pb-12">
        <h2 class="text-base font-bold text-hh-orange-dark">
            Bingung mulai darimana?
        </h2>
        <h1 class="font-bold text-3xl md:text-4xl lg:text-5xl font-heading text-gray-900">
            Lihat Kategori Kami
        </h1>
    </div>
    <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5 gap-2" id="categories">

    </div>
</section>
<section class="w-full md:h-screen bg-center bg-no-repeat bg-cover flex" style="background-image: url('https://images.unsplash.com/photo-1620812097331-ff636155488f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80');">
    <div class="w-full md:h-screen bg-opacity-70 bg-black py-5 flex justify-center items-center flex-col-reverse md:flex-row">
            <div class="md:w-1/2">
                <div class="mx-4 text-white px-10">
                    <h2 class="font-bold text-3xl hidden md:flex mb-4">New Release</h2>
                    <h1 class="font-bold text-6xl mb-4">Kawaii K-300 48"</h1>
                    <p class="text-1xl mb-4">K-300 dibangun di atas keberhasilan pendahulunya yang memenangkan penghargaan, K-3, yang dinobatkan sebagai "Acoustic Piano of the Year" dari Majalah MMR selama empat tahun berturut-turut. K-300, dengan bangga meneruskan warisan yang luar biasa ini. </p>
                    <a href="./detail.php?itemname=Kawai%20K-300%2048%22%20Professional%20Upright%20Piano" class="text-lg transition-all text-gray-100 ring-2 px-4 py-0.5 rounded ring-white hover:bg-white hover:text-gray-900">
                        Buy Now
                    </a>
                </div> 
            </div>
            <div class="w-3/5 md:w-1/3">
                <img class ="shadow-inner" src="./asset/img/K-300-Polished-Ebony-600x600-removebg.png" alt="Image of Kawaii K-300">
            </div>    
            <div class="mx-4 text-white px-10">
                <h2 class="font-bold text-3xl md:hidden mb-4">New Release</h2>
            </div>
    </div>
</section>
<section class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-4 py-12">
<div class="text-center pb-12">
        <h1 class="font-bold text-3xl md:text-4xl lg:text-5xl font-heading text-gray-900">
            Our Partners
        </h1>
        <img src="./asset/img/partners.png" alt="partners">
    </div>
</section>

<script>
    $(document).ready(function () {
        $.ajax({
            type: "get",
            url: "./ajax/homeCategories.php",
            data: "",
            success: function (response) {
                $('#categories').html(response);
            }
        });
    });
    function catSelect(item){
        window.location.replace("./catalogs.php?filter="+item+"&type=byInstrument");
    }
</script>

<?php require_once("./util/footer.php") ?>
<?php require_once("./util/docClose.php") ?>