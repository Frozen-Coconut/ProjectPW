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
  $itemRating = getItemRating();
  $topUser = getTopUser();
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
    <div class="flex flex-col">
    <div class="my-2 overflow-y-auto sm:mx-6 lg:mx-8">
        <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
        <div class="shadow border-b border-gray-200 sm:rounded-lg">
            <div class="flex flex-wrap">
            <div class="w-full sm:w-11/12 md:w-1/2 xl:w-1/3 p-3">
                <!--Metric Card-->
                <div class="bg-white border rounded shadow p-2">
                    <div class="flex flex-row items-center">
                        <div class="flex-shrink pr-4">
                            <div class="rounded p-3 bg-green-600"><i class="fa fa-wallet fa-2x fa-fw fa-inverse"></i></div>
                        </div>
                        <div class="flex-1 text-right md:text-center">
                            <h5 class="font-bold uppercase text-gray-500">Total Pendapatan</h5>
                            <h3 class="font-bold text-2xl">Rp. <?= getCurrencyFormatting($totalPendapatan) ?></h3>
                        </div>
                    </div>
                </div>
                <!--/Metric Card-->
            </div>
            <div class="w-full sm:w-11/12 md:w-1/2 xl:w-1/3 p-3">
                <!--Metric Card-->
                <div class="bg-white border rounded shadow p-2">
                    <div class="flex flex-row items-center">
                        <div class="flex-shrink pr-4">
                            <div class="rounded p-3 bg-hh-orange-dark"><i class="fas fa-user fa-2x fa-fw fa-inverse"></i></div>
                        </div>
                        <div class="flex-1 text-right md:text-center">
                            <h5 class="font-bold uppercase text-gray-500">Banyak User</h5>
                            <h3 class="font-bold text-2xl"><?= $totalUser[0]["total"] ?> User</h3>
                        </div>
                    </div>
                </div>
                <!--/Metric Card-->
            </div>
            <div class="w-full sm:w-11/12 md:w-1/2 xl:w-1/3 p-3">
                <!--Metric Card-->
                <div class="bg-white border rounded shadow p-2">
                    <div class="flex flex-row items-center">
                        <div class="flex-shrink pr-4">
                            <div class="rounded p-3 bg-hh-orange-light"><i class="fas fa-guitar fa-2x fa-fw fa-inverse"></i></div>
                        </div>
                        <div class="flex-1 text-right md:text-center">
                            <h5 class="font-bold uppercase text-gray-500">Banyak Item</h5>
                            <h3 class="font-bold text-2xl"><?= $totalItems[0]["total"] ?> Item</h3>
                        </div>
                    </div>
                </div>
                <!--/Metric Card-->
            </div>
            <div class="w-full sm:w-11/12 md:w-1/2 xl:w-1/3 p-3">
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
            <div class="w-full sm:w-11/12 md:w-1/2 xl:w-1/3 p-3">
                <!--Metric Card-->
                <div class="bg-white border rounded shadow p-2">
                    <div class="flex flex-row items-center">
                        <div class="flex-1 text-right md:text-center">
                            <h5 class="font-bold uppercase text-gray-500">Item Rating Terbaik</h5>
                            <h3 class="font-bold text-xl"><?= $itemRating[0]["name"] ?></h3>
                        </div>
                    </div>
                </div>
                <!--/Metric Card-->
            </div>
            <div class="w-full sm:w-11/12 md:w-1/2 xl:w-1/3 p-3">
                <!--Metric Card-->
                <div class="bg-white border rounded shadow p-2">
                    <div class="flex flex-row items-center">
                    <div class="flex-shrink pr-4">
                            <div class="rounded p-3 bg-hh-gray-dark"><i class="fas fa-user fa-2x fa-fw fa-inverse"></i></div>
                        </div>
                        <div class="flex-1 text-right md:text-center">
                            <h5 class="font-bold uppercase text-gray-500">Top User</h5>
                            <h3 class="font-bold text-xl"><?= $topUser[0]["user"] ?></h3>
                        </div>
                    </div>
                </div>
                <!--/Metric Card-->
            </div>
            </div>
            <div class="flex flex-wrap">
            <div class="w-full md:w-1/2 p-3">
                <!--Graph Card-->
                <div class="bg-white border rounded shadow">
                    <div class="border-b p-3">
                        <h5 class="font-bold uppercase text-gray-600">5 Brand Terlaku
                        </h5>
                    </div>
                    <div class="p-5">
                        <canvas id="chartjs-brand" class="chartjs" width="undefined" height="undefined"></canvas>
                    </div>
                </div>
                <!--/Graph Card-->
            </div>
            <div class="w-full md:w-1/2 p-3">
                <!--Graph Card-->
                <div class="bg-white border rounded shadow">
                    <div class="border-b p-3">
                        <h5 class="font-bold uppercase text-gray-600">
                            5 Instrument Terlaku</h5>
                    </div>
                    <div class="p-5">
                        <canvas id="chartjs-ins" class="chartjs" width="undefined" height="undefined"></canvas>
                    </div>
                </div>
                <!--/Graph Card-->
            </div>
            </div>
        </div>
        </div>
    </div>
    </div>
<script>
    loadBrandChart();
    loadInstrumentChart();

    function loadBrandChart() {
      $.ajax({
          type: "get",
          url: "./ajax/loadReport.php",
          data: {
              'brand' : 1
          }
      }).then(res=>{
            var brand = [];
            var sum = [];
            var data = JSON.parse(res);

            for(var count = 0; count < data.length; count++) {
                brand.push(data[count].brand);
                sum.push(data[count].sum);
            }

            new Chart($("#chartjs-brand"), {
                "type": "bar",
                "data": {
                    "labels": brand,
                    "datasets": [{
                        "label": "Brand",
                        "data": sum,
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
      });
    }

    function loadInstrumentChart() {
      $.ajax({
          type: "get",
          url: "./ajax/loadReport.php",
          data: {
              'instrument' : 1
          }
      }).then(res=>{
            var instrument = [];
            var sum = [];
            var data = JSON.parse(res);

            for(var count = 0; count < data.length; count++) {
                instrument.push(data[count].instrument);
                sum.push(data[count].sum);
            }

            new Chart($("#chartjs-ins"), {
                "type": "bar",
                "data": {
                    "labels": instrument,
                    "datasets": [{
                        "label": "Instrument",
                        "data": sum,
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
      });
    }

    
    function closeForm() {
      $("#formTrack").css('display','none');
    }
</script>
<?php
    require_once("./util/docClose.php")
?>