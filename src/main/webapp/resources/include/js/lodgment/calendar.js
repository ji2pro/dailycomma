$(function() {

	$('input[name="datefilter"]').daterangepicker({
		autoUpdateInput: false,
		locale: {
			cancelLabel: 'Clear'
		}
	});

	$('input[name="datefilter"]').on('apply.daterangepicker', function(ev, picker) {
		$(this).val(picker.startDate.format('YYYY/MM/DD') + ' - ' + picker.endDate.format('YYYY/MM/DD'));
	});

	$('input[name="datefilter"]').on('cancel.daterangepicker', function(ev, picker) {
		$(this).val('');
	});

	//드롭다운 선택표시
	$("#lodgType li a").click(function() {
		$("#dropdownMenu1:first-child").html(
			$(this).text() + ' <span class="caret"></span>');
		}
	);
	$("#loc li a").click(function() {
		$("#dropdownMenu2:first-child").html(
			$(this).text() + ' <span class="caret"></span>');
		}
	);
});