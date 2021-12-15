<?php
    require('../util/connection.php');

    $mode = 1;
    if(isset($_GET["add"])){
        $mode = 0;
    }

    $item = selectItem();
    if(isset($_GET["nameSearch"])){
        $item = selectItemsNameLike($_GET["nameSearch"]);
    }

    $color = selectColor();
?>
<?php
    if ($mode == 0) {
?>
<div class="border-2 border-black border-opacity-25 rounded-lg flex items-center justify-center py-4 px-4 sm:px-6 lg:px-8 bg-hh-white" style="width: 400px;">
  <div class="max-w-md w-full space-y-8 relative">
      <div>
      <button type="button" class="bg-white rounded-md p-0.5 inline-flex items-center justify-center text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500 absolute top-0 right-0" onclick="closeForm()">
        <span class="sr-only">Close menu</span>
        <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
        </svg>
      </button>
      <h2 class="mt-6 text-center text-3xl font-bold text-gray-700 text-opacity-75">
          Tambah Warna
      </h2>
      </div class="mt-8 space-y-6 px-3">
      <div class="rounded-md -space-y-px bg-dark">
          <div>
          <input type="text" name="" placeholder="Nama Warna" id="addNameColor" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm">
          </div>
          <div>
          <input type="color" name="" placeholder="Value Warna" id="addValueColor" class="my-2 appearance-none rounded-md relative block w-full px-3 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 value="#ff0000">
          </div>
      </div>
      <div>
          <button id="addColor" class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-gray-600 hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500" onclick="addColorForm()">
          Tambah
          </button>
      </div>
    </div>
</div>
<?php
    } else {
?>
<div class="border-2 border-black border-opacity-25 rounded-lg flex items-center justify-center py-4 px-4 sm:px-6 lg:px-8 bg-hh-white" style="width: 400px;">
    <div class="max-w-md w-full space-y-8 relative">
      <div>
      <button type="button" class="bg-white rounded-md p-0.5 inline-flex items-center justify-center text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500 absolute top-0 right-0" onclick="closeForm()">
        <span class="sr-only">Close menu</span>
        <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
        </svg>
      </button>
      <h2 class="mt-6 text-center text-3xl font-bold text-gray-700 text-opacity-75">
          Tambah Warna
      </h2>
      </div class="mt-8 space-y-6 px-3">
      <div class="rounded-md -space-y-px bg-dark">
        <div class="p-1 pt-5 relative mx-auto text-gray-600 flex justify-end">
            <button class="mx-2 border-2 border-gray-300 bg-white h-10 px-4 rounded-lg text-sm hover:border-indigo-500" onclick="resetItem()">
                Reset
            </button>
            <input class="border-2 border-gray-300 bg-white h-10 px-5 rounded-lg text-sm focus:outline-none"
                type="search" name="search" placeholder="Search" id="inputSearchItem">
            <button type="submit" class="ml-2" onclick="searchItem()">
                <svg class="text-gray-600 h-4 w-4 fill-current" xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px"
                    viewBox="0 0 56.966 56.966" style="enable-background:new 0 0 56.966 56.966;" xml:space="preserve" width="512px" height="512px">
                    <path
                    d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23  s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92  c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17  s-17-7.626-17-17S14.61,6,23.984,6z" />
                </svg>
            </button>
        </div>
        <div>
          <select name="" id="addItemSelect" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm">
              <option value="" hidden selected>Item</option>
              <?php foreach($item as $x) :?>
                  <option value="<?= $x["name"] ?>"><?= $x["name"] ?></option>
              <?php endforeach; ?>
          </select>
        </div>
        <div>
          <select name="" id="addColorSelect" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm">
              <option value="" hidden selected>Color</option>
              <?php foreach($color as $x) :?>
                  <option value="<?= $x["id"] ?>"><?= $x["name"] ?></option>
              <?php endforeach; ?>
          </select>
        </div>
      </div>
      <div>
          <button id="addColorItem" class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-gray-600 hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500" onclick="addColorItemForm()">
          Tambah
          </button>
      </div>
    </div>
</div>
<?php
    }
?>