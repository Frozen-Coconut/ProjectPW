<?php
    require_once("../util/connection.php");

    if(isset($_GET["delete"])){
      deleteDiscount($_GET["delete"]);
    }

    if(isset($_GET["add"])){
      $nama = $_GET["nama"];
      $value = $_GET["value"];
      if ($nama != "" && $value != "") {
        if ($value > 100) {
          addNotice("Diskon tidak boleh melebihi 100 !");
        }
        else {
        $data = [
          "nama" => $nama,
          "value" => $value
        ];insertDiskon($data);}
      }
      else addNotice("Isi semua input !");

    }

    if(isset($_GET["edit"])){
      $id = $_GET["id"];
      $nama = $_GET["nama"];
      $value = $_GET["value"];
      if ($nama != "" && $value != "") {
        if ($value > 100) {
          addNotice("Diskon tidak boleh melebihi 100 !");
        }
        else {
        $data = [
          "nama" => $nama,
          "value" => $value
        ];updateDiscount($id,$data);}
      }
      else addNotice("Isi semua input !");

    }

    $discount = selectDiscount();
    if(isset($_GET["search"])){
      $discount = selectDiscountSearch($_GET["search"]);
    }
?>

<?php foreach($discount as $x) :?>
    <tr>
        <td class="px-4 py-4 whitespace-nowrap"><?= $x["id"] ?></td>
        <td class="pr-6 py-4 whitespace-nowrap">
          <div class="text-sm text-gray-500"><?= $x["name"] ?></div>
        </td>
        <td class="px-6 py-4 whitespace-nowrap">
          <div class="text-sm text-gray-500"><?= $x["value"] ?></div>
        </td>
        <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
        <button class="text-indigo-600 hover:text-indigo-900 p-2" onclick="editDiscount('<?= $x['id'] ?>')">Edit</button>
        <button class="text-indigo-600 hover:text-indigo-900 p-2" onclick="deleteDiscount('<?= $x['id'] ?>')">Hapus</button>
        </td>
    </tr>
<?php endforeach; ?>