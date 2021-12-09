<?php
    require_once("./util/connection.php");
    if (!isset($_SESSION["iniAdmin"])) {
      header("Location: index.php");
    }
    require_once("./util/docOpen.php");
    require_once("./util/navbarAdmin.php");
?>

<?php
  $totalPendapatan = 0;
?>
<script>
    // document.title = 'Admin Reports';
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
      <div class="w-full md:w-1/2 xl:w-1/3 p-3">
                    <!--Metric Card-->
                    <div class="bg-white border rounded shadow p-2">
                        <div class="flex flex-row items-center">
                            <div class="flex-shrink pr-4">
                                <div class="rounded p-3 bg-hh-orange-light"><i class="fa fa-wallet fa-2x fa-fw fa-inverse"></i></div>
                            </div>
                            <div class="flex-1 text-right md:text-center">
                                <h5 class="font-bold uppercase text-gray-500">Total Pendapatan</h5>
                                <h3 class="font-bold text-3xl">Rp. <?= $totalPendapatan ?></h3>
                            </div>
                        </div>
                    </div>
                    <!--/Metric Card-->
                </div>
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