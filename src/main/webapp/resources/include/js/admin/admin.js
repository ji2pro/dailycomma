/**
 * admin.js
 */

$(function() {
	/*
	* Ajax Tabs(탭 클릭할 때마다 페이지 출력하기)
	*/
	$('#adminTabs li a').on('click', function(e) {
		e.preventDefault()
		
		var loadurl = $(this).attr('href'),
	        target = $(this).attr('data-target');

	    $.get(loadurl, function(data) {
			$(target).html(data);
		});

		$(this).tab('show');
	});
	//기본 첫 페이지 출력(페이지 들어오면 보이도록.)
	$.get('member', function(data) {
		$('#memberAdmin').html(data);
	});
	$('#adminTabs li:first-child a').tab('show');
	
	/*
	* 테이블 체크박스(선택) 기능
	*/
	$('.tab-content').on('change', 'input[name=_selected_all_]', function() {
		$('input[name=_selected_]').prop('checked', this.checked);
	});
	
	var arr = $('input[name=_selected_]:checked').serializeArray().map(function(item) {
		return item.value
	})

});

	


function sort(s) {
	document.frm.sort.value = s;
	document.frm.submit();
}

