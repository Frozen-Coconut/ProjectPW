<?php
    require_once('../util/connection.php');

    if(isset($_GET["email"])){
        $userEdit = selectUserEmail($_GET["email"]);
    }

    $provinsi = selectProvinsi();
?>

<div class="border-2 border-black border-opacity-25 rounded-lg flex items-center justify-center py-4 px-4 sm:px-6 lg:px-8 bg-gray-400" style="width: 400px;">
    <div class="max-w-md w-full space-y-8 relative">
        <div>
        <input type="hidden" name="" id="kotaSekarang" value="<?= $userEdit[0]["kota"] ?>">
        <input type="hidden" name="" id="idKotaSekarang" value="<?= $userEdit[0]["id_kota"] ?>">
        <button type="button" class="bg-white rounded-md p-0.5 inline-flex items-center justify-center text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500 absolute top-0 right-0" onclick="closeForm()">
          <span class="sr-only">Close menu</span>
          <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
          </svg>
        </button>
        <h2 class="mt-6 text-center text-3xl font-extrabold text-gray-700 text-opacity-75">
            Edit User
        </h2>
        </div class="mt-8 space-y-6 px-3">
        <input type="hidden" name="remember" value="true">
        <div class="rounded-md -space-y-px bg-dark">
            <div>
            <label for="name" class="sr-only" text-gray-300 text-opacity-50>Name</label>
            <input id="nameEdit" type="text" name="name" autocomplete="" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Nama" value="<?= $userEdit[0]["name"] ?>">
            </div>
            <div>
            <label for="username" class="sr-only" text-gray-300 text-opacity-50>Username</label>
            <input id="usernameEdit" name="username" type="text" autocomplete="" disabled class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Username" value="<?= $userEdit[0]["username"] ?>">
            </div>
            <div>
            <label for="email" class="sr-only" text-gray-300 text-opacity-50>Email</label>
            <input id="emailEdit" name="email" type="email" autocomplete="" disabled class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Email" value="<?= $userEdit[0]["email"] ?>">
            </div>
            <div>
              <label for="password" class="sr-only" text-gray-300 text-opacity-50>Password</label>
              <input id="passwordEdit" name="password" type="password" autocomplete="" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" placeholder="Password" value="<?= $userEdit[0]["password"] ?>">
            </div>
            <div>
            <select onchange="loadSelectKota()" name="provinsi" id="selectProvinsi" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm">
                <option value="<?= $userEdit[0]["id_provinsi"] ?>" selected hidden class="text-gray-900"><?= $userEdit[0]["provinsi"] ?></option>
                <?php foreach($provinsi as $key => $x) :?>
                    <option value="<?= $x["id"] ?>"><?= $x["name"] ?></option>
                <?php endforeach; ?>
            </select>
            </div>
            <div id="kota">
                
            </div>
            <div>
            <label for="birthDate" class="sr-only" text-gray-300 text-opacity-50>Tanggal Lahir</label>
            <input type="date" name="birthDate" id="birthEdit" placeholder="Tanggal Lahir" class="my-2 appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" value="<?= $userEdit[0]["birth_date"] ?>">
            </div>
        </div>
        <div>
            <button id="edit" class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-gray-600 hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500" onclick="editUser('<?= $userEdit[0]['email'] ?>')">
            Edit
            </button>
          </div>
      </div>
  </div>