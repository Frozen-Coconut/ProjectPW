<div class="hidden justify-between fixed w-1/3 bg-hh-orange-dark opacity-80 top-5 right-2 p-3 rounded-lg font-semibold" id="noticebox">
    <div class="cursor-pointer border-2 border-hh-black-light text-hh-black-light w-5 text-center h-5 rounded-full text leading-none" id="closenoticebox">X</div>
</div>

<script>

    $("#closenoticebox").click(function () {
        $("#noticebox").css('display','hidden');
    })
</script>