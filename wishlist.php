<?php 
    require_once("./util/connection.php");
    require_once("./util/docOpen.php");
    require_once("./util/navbar.php");
    
    $wish = getWishlist();
    // var_dump($_POST);
    if(isset($_POST["delete"])){
        deleteWishListItem($_POST["delete"]);
    }
    
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
        <tbody>
            <?php
            foreach ($wish as $key => $value){
                //echo $value["items_name"];
                $item = selectItemsName($value["items_name"]);
                // var_dump($item);
            ?>
                <tr class="border-b">
                    <td class="py-4 px-7"><img src="<?= $item[0]["image"] ?>" style="width: 3em; height: 3em;" alt=""></td>
                    <td class="py-4 px-7"><?= $value["items_name"] ?></td>
                    <td class="py-4 px-7"><?= $item[0]["price"] ?></td>
                    <td class="py-4 px-7">
                        <form action="" method="post">
                            <input type="hidden" name="delete" value="<?= $value["items_name"] ?>">
                            <button class="text-lg transition-all text-gray-100 px-4 py-0.5 rounded bg-hh-orange-dark hover:bg-hh-orange-lighter hover:text-gray-500">
                                Hapus
                            </button>
                        </form>
                    </td>
                </tr>
                
            <?php
            
            }
            ?>
        </tbody>
    </table>
</section>

<?php require_once("./util/footer.php") ?>
<?php require_once("./util/docClose.php") ?>