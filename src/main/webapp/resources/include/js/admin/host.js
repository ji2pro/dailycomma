/*
 * host.js
 */

$(function() {
	go_page(1);
});

//페이징 처리
function go_page(p) {
	console.log("p====="+p);
	var param;
	if(document.hostPagingForm) {
		document.hostPagingForm.page.value = p;
		param = $('#hostPagingForm').serialize();
	} else {
		param = {page: 1, sort: 'host_id'}
	}
	
    $.ajax({
        url:"./host.ajax",
        data :$('#hostPagingForm').serialize(),
        type: "GET",
        dataType: "json",
        success: callbackHost
   });
}
	
function sort(s) {
	document.hostPagingForm.sort.value = s;
	document.hostPagingForm.submit();
}

function callbackHost(datas){
	console.log(datas);
	var list = datas.list;
	var paging = datas.paging;
	var html="";
	
	$.each(list,function(idx,data){
		html += ('<tr class="text-center">'+
				 '<td scope="row">'+
				 '<label class="custom-control custom-checkbox">'+
				 '<input type="checkbox" name="_selected_" value="'+data.hostId+'" class="custom-control-input">'+
				 '<span class="custom-control-indicator"></span>'+
				 '</label>'+
				 '</td>'+
				 '<td>'+data.hostName+'</td>'+
				 '<td>'+data.hostId+'</td>'+
				 '<td>'+data.hostEmail+'</td>'+
				 '<td>'+data.hostPhone+'</td>'+
				 '<td>'+data.businessNo+'</td>'+
				 '<td>'+data.signupDate+'</td>'+
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
	
	$('#hostTbody').empty();
	$('#hostPaging').empty();
	
	$('#hostTbody').append(html);
	$('#hostPaging').append(page);
	
}