<?php
    require_once('../util/connection.php');

    if(isset($_GET["id"])){
        $transaction = selectTransactionId($_GET["id"]);
        $transaction = $transaction[0];
    }
?>

<div class="border-2 border-black border-opacity-25 rounded-lg flex items-center justify-center py-4 px-4 sm:px-6 lg:px-8 bg-gray-400" style="width: 500px;">
  <div class="max-w-md w-full space-y-8 relative">
      <div class="mt-8 space-y-6 px-3">
      <button type="button" class="bg-white rounded-md p-0.5 inline-flex items-center justify-center text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500 absolute top-0 right-0" onclick="closeForm()">
        <span class="sr-only">Close menu</span>
        <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
        </svg>
      </button>
      <h2 class="mt-6 text-center text-3xl font-extrabold text-gray-700 text-opacity-75">
          Track
      </h2>
      </div>
      <div class="rounded-md -space-y-px bg-dark p-5">
          <h3 class="mb-6 text-xl font-extrabold text-gray-700 text-opacity-75">User Details</h3>
          <h5 class="mt-6 text-l font-extrabold text-gray-700 text-opacity-100">Username : <?= $transaction["username"] ?></h5>
          <h5 class="mt-6 text-l font-extrabold text-gray-700 text-opacity-100">Email : <?= $transaction["email"] ?></h5>
          <h5 class="mt-6 text-l font-extrabold text-gray-700 text-opacity-100">Name : <?= $transaction["user_name"] ?></h5>
      </div>
      <div class="rounded-md -space-y-px bg-white p-5">
          <h3 class="mb-6 text-xl font-extrabold text-gray-700 text-opacity-75">Item Details</h3>
          <div class="flex items-center">
          <div class="flex-shrink-0 h-20 w-20">
            <div class="w-20 h-20" style="background-image: url('<?= $transaction["image"] ?>');background-size:contain"></div>
          </div>
          <div class="ml-4">
          <h5 class="text-l font-extrabold text-gray-700 text-opacity-100">Name : <?= $transaction["item_name"] ?></h5>
          <h5 class="text-l font-extrabold text-gray-700 text-opacity-100">Price : <?= $transaction["price"] ?></h5>
          </div>
        </div>
      </div>
      <div class="rounded-md -space-y-px bg-dark p-5">
          <h3 class="mb-6 text-xl font-extrabold text-gray-700 text-opacity-75">Location</h3>
          <h5 class="mt-6 text-l font-extrabold text-gray-700 text-opacity-100">Sedang Menuju ke <?= $transaction["alamat"] ?></h5>
      </div>
    </div>
</div>