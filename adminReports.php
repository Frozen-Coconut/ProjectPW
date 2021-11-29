<?php
    require_once("./util/docOpen.php");
    require_once("./util/navbarAdmin.php");


?>
<script>
    document.title = 'Admin Reports';
</script>
<header class="bg-white shadow">
  <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
    <h1 class="text-3xl font-bold text-gray-900">
      Laporan
    </h1>
  </div>
</header>
<div class="flex flex-col" style="height: 65vh;">
  <div class="my-2 overflow-y-auto sm:mx-6 lg:mx-8">
    <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
      <div class="shadow border-b border-gray-200 sm:rounded-lg">
        
      </div>
    </div>
  </div>
</div>
<div class="min-h-screen flex items-center justify-center absolute inset-0 bg-black bg-opacity-75 hidden" id="formTrack">

</div>
<script>
    loadTransaction();

    function loadTransaction() {
      $.ajax({
          type: "get",
          url: "./ajax/loadTransaction.php",
          data: {
              
          }
      }).then(res=>{
          $("#tableBody").html(res);
      })
    }

    function search() {
      $.ajax({
          type: "get",
          url: "./ajax/loadTransaction.php",
          data: {
              "search" : $("#inputSearch").val()
          }
      }).then(res=>{
          $("#tableBody").html(res);
      })
    }

    function confirmStatus(id, statusBaru) {
      $.ajax({
          type: "get",
          url: "./ajax/loadTransaction.php",
          data: {
              "confirm" : id,
              "statusBaru" : statusBaru
          }
      }).then(res=>{
          $("#tableBody").html(res);
      })
    }

    function trackStatus(id) {
      $.ajax({
          type: "get",
          url: "./ajax/formTrack.php",
          data: {
              "id" : id
          }
      }).then(res=>{
          $("#formTrack").html(res);
          $("#formTrack").css('display', 'flex');
      })
    }

    function closeForm() {
      $("#formTrack").css('display','none');
    }
</script>
<?php
    require_once("./util/docClose.php")
?>