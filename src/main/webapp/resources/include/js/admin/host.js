/*
 * host.js
 */


function checkHost(state,lodgmentNo){
	var link = "";
	if(state == 'approve'){
		if(confirm("승인하시겠습니까?") == false) return;
		link = "./approveHost.ajax"
	}else{
		if(confirm("승인거부하시겠습니까?") == false) return;
		link = "./unapproveHost.ajax"
	}	
	
	var p =$('input[name="page"]:hidden').val();
	
	$.ajax({
        url: link,
        data :{lodgmentNo : lodgmentNo},
        type: "GET",
        dataType: "json",
    	error: function(xhr, status, msg) {
			console.log('상태값 : ' + status + ', Http에러메시지 : ' + msg);
		},
		success: function(xhr) {
			console.log(xhr.result);
			alert('완료되었습니다.');
			
			go_page(p);
		}
   });
}

//페이징 처리
function go_page(p) {
/*	console.log("p====="+p);
	var param;
	if(document.hostPagingForm) {
		document.hostPagingForm.page.value = p;
		param = $('#hostPagingForm').serialize();
	} else {
		param = {page: 1, sort: 'host_id'}
	}*/
	$('input[name="page"]:hidden').val(p);
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
				 '<td>'+data.signupDate+'</td>');
					
		if(data.lodgmentState == 'B1')
			html += "<td>승인</td>";
		else if(data.lodgmentState == 'B2')
			html += "<td>미승인</td>";
		else
			html += "<td>대기</td>";
		
		html += '<td>'+
				'<div class="btn-group">';
		
		if(data.lodgmentState == 'B1'){
			html += '<button id="hostbtnDelete" class="btn btn-outline-danger btn-sm "'
				 +'onclick="checkHost(\'unapprove\',\''+data.lodgmentNo +'\')">승인취소</button>';
				 	
		}
		else if(data.lodgmentState == 'B2'){			
			html += '<button id="hostbtnEdit" class="btn btn-outline-success btn-sm "'
				 +'onclick="checkHost(\'approve\',\''+data.lodgmentNo +'\')">승인</button>';
		}
		else{
			html += '<button id="hostbtnEdit" class="btn btn-outline-success btn-sm "'
				 +'onclick="checkHost(\'approve\',\''+data.lodgmentNo +'\')">승인</button>'
				 + '<button id="hostbtnDelete" class="btn btn-outline-danger btn-sm "'
				 +'onclick="checkHost(\'unapprove\',\''+data.lodgmentNo +'\')">승인취소</button>';
		}
		html += '</div>'+'</td>'+'</tr>';
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

/*
 * 업주 삭제 이벤트
 */
$('body').off().on('click', '#btnDelete', function() {
	var hostId = $(this).closest('tr').find($('input[type=checkbox]')).val();
	var confirmHost = confirm(hostId + ' 업주를 정말 삭제하겠습니까?');
	var p =$('input[name="page"]:hidden').val();
	
	
	if(confirmHost) {
		$.ajax({
			url: 'host/' + hostId,
			type: 'DELETE',
			contentType: 'application/json; charset=utf-8',
			dataType: 'json',
			error: function(xhr, status, msg) {
				console.log('상태값 : ' + status + ', Http에러메시지 : ' + msg);
			},
			success: function(xhr) {
				console.log(xhr.result);
				alert(hostId + ' 업주가 삭제되었습니다.');
				
				go_page(p);
			}
		})
	}
})