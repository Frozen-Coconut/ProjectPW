<?php 
    require_once('./util/connection.php');

    if (!isset($_SESSION["loggedIn"])) {
        header("Location: index.php");
    }

    require_once("./util/docOpen.php");
    require_once("./util/navbar.php");
    // var_dump($_POST);
    
    // var_dump($wish);
?>

<script>
    // document.title = 'Wishlist';
</script>

<section class="w-full min-h-screen">
    <h1 class="text-3xl px-7 py-4">WishList</h1>
    <table class="w-full text-left ">
        <thead>
            <tr class="border-b">
                <th class="py-4 px-7">Product</th>
                <th class="w-3/5 py-4 px-7"></th>
                <th class="w-1/5 py-4 px-7">Price</th>
                <th class="w-1/5 py-4 px-7">Remove</th>
            </tr>
        </thead>
        <tbody id="tableBody">
            
        </tbody>
    </table>
</section>

<script>
    loadWishlist();

    function loadWishlist() {
        $.ajax({
            type: "post",
            url: "./ajax/loadWishlist.php",
            data: {
                
            },
            success: function (response) {
                $("#tableBody").html(response);
            }
        });
    }

    function deleteWishlist(idWishlist) {
        $.ajax({
            type: "post",
            url: "./ajax/loadWishlist.php",
            data: {
                "delete" : idWishlist
            },
            success: function (response) {
                $("#tableBody").html(response);
            }
        });
    }
</script>

<?php require_once("./util/footer.php") ?>
<?php require_once("./util/docClose.php") ?>