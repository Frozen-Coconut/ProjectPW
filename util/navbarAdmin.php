<div class="min-h-full">
  <nav class="bg-gray-800">
    <div class="max-w-7xl mx-auto px-2">
      <div class="flex items-center justify-between h-16">
        <div class="flex items-center flex-row">
          <div class="hidden md:block flex items-baseline space-x-4">
            <div class="flex items-baseline space-x-4">
              <a href="adminUser.php" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">User</a>
              <a href="adminItems.php" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Items</a>
              <a href="adminTransaction.php" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Transaction</a>
              <a href="adminReports.php" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Reports</a>
              <a href="adminDiscount.php" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Discount</a>
              <form action="index.php" method="post">
              <button name="logoutAdmin" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Logout</button>
              </form>
            </div>
          </div>
        </div>
    <div class="-mr-2 flex md:hidden">
          <button type="button" class="bg-gray-800 inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-white" aria-controls="mobile-menu" aria-expanded="false" onclick="mobileMenu()">
            <span class="sr-only">Open main menu</span>
            <svg class="block h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
            </svg>
            <svg class="hidden h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
            </svg>
          </button>
        </div>
      </div>
    </div>
    <div class="hidden md:hidden" id="mobile-menu"> 
      <div class="px-2 pt-2 pb-3 space-y-1 sm:px-3">
         <a href="adminUser.php" class="text-gray-300 hover:bg-gray-700 hover:text-white block px-3 py-2 rounded-md text-base font-medium">User</a> 
         <a href="adminItems.php" class="text-gray-300 hover:bg-gray-700 hover:text-white block px-3 py-2 rounded-md text-base font-medium">Items</a>    
         <a href="adminTransaction.php" class="text-gray-300 hover:bg-gray-700 hover:text-white block px-3 py-2 rounded-md text-base font-medium">Transaction</a>  
         <a href="adminReports.php" class="text-gray-300 hover:bg-gray-700 hover:text-white block px-3 py-2 rounded-md text-base font-medium">Reports</a>  
         <a href="adminDiscount.php" class="text-gray-300 hover:bg-gray-700 hover:text-white block px-3 py-2 rounded-md text-base font-medium">Discount</a>  
         <form action="index.php" method="post">
         <button name="logout" class="text-gray-300 hover:bg-gray-700 hover:text-white block px-3 py-2 rounded-md text-base font-medium">Logout</button>
         </form>
      </div>
    </div>

  </nav>
</div>

<script>
    function mobileMenu() {
        if ($("#mobile-menu").css("display") == 'none') $("#mobile-menu").css("display", "block");
        else $("#mobile-menu").css("display", "none");
    }
</script>
