<?php

// This is just for very basic implementation reference, in production, you should validate the incoming requests and implement your backend more securely.
// Please refer to this docs for snap popup:
// https://docs.midtrans.com/en/snap/integration-guide?id=integration-steps-overview

namespace Midtrans;

require_once dirname(__FILE__) . './midtrans-php-master/Midtrans.php';
// Set Your server key
// can find in Merchant Portal -> Settings -> Access keys
Config::$serverKey = 'SB-Mid-server-9U6RzSWl0Qug_Vt7bMfxYtdf';
Config::$clientKey = 'SB-Mid-client-kfxIXT-JQg4B6pvZ';

// non-relevant function only used for demo/example purpose
printExampleWarningMessage();

// Uncomment for production environment
// Config::$isProduction = true;

// Enable sanitization
Config::$isSanitized = true;

// Enable 3D-Secure
Config::$is3ds = true;

// Uncomment for append and override notification URL
// Config::$appendNotifUrl = "https://example.com";
// Config::$overrideNotifUrl = "https://example.com";

require_once("./util/connection.php");



// // Optional
// $item1_details = array(
//     'id' => 'a1',
//     'price' => 18000,
//     'quantity' => 3,
//     'name' => "Apple"
// );

// // Optional
// $item2_details = array(
//     'id' => 'a2',
//     'price' => 20000,
//     'quantity' => 2,
//     'name' => "Orange"
// );

// // Optional
// $item_details = array ($item1_details, $item2_details);
$total = 0;
$item = $_SESSION["shoppingCart"];
foreach ($item as $key => $value) {
    $item_details[] = array(
        "id" => $value["name"],
        "name" => $value["name"],
        "price" => $value["price"],
        "quantity" => $value["qty"]
    );
    $total += intval($value["price"]) * intval($value["qty"]); 
}

// Required
$transaction_details = array(
    'order_id' => rand(),
    'gross_amount' => $total, // no decimal allowed for creditcard
);

$user = $_SESSION["loggedIn"];

// Optional
$billing_address = array(
    'first_name'    => $user["name"],
    'address'       => $_REQUEST["alamat"],
    'city'          => $user["kota"],
    // 'phone'         => "081122334455",
    'country_code'  => 'IDN'
);

// Optional
$shipping_address = array(
    'first_name'    => $user["name"],
    'address'       => $_REQUEST["alamat"],
    'city'          => $user["kota"],
    // 'phone'         => "081122334455",
    'country_code'  => 'IDN'
);

// Optional
$customer_details = array(
    'first_name'    => $user["name"],
    'email'         => $user["email"],
    // 'phone'         => "081122334455",
    'billing_address'  => $billing_address,
    'shipping_address' => $shipping_address
);

// Optional, remove this to display all available payment methods
$enable_payments = array('credit_card','cimb_clicks','mandiri_clickpay','echannel');

// Fill transaction details
$transaction = array(
    'enabled_payments' => $enable_payments,
    'transaction_details' => $transaction_details,
    'customer_details' => $customer_details,
    'item_details' => $item_details,
);

$data = array(
    "alamat" => $_REQUEST["alamat"],
    "email" => $user["email"],
    "total" => $total
);
foreach ($item as $key => $value) {
    $data["item"][] = array(
        "nama" => $value["name"],
        "qty" => $value["qty"]
    );
}

$_SESSION["transaction"] = $data;

$snap_token = '';
try {
    $snap_token = Snap::getSnapToken($transaction);
}
catch (\Exception $e) {
    echo $e->getMessage();
}

// echo "snapToken = ".$snap_token;

function printExampleWarningMessage() {
    if (strpos(Config::$serverKey, 'your ') != false ) {
        echo "<code>";
        echo "<h4>Please set your server key from sandbox</h4>";
        echo "In file: " . __FILE__;
        echo "<br>";
        echo "<br>";
        echo htmlspecialchars('Config::$serverKey = \'<your server key>\';');
        die();
    } 
}

?>

<!DOCTYPE html>
<html>
    <body>
        <!-- <button id="pay-button">Pay!</button>
        <pre><div id="result-json">JSON result will appear here after payment:<br></div></pre>  -->

        <!-- TODO: Remove ".sandbox" from script src URL for production environment. Also input your client key in "data-client-key" -->
        <script src="https://app.sandbox.midtrans.com/snap/snap.js" data-client-key="<?php echo Config::$clientKey;?>"></script>
        <script type="text/javascript">
            // document.getElementById('pay-button').onclick = function(){
            //     // SnapToken acquired from previous step
                snap.pay('<?php echo $snap_token?>', {
                    // Optional
                    onSuccess: function(result){
                        // /* You may add your own js here, this is just example */ document.getElementById('result-json').innerHTML += JSON.stringify(result, null, 2);
                        $.ajax({
                            type: "get",
                            url: "./ajax/insertTransaction.php",
                            data: {
                                
                            }
                        }).then(res=>{
                            window.location.assign("./index.php");
                        })
                    },
                    // // Optional
                    // onPending: function(result){
                    //     /* You may add your own js here, this is just example */ document.getElementById('result-json').innerHTML += JSON.stringify(result, null, 2);
                    // },
                    // Optional
                    onError: function(result){
                        // /* You may add your own js here, this is just example */ document.getElementById('result-json').innerHTML += JSON.stringify(result, null, 2);
                        window.location.assign("./checkout.php");
                    }
                });
            // };
        </script>
    </body>
</html>
