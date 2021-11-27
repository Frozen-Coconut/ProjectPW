<?php
    require('../util/connection.php');

    if(isset($_GET["name"])){
        $itemSekarang = selectItemsName($_GET["name"]);
    }
?>

<div class="border-2 border-black border-opacity-25 rounded-lg flex items-center justify-center py-4 px-4 sm:px-6 lg:px-8 bg-gray-400" style="width: 400px;">
  <div class="max-w-md w-full space-y-8 relative">
      <div>
      <button type="button" class="bg-white rounded-md p-0.5 inline-flex items-center justify-center text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500 absolute top-0 right-0" onclick="closeForm()">
        <span class="sr-only">Close menu</span>
        <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
        </svg>
      </button>
      <h2 class="mt-6 text-center text-3xl font-extrabold text-gray-700 text-opacity-75">
          Tambah Stock
      </h2>
      </div class="mt-8 space-y-6 px-3">
      <div class="rounded-md -space-y-px bg-dark">
          <div>
          <label for="name" class="sr-only" text-gray-300 text-opacity-50>Stock</label>
          <input value="<?= $itemSekarang[0]["stock"] ?>" type="number" min="0" name="" id="stockBaru" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm">
          </div>
      </div>
      <div>
          <button id="addStock" class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-gray-600 hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500" onclick="addStock('<?= $itemSekarang[0]['name'] ?>')">
          Tambah Stock
          </button>
      </div>
    </div>
</div>