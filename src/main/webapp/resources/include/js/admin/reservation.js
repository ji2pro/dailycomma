/*
 * reservation.js
 */

$(function() {
	go_page(1);
});

//페이징 처리
function go_page(p) {
	console.log("p====="+p);
	var param;
	if(document.reservationPagingForm) {
		document.reservationPagingForm.page.value = p;
		param = $('#reservationPagingForm').serialize();
	} else {
		param = {page: 1, sort: 'reserve_no'}
	}
	
    $.ajax({
        url:"./reservation.ajax",
        data :$('#reservationPagingForm').serialize(),
        type: "GET",
        dataType: "json",
        success: callbackReservation
   });
}
	
function sort(s) {
	document.reservationPagingForm.sort.value = s;
	document.reservationPagingForm.submit();
}

function callbackReservation(datas){
	console.log(datas);
	var list = datas.list;
	var paging = datas.paging;
	var html="";
	
	$.each(list,function(idx,data){
		html += ('<tr class="text-center">'+
				 '<td scope="row">'+
				 '<label class="custom-control custom-checkbox">'+
				 '<input type="checkbox" name="_selected_" value="'+data.reserveNo+'" class="custom-control-input">'+
				 '<span class="custom-control-indicator"></span>'+
				 '</label>'+
				 '</td>'+
				 '<td>'+data.reserveNo+'</td>'+
				 '<td>'+data.memberName+'</td>'+
				 '<td>'+data.memberEmail+'</td>'+
				 '<td>'+''+'</td>'+
				 '<td>'+data.reservePeople+'</td>'+
				 '<td>'+data.reservePrice+'원</td>'+
				 '<td>'+data.reserveState+'</td>'+
				 '<td>'+data.checkin+'</td>'+
				 '<td>'+data.checkout+'</td>'+
				 '<td>'+''+'</td>'+
				 '<td>'+''+'</td>'+
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
	
	$('#reservationTbody').empty();
	$('#reservationPaging').empty();
	
	$('#reservationTbody').append(html);
	$('#reservationPaging').append(page);
	
}