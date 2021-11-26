<?php
    require_once("./util/docOpen.php");
    require_once("./util/navbarAdmin.php");
?>
<header class="bg-white shadow">
  <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
    <h1 class="text-3xl font-bold text-gray-900">
      Users
    </h1>
  </div>
</header>
<div class="p-2 pt-5 relative mx-auto text-gray-600 flex justify-end">
  <div class="mr-12">
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
  <div class="my-2 overflow-x-auto sm:mx-6 lg:mx-8">
    <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
      <div class="shadow overflow-y-auto border-b border-gray-200 sm:rounded-lg">
        <table class="min-w-full divide-y divide-gray-200">
          <thead class="bg-gray-50">
          <tr>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">
                Nama
              </th>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">
                Password
              </th>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">
                Provinsi
              </th>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">
                Kota
              </th>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">
                Tanggal Lahir
              </th>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">
                Gender
              </th>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">
                Status
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
    loadUser();
        
    function loadUser() {
      $.ajax({
          type: "get",
          url: "./ajax/loadUser.php",
          data: {
              
          }
      }).then(res=>{
          $("#tableBody").html(res);
      })
    }

    function gantiStatusUser(email, status) {
      $.ajax({
          type: "get",
          url: "./ajax/loadUser.php",
          data: {
              "email" : email,
              "statusBaru" : status
          }
      }).then(res=>{
          $("#tableBody").html(res);
      })
    }

    function search() {
      $.ajax({
          type: "get",
          url: "./ajax/loadUser.php",
          data: {
              "search" : $("#inputSearch").val()
          }
      }).then(res=>{
          $("#tableBody").html(res);
      })
    }

    function loadSelectKotaBaru() {
        $.ajax({
            type: "get",
            url: "./ajax/loadSelectKota.php",
            data: {
                "provinsi" : $("#selectProvinsi").val(),
                "kotaSekarang" : $("#kotaSekarang").val(),
                "idKotaSekarang" : $("#idKotaSekarang").val()
            }
        }).then(res=>{
            $("#kota").html(res);
        })
    }

    function loadSelectKota() {
        $.ajax({
            type: "get",
            url: "./ajax/loadSelectKota.php",
            data: {
                "provinsi" : $("#selectProvinsi").val()
            }
        }).then(res=>{
            $("#kota").html(res);
        })
    }

    function edit(email) {
      $.ajax({
          type: "get",
          url: "./ajax/formEditUser.php",
          data: {
              "email" : email
          }
      }).then(res=>{
          $("#formEdit").html(res);
          loadSelectKotaBaru();
          $("#formEdit").css('display','flex');
      })
    }

    function editUser(email) {
      $.ajax({
          type: "get",
          url: "./ajax/editUser.php",
          data: {
              "email" : email,
              "nameBaru" : $("#nameEdit").val(),
              "passwordBaru" : $("#passwordEdit").val(),
              "provinsiBaru" : $("#selectProvinsi").val(),
              "kotaBaru" : $("#selectKota").val(),
              "birthDateBaru" : $("#birthEdit").val()
          }
      }).then(res=>{
        $("#formEdit").css('display','none');
        loadUser();
      })
    }

    function closeForm() {
      $("#formEdit").css('display','none');
    }
</script>

<?php
    require_once("./util/docClose.php")
?>