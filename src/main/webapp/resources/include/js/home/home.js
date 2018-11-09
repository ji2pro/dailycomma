//캘린더 
$(function () {
        $('#datetimepicker7').datetimepicker();
        $('#datetimepicker8').datetimepicker({
            useCurrent: false
        });
        $("#datetimepicker7").on("change.datetimepicker", function (e) {
            $('#datetimepicker8').datetimepicker('minDate', e.date);
        });
        $("#datetimepicker8").on("change.datetimepicker", function (e) {
            $('#datetimepicker7').datetimepicker('maxDate', e.date);
        });
 });


//드롭다운 선택표시
$(function() {
	$("#lodgType li a").click(
			function() {
				$("#dropdownMenu1:first-child").html(
						$(this).text() + ' <span class="caret"></span>');
			});
	$("#loc li a").click(
			function() {
				$("#dropdownMenu2:first-child").html(
						$(this).text() + ' <span class="caret"></span>');
			});
});