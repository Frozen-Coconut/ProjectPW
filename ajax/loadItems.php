<?php
    require_once("../util/connection.php");

    
    if(isset($_GET["delete"])){
        deleteItem($_GET["delete"]);
    }

    if(isset($_GET["stockBaru"]) && isset($_GET["name"])){
        updateStock($_GET["stockBaru"], $_GET["name"]);
    }

    if(isset($_GET["add"])){
      
    }

    $items = selectItem();

    if(isset($_SESSION["filterBrand"]) || isset($_SESSION["filterInstrument"]) || isset($_SESSION["filterName"])){
      $query = 'SELECT i.name as "name", i.price as "price", i.image as "image", 
      i.description as "desc", i.stock as "stock", b.name as "brand", ins.name as "instrument"
      FROM items i, brand b, instrument ins
      WHERE i.id_brand = b.id AND i.id_instrument = ins.id';
      if(isset($_SESSION["filterBrand"])){
        $query = $query.' AND i.id_brand = '.$_SESSION["filterBrand"];
      }
      if(isset($_SESSION["filterInstrument"])){
        $query = $query.' AND i.id_instrument = '.$_SESSION["filterInstrument"];
      }
      if(isset($_SESSION["filterName"])){
        $query = $query.' AND i.name LIKE "%'.$_SESSION["filterName"].'%"';
      }
      $items = query($query);
    }
?>

<?php foreach($items as $x) :?>
    <tr>
      <td class="pl-6 py-4">
        <div class="flex items-center">
          <div class="flex-shrink-0 h-10 w-10">
            <img class="h-10 w-10 rounded-full" src="<?= $x["image"] ?>" alt="">
          </div>
          <div class="ml-4">
            <div class="text-sm font-medium text-gray-900 break-word">
                <?= $x["name"] ?>
            </div>
          </div>
        </div>
      </td>
      <td class="px-6 py-4 whitespace-nowrap">
        <div class="text-sm text-gray-500"><?= $x["brand"] ?></div>
      </td>
      <td class="px-6 py-4 whitespace-nowrap">
        <div class="text-sm text-gray-500"><?= $x["instrument"] ?></div>
      </td>
      <td class="px-6 py-4 whitespace-nowrap">
        <div class="text-sm text-gray-500"><?= "Rp. ".getCurrencyFormatting($x["price"]) ?></div>
      </td>
      <td class="px-6 py-4 whitespace-nowrap">
        <div class="text-sm text-gray-500"><?= $x["stock"] ?></div>
      </td>
      <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
      <button class="text-indigo-600 hover:text-indigo-900 p-2" onclick="editItem('<?= $x['name'] ?>')">Tambah Stock</button>
      <button class="text-indigo-600 hover:text-indigo-900 p-2" onclick="deleteItem('<?= $x['name'] ?>')">Hapus</button>
      </td>
    </tr>
<?php endforeach; ?>