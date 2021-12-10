<?php
    require_once("./util/connection.php");
    require_once("./util/docOpen.php");
    require_once("./util/navbar.php");
?>
<div class="container min-h-screen flex flex-col justify-evenly items-center mx-auto w-11/12">
    <div class="text-5xl w-full my-5">Order History</div>
    <div class="w-full h-min flex flex-col sm:flex-row items-start sm:items-center justify-end mb-4  ">
        Filter:
        <select id="filter" class="mx-2">
            <option value="0">All</option>
            <option value="1">Menunggu Konfirmasi</option>
            <option value="2">Dalam Perjalanan</option>
            <option value="3">Selesai</option>
        </select>
        Order:
        <select id="order" class="mx-2">
            <option value="0">Nomor</option>
            <option value="1">Total</option>
        </select>
        <div class="flex mt-5 sm:mt-0">
            <button class="rounded bg-hh-pink-light text-hh-black-light font-semibold p-2 px-5 mx-1 hover:bg-hh-pink-dark hover:text-white" onclick="resetFilter()">Reset</button>
            <button class="rounded bg-hh-orange-light text-hh-black-light font-semibold p-2 px-5 mx-1 hover:bg-hh-orange-dark hover:text-white" onclick="loadHistory()">Filter</button>
        </div>
    </div>
    <div class="w-full mb-5">
        <div class="table w-full rounded">
            <div class="table-row bg-hh-orange-dark">
                <div class="table-cell p-2">NO</div>
                <div class="sm:table-cell hidden p-2 w-7/12">ITEMS</div>
                <div class="table-cell p-2 w-2/12 ">STATUS</div>
                <div class="table-cell p-2 w-2/12">TOTAL</div>
                <div class="table-cell p-2 w-1/12">ACTION</div>
            </div>
            <div class="table-row-group" id="contents"></div>
        </div>
    </div>
</div>
<script>
    loadHistory();

    function loadHistory(){
        $.ajax({
            type: "post",
            url: "./ajax/loadOrderHistory.php",
            data: {
                "action":"fetch",
                "filter":getFilter()
            },
            success: function (response) {
                $("#contents").html(response);
            }
        });
    }

    $("#btnFilter").click(function(){ 
        loadHistory();
    });

    function getFilter(){
        let q = " ";
        if(parseInt($("#filter").val()) >0){
            q += "AND status="+$("#filter").val();
        }
        q += "ORDER BY ";
        if(parseInt($("#order").val()) == 0){
            q +="id";
        }
        else{
            q +="total";
        }
        return q;
    }

    function resetFilter(){
        $("#filter").val(0);
        $("#order").val(0);
        loadHistory();
    }

    function makeReview(transid){
        $.ajax({
            type: "post",
            url: "./ajax/loadOrderHistory.php",
            data: {
                "action":"review",
                "transid":transid
            },
            success: function (response) {
                window.location.assign("./review.php");
            }
        });
    }

    function viewDetail(transid){
        $.alert({
            content: function() {
                var self = this;
                return $.ajax({
                    title:"",
                    type: "post",
                    url: "./ajax/loadOrderHistory.php",
                    data: {
                        "action":"detail",
                        "transid":transid
                    }
                }).done(function(response){
                    self.setContent(response);
                    self.setTitle("Transaction Detail");
                });
            }
        })
    }

</script>
<?php
    require_once("./util/footer.php");
    require_once("./util/docClose.php");
?>