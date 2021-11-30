<?php require_once("./util/docOpen.php") ?>

<?php require_once("./util/navbar.php")?>
<?php 
    require_once("./util/connection.php");
    $wish = getWishlist();

    
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
                <th class="w-1/3 py-4 px-7">Product</th>
                <th class="w-1/3 py-4 px-7">Price</th>
                <th class="w-1/3 py-4 px-7">Remove</th>
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
                    <td class="py-4 px-7"><img src="" alt=""><?= $value["items_name"] ?></td>
                    <td class="py-4 px-7"><?= $item[0]["price"] ?></td>
                    <td class="py-4 px-7"><button class="">Hapus</button></td>
                </tr>
                
            <?php
            
            }
            ?>
        </tbody>
    </table>
</section>

<?php require_once("./util/footer.php") ?>
<?php require_once("./util/docClose.php") ?>