<?php
    require_once("./util/connection.php");
    if (!isset($_SESSION["iniAdmin"])) {
      header("Location: index.php");
    }
    require_once("./util/docOpen.php");
    require_once("./util/navbarAdmin.php");
    unset($_SESSION["filterBrand"]);
    unset($_SESSION["filterInstrument"]);
    unset($_SESSION["filterName"]);

    $brand = query('SELECT * FROM brand');
    $instrument = query('SELECT * FROM instrument');
?>
<script>
    // document.title = 'Admin Items';
</script>
<header class="bg-white shadow">
  <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
    <h1 class="text-3xl font-bold text-gray-900">
      Items
    </h1>
  </div>
</header>
<div class="p-2 pt-5 relative mx-auto text-gray-600 flex justify-end">
  <div class="mr-12">
  <button class="border-2 border-gray-300 bg-white h-10 px-4 rounded-lg text-sm hover:border-indigo-500" onclick="addItem()">Tambah Item</button>
  <button class="border-2 border-gray-300 bg-white h-10 px-4 rounded-lg text-sm hover:border-indigo-500" onclick="addColor()">Tambah Warna</button>
  <button class="border-2 border-gray-300 bg-white h-10 px-4 rounded-lg text-sm hover:border-indigo-500" onclick="addColorToItem()">Tambah Warna ke Item</button>
  <button class="border-2 border-gray-300 bg-white h-10 px-4 rounded-lg text-sm hover:border-indigo-500" onclick="randomColor()">Tambah Warna Acak</button>
  <button class="border-2 border-gray-300 bg-white h-10 px-4 rounded-lg text-sm hover:border-indigo-500" onclick="reset()">Hilangkan Filter</button>
    <select id="brandFilter" class="form-select border-2 border-gray-300 bg-white h-10 pr-8 rounded-lg text-sm focus:outline-none" onchange="filterBrand()">
      <option value="" hidden selected>Brand</option>
      <?php foreach($brand as $x) :?>
        <option value="<?= $x["id"] ?>"><?= $x["name"] ?></option>
      <?php endforeach; ?>
    </select>
    <select id="instrumentFilter" class="form-select border-2 border-gray-300 bg-white h-10 pr-8 rounded-lg text-sm focus:outline-none" onchange="filterInstrument()">
      <option value="" hidden selected disabled>Instrument</option>
      <?php foreach($instrument as $x) :?>
        <option value="<?= $x["id"] ?>"><?= $x["name"] ?></option>
      <?php endforeach; ?>
    </select>
    <input class="border-2 border-gray-300 bg-white h-10 px-5 rounded-lg text-sm focus:outline-none"
      type="search" name="search" placeholder="Search" id="inputSearch">
    <button type="submit" class="ml-2" onclick="search()">
      <svg class="text-gray-600 h-4 w-4 fill-current" xmlns="http://www.w3.org/2000/svg"
        xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px"
        viewBox="0 0 56.966 56.966" style="enable-background:new 0 0 56.966 56.966;" xml:space="preserve" width="512px" height="512px">
        <path
          d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23  s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92  c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17  s-17-7.626-17-17S14.61,6,23.984,6z" />
      </svg>
    </button>
  </div>
</div>
<div class="flex flex-col" style="height: 65vh;">
  <div class="my-2 overflow-y-auto sm:mx-6 lg:mx-8">
    <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
      <div class="shadow border-b border-gray-200 sm:rounded-lg">
        <table class="min-w-full divide-y divide-gray-200 table-fixed">
          <thead class="bg-gray-50">
          <tr>
              <th scope="col" class="w-1/2 pl-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">
                Nama
              </th>
              <th scope="col" class="w-1/8 px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">
                Brand
              </th>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">
                Instrument
              </th>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">
                Harga
              </th>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">
                Stock
              </th>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">
                
              </th>
            </tr>
          </thead>
          <tbody class="bg-white divide-y divide-gray-200" id="tableBody">
          
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
<div class="min-h-screen flex items-center justify-center absolute inset-0 bg-black bg-opacity-75 hidden" id="formEdit">

</div>
<script>
    loadItems();

    function loadItems() {
      $.ajax({
          type: "get",
          url: "./ajax/loadItems.php",
          data: {
              
          }
      }).then(res=>{
          $("#tableBody").html(res);
      })
    }

    function randomColor() {
      $.ajax({
          type: "get",
          url: "./ajax/randomWarnaItem.php",
          data: {
              
          }
      }).then(res=>{
          
      })
    }

    function editItem(namaItem) {
      $.ajax({
          type: "get",
          url: "./ajax/formAddStock.php",
          data: {
              "name" : namaItem
          }
      }).then(res=>{
          $("#formEdit").html(res);
      })
      $("#formEdit").css('display','flex');
    }

    function deleteItem(namaItem) {
      $.ajax({
          type: "get",
          url: "./ajax/loadItems.php",
          data: {
              "delete" : namaItem
          }
      }).then(res=>{
          $("#tableBody").html(res);
      })
    }

    function addStock(namaItem) {
      $.ajax({
          type: "get",
          url: "./ajax/loadItems.php",
          data: {
              "stockBaru" : $("#stockBaru").val(),
              "name" : namaItem
          }
      }).then(res=>{
          $("#tableBody").html(res);
          $("#formEdit").css('display','none');
      })
    }

    function addItemForm() {
      $.ajax({
          type: "get",
          url: "./ajax/loadItems.php",
          data: {
              "add" : 1,
              "name" : $("#addName").val(),
              "brand" : $("#addBrand").val(),
              "instrument" : $("#addInstrument").val(),
              "price" : $("#addPrice").val(),
              "stock" : $("#addStock").val(),
              "desc" : $("#addDesc").val(),
              "image" : $("#addUrl").val()
          }
      }).then(res=>{
          $("#tableBody").html(res);
          closeForm();
      })
    }

    function closeForm() {
      $("#formEdit").css('display','none');
    }

    function filterBrand() {
      $.ajax({
          type: "get",
          url: "./ajax/filterItems.php",
          data: {
              "brand" : $("#brandFilter").val()
          }
      }).then(res=>{
          loadItems();
      })
    }

    function filterInstrument() {
      $.ajax({
          type: "get",
          url: "./ajax/filterItems.php",
          data: {
              "instrument" : $("#instrumentFilter").val()
          }
      }).then(res=>{
          loadItems();
      })
    }

    function search() {
      $.ajax({
          type: "get",
          url: "./ajax/filterItems.php",
          data: {
              "name" : $("#inputSearch").val()
          }
      }).then(res=>{
          loadItems();
      })
    }

    function addItem() {
      $.ajax({
          type: "get",
          url: "./ajax/formAddItem.php",
          data: {
              
          }
      }).then(res=>{
          $("#formEdit").html(res);
      })
      $("#formEdit").css('display','flex');
    }

    function reset() {
      $.ajax({
          type: "get",
          url: "./ajax/filterItems.php",
          data: {
              "reset" : 1
          }
      }).then(res=>{
          loadItems();
          $("#inputSearch").val("");
          $("#instrumentFilter").val("");
          $("#brandFilter").val("");
      })
    }

    function addColor() {
      $.ajax({
          type: "get",
          url: "./ajax/formAddColor.php",
          data: {
              "add" : 1
          }
      }).then(res=>{
          $("#formEdit").html(res);
      })
      $("#formEdit").css('display','flex');
    }

    function addColorForm () {
      $.ajax({
          type: "get",
          url: "./ajax/loadItems.php",
          data: {
              "addColor" : 1,
              "name" : $("#addNameColor").val(),
              "value" : $("#addValueColor").val()
          }
      }).then(res=>{
          $("#tableBody").html(res);
          closeForm();
      })
    }

    function addColorToItem() {
      $.ajax({
          type: "get",
          url: "./ajax/formAddColor.php",
          data: {
              
          }
      }).then(res=>{
          $("#formEdit").html(res);
      })
      $("#formEdit").css('display','flex');
    }

    function searchItem() {
      $.ajax({
          type: "get",
          url: "./ajax/formAddColor.php",
          data: {
              "nameSearch" : $("#inputSearchItem").val()
          }
      }).then(res=>{
          $("#formEdit").html(res);
      })
      $("#formEdit").css('display','flex');
    }

    function resetItem() {
      $.ajax({
          type: "get",
          url: "./ajax/formAddColor.php",
          data: {
              
          }
      }).then(res=>{
          $("#formEdit").html(res);
      })
      $("#formEdit").css('display','flex');
    }

    function addColorItemForm () {
      $.ajax({
          type: "get",
          url: "./ajax/loadItems.php",
          data: {
              "addColorItem" : 1,
              "name" : $("#addItemSelect").val(),
              "color" : $("#addColorSelect").val()
          }
      }).then(res=>{
          $("#tableBody").html(res);
          closeForm();
      })
    }
</script>
<?php
    require_once("./util/docClose.php")
?>