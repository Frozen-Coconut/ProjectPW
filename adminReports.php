<?php
    require_once("./util/connection.php");
    if (!isset($_SESSION["iniAdmin"])) {
      header("Location: index.php");
    }
    require_once("./util/docOpen.php");
    require_once("./util/navbarAdmin.php");
?>

<?php
  $totalPendapatan = getTotalRevenue();
  $totalPendapatan = $totalPendapatan[0]["sum"];

  $totalUser = getBanyakUser();
  $totalItems = getBanyakItem();

  $item = getItemTransaction();

  $brand = getBrandTransaction();

  $instrument = getInstrumentTransaction();
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
<div class="md:w-1/2 xl:w-1/3 p-3">
    <!--Metric Card-->
    <div class="bg-white border rounded shadow p-2">
        <div class="flex flex-row items-center">
            <div class="flex-1 text-right md:text-center">
                <h5 class="font-bold uppercase text-gray-500">Total Pendapatan</h5>
                <h3 class="font-bold text-2xl">Rp. <?= getCurrencyFormatting($totalPendapatan) ?></h3>
            </div>
        </div>
    </div>
    <!--/Metric Card-->
</div>
<div class="md:w-1/2 xl:w-1/3 p-3">
    <!--Metric Card-->
    <div class="bg-white border rounded shadow p-2">
        <div class="flex flex-row items-center">
            <div class="flex-1 text-right md:text-center">
                <h5 class="font-bold uppercase text-gray-500">Banyak User</h5>
                <h3 class="font-bold text-2xl"><?= $totalUser[0]["total"] ?> User</h3>
            </div>
        </div>
    </div>
    <!--/Metric Card-->
</div>
<div class="md:w-1/2 xl:w-1/3 p-3">
    <!--Metric Card-->
    <div class="bg-white border rounded shadow p-2">
        <div class="flex flex-row items-center">
            <div class="flex-1 text-right md:text-center">
                <h5 class="font-bold uppercase text-gray-500">Banyak Item</h5>
                <h3 class="font-bold text-2xl"><?= $totalItems[0]["total"] ?> Item</h3>
            </div>
        </div>
    </div>
    <!--/Metric Card-->
</div>
<div class="w-1/3 md:w-1/2 xl:w-1/3 p-3">
    <!--Metric Card-->
    <div class="bg-white border rounded shadow p-2">
        <div class="flex flex-row items-center">
            <div class="flex-1 text-right md:text-center">
                <h5 class="font-bold uppercase text-gray-500">Item Terlaku</h5>
                <h3 class="font-bold text-xl"><?= $item[0]["name"] ?></h3>
            </div>
        </div>
    </div>
    <!--/Metric Card-->
</div>
<div class="w-full md:w-1/2 p-3">
    <!--Graph Card-->
    <div class="bg-white border rounded shadow">
        <div class="border-b p-3">
            <h5 class="font-bold uppercase text-gray-600">Graph</h5>
        </div>
        <div class="p-5">
            <canvas id="chartjs-7" class="chartjs" width="undefined" height="undefined"></canvas>
            <script>
            new Chart(document.getElementById("chartjs-7"), {
                "type": "bar",
                "data": {
                    "labels": ["Amahi"],
                    "datasets": [{
                        "label": "Brand",
                        "data": [10],
                        "borderColor": "rgb(255, 99, 132)",
                        "backgroundColor": "rgba(255, 99, 132, 0.2)"
                    }]
                },
                "options": {
                    "scales": {
                        "yAxes": [{
                            "ticks": {
                                "beginAtZero": true
                            }
                        }]
                    }
                }
            });
            </script>
        </div>
    </div>
    <!--/Graph Card-->
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