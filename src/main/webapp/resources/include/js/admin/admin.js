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

//페이징 처리
function go_page(p) {
	document.frm.page.value = p;
		
    $.ajax({
        url:"./member"  ,
        data :$('#frm').serialize(),
        type: "GET",
        dataType: "json",
        success: callbackMember
   });
	
	//document.frm.submit();
}
function sort(s) {
	document.frm.sort.value = s;
	document.frm.submit();
}

function callbackMember(datas){
	console.log(datas);
	let html = "<tr class='text-center'>"+
			   "<td scope='row'>"+
			   "<label class='custom-control custom-checkbox'>"+
			   "<input type='checkbox' name='_selected_' value='"+datas.memberNo+"' class='custom-control-input'>"+
			   "<span class='custom-control-indicator'></span>"+
			   "</label>"+
			   "</td>"+
			   "<td>"+datas.memberNo+"</td>"+
			   "<td>"+datas.memberName+"</td>"+
			   "<td>"+datas.memberNick+"</td>"+
			   "<td>"+datas.memberEmail+"</td>"+
			   "<td>"+datas.memberPoint+"</td>"+
			   "<td>"+
			   "<fmt:parseDate value='"+datas.signupDate+"' var='signupDate_D' pattern='yyyy-MM-dd HH:mm:ss'/>"+
			   "<fmt:formatDate value='${signupDate_D}' var='signupDate_FD' pattern='yyyy.MM.dd'/>"+
			   "${signupDate_FD}"+
			   "</td>"+
			   "<td>"+
			   "<div class='btn-group'>"+
			   "<a href='#' class='btn btn-outline-success btn-sm'>수정</a>"+
			   "<a href='#' class='btn btn-outline-danger btn-sm'>삭제</a>"+
			   "</div>"+
			   "</td>"+
			   "</tr>";
	$('#membertbody').append(html);
}