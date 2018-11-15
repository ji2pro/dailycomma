/*
 * tour.js
 */

$(function() {
	go_page(1);
});

//체크박스 삭제
$(document).ready(function(){
	
	$('#tourDeleteSelected').click(function(){
		var checkbox = [];
		$('input[name="_selected_"]:checked').each(function(){
			checkbox.push($(this).val());
		});
		
		var alldata = { "checkbox" : checkbox};
		
		if(checkbox.length == 0) {
			alert("선택 사항이 없습니다.");
			return;
		}
		
	    $.ajax({
	        url:"./deleteTours.ajax",
	        data : JSON.stringify(checkbox),
	        contentType: 'application/json; charset=utf-8',
	        type: "DELETE",
	        dataType: "json",
			error: function(xhr, status, msg) {
				console.log('상태값 : ' + status + ', Http에러메시지 : ' + msg);
			},
			success: function(xhr) {
				if(xhr.result == true)	alert('회원이 삭제되었습니다.');
				else alert("해당 회원이 없습니다.");
				
				var p = $('input[name="page"]:hidden').val();
				go_page(p);
			}	   
	    
	    });
	    
	});

});

//페이징 처리
function go_page(p) {

	$('input[name="page"]:hidden').val(p);	
	
    $.ajax({
        url:"./tour.ajax",
        data :$('#tourPagingForm').serialize(),
        type: "GET",
        dataType: "json",
        success: callbackTour
   });
}
	
function sort(s) {
	document.tourPagingForm.sort.value = s;
	document.tourPagingForm.submit();
}

function callbackTour(datas){
	console.log(datas);
	var list = datas.list;
	var paging = datas.paging;
	var html="";
	
	$.each(list,function(idx,data){
		html += ('<tr class="text-center">'+
				 '<td scope="row">'+
				 '<label class="custom-control custom-checkbox">'+
				 '<input type="checkbox" name="_selected_" value="'+data.tourId+'" class="custom-control-input">'+
				 '<span class="custom-control-indicator"></span>'+
				 '</label>'+
				 '</td>'+
				 '<td>'+data.tourId+'</td>'+
				 '<td>'+data.tourLocation+'</td>'+
				 '<td>'+data.tourTitle+'</td>'+
				 '<td>'+data.memberName+'</td>'+
				 '<td>'+data.tourDate+'</td>'+
				 '<td>'+data.tourState+'</td>'+
				 '<td>'+
				 '<div class="btn-group">'+
				 '<button id="btnEdit" class="btn btn-outline-success btn-sm">수정</button>'+
				 '<button id="btnDelete" class="btn btn-outline-danger btn-sm">삭제</button>'+
				 '</div>'+
				 '</td>'+
				 '</tr>');
	});
	
	
	var temp;
	var page = "<ul class='pagination justify-content-center'>" +
				"<li class='page-item'>이전";
	
	for(var i=paging.startPage; i<=paging.endPage; i++){
		if(i != paging.page){
			temp = "<li class='page-item'><a class='page-link' href='#' onclick='go_page("+i+")'>"+i+"</a>"
		}
		else{
			temp = "<li class='page-item active'><a class='page-link' href='#' onclick='go_page("+i+")'>"+i+"</a>"
		}
		page += temp;
	}
	
	page += "<li class='page-item'>다음";
	page += "</ul>";
	
	$('#tourTbody').empty();
	$('#tourPaging').empty();
	
	$('#tourTbody').append(html);
	$('#tourPaging').append(page);
}

/*
 * 관광 삭제 이벤트
 */
$('body').off().on('click', '#btnDelete', function() {
	var tourId = $(this).closest('tr').find($('input[type=checkbox]')).val();
	var confirmTour = confirm(tourId + ' 캐스트를 정말 삭제하겠습니까?');
	var p = $('input[name="page"]:hidden').val();
	if(confirmTour) {
		$.ajax({
			url: 'tour/' + tourId,
			type: 'DELETE',
			contentType: 'application/json; charset=utf-8',
			dataType: 'json',
			error: function(xhr, status, msg) {
				console.log('상태값 : ' + status + ', Http에러메시지 : ' + msg);
			},
			success: function(xhr) {
				console.log(xhr.result);
				alert(tourId + ' 캐스트가 삭제되었습니다.');
				go_page(p);
			}
		})
	}
})