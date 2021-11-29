<?php require_once("./util/docOpen.php") ?>

<?php require_once("./util/navbar.php")?>

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
            <tr class="border-b">
                <td class="py-4 px-7"><img src="" alt=""></td>
                <td class="py-4 px-7">test</td>
                <td class="py-4 px-7"><button>Hapus</button></td>
            </tr>
        </tbody>
    </table>
</section>

<?php require_once("./util/footer.php") ?>
<?php require_once("./util/docClose.php") ?>