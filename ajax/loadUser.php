<?php
    require_once("../util/connection.php");

    if (isset($_GET["statusBaru"]) && isset($_GET["email"])) {
      updateStatusUser($_GET["statusBaru"], $_GET["email"]);
    }

    $user = selectUser();

    if(isset($_GET["search"])){
      $user = selectUserLike($_GET["search"]);
    }
?>

<?php foreach($user as $x) :?>
  <tr>
  <td class="pl-6 py-4 whitespace-nowrap">
    <div class="flex items-center">
      <div class="">
        <div class="text-sm font-medium text-gray-900">
          <?= $x["name"] ?>
        </div>
        <div class="text-sm text-gray-500">
          <?= $x["email"] ?>
        </div>
        <div class="text-sm text-gray-500">
          <?= $x["username"] ?>
        </div>
      </div>
    </div>
  </td>
  <td class="pl-6 py-4 whitespace-nowrap">
    <div class="text-sm text-gray-500"><?= $x["password"] ?></div>
  </td>
  <td class="pl-6 py-4 whitespace-nowrap">
    <div class="text-sm text-gray-500"><?= $x["provinsi"] ?></div>
  </td>
  <td class="pl-6 py-4 whitespace-nowrap">
    <div class="text-sm text-gray-500"><?= $x["kota"] ?></div>
  </td>
  <td class="pl-6 py-4 whitespace-nowrap text-sm text-gray-500">
    <?= $x["birth_date"] ?>
  </td>
  <td class="pl-6 py-4 whitespace-nowrap text-sm text-gray-500">
    <?php
      if ($x["gender"] == 1) echo ("Male"); else echo("Female");
    ?>
  </td>
  <td class="pl-6 py-4">
    <?php
      if ($x["status"] == 1) {
    ?>
      <span class="text-sm rounded-full border-4 border-green-300 p-1.5 -mx-1.5">
        Active
      </span>
    <?php
      } else {
    ?>
      <span class="text-sm rounded-full border-4 border-red-300 p-1.5 -mx-1.5">
        Banned
      </span>
    <?php
      }
    ?>
  </td>
  <td>
    <button class="text-indigo-600 hover:text-indigo-900 p-2" onclick="edit('<?= $x['email'] ?>')">Edit</button>
    <button class="text-indigo-600 hover:text-indigo-900 p-2" onclick="gantiStatusUser('<?= $x['email'] ?>', '<?= $x['status'] ?>')"><?php
      if ($x["status"] == 1) echo ("Ban"); else echo("Unban");
    ?></button>
  </td>
</tr>
<?php endforeach; ?>
            