/*
 * lodgment.js
 */

$(function() {
	go_page(1);
});

$(document).ready(function(){
	
	$('#lodgmentDeleteSelected').click(function(){
		console.log("============click")
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
	        url:"./deleteLodgments.ajax",
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
/*	console.log("p====="+p);
	var param;
	if(document.lodgmentPagingForm) {
		document.lodgmentPagingForm.page.value = p;
		param = $('#lodgmentPagingForm').serialize();
	} else {
		param = {page: 1, sort: 'lodgment_no'}
	}*/
	$('input[name="page"]:hidden').val(p);
    $.ajax({
        url:"./lodgment.ajax",
        data :$('#lodgmentPagingForm').serialize(),
        type: "GET",
        dataType: "json",
        success: callbackLodgment
   });
}
	
function sort(s) {
	document.lodgmentPagingForm.sort.value = s;
	document.lodgmentPagingForm.submit();
}

function callbackLodgment(datas){
	console.log(datas);
	var list = datas.list;
	var paging = datas.paging;
	var html="";
	
	$.each(list,function(idx,data){
		html += ('<tr class="text-center">'+
				 '<td scope="row">'+
				 '<label class="custom-control custom-checkbox">'+
				 '<input type="checkbox" name="_selected_" value="'+data.lodgmentNo+'" class="custom-control-input">'+
				 '<span class="custom-control-indicator"></span>'+
				 '</label>'+
				 '</td>'+
				 '<td>'+data.lodgmentNo+'</td>'+
//				 '<td><a id="selectedTr" href="rooms/'+data.lodgmentNo+'" data-target="#lodgmentAdmin">'+data.company+'</a></td>'+
				 '<td><a id="selectedTr" href="#" onclick="window.open(\'rooms/'+data.lodgmentNo+'\',\'lodgment\',\'width=1200, height=500\')">'+data.company+'</a></td>'+
				 '<td>'+data.lodgmentType+'</td>'+
				 '<td>'+data.roomCnt+'</td>'+
				 '<td>'+data.lodgmentInfo+'</td>'+
				 '<td>'+data.hostName+'</td>'+
				 '<td>'+data.location+'</td>'+
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
	
	$('#lodgmentTbody').empty();
	$('#lodgmentPaging').empty();
	
	$('#lodgmentTbody').append(html);
	$('#lodgmentPaging').append(page);
}

/*
 * 숙소 삭제 이벤트
 */
$('body').off().on('click', '#btnDelete', function() {
	var lodgmentNo = $(this).closest('tr').find($('input[type=checkbox]')).val();
	var confirmLodgment = confirm(lodgmentNo + ' 숙소를 정말 삭제하겠습니까?');
	var p = $('input[name="page"]:hidden').val();
	if(confirmLodgment) {
		$.ajax({
			url: 'lodgment/' + lodgmentNo,
			type: 'DELETE',
			contentType: 'application/json; charset=utf-8',
			dataType: 'json',
			error: function(xhr, status, msg) {
				console.log('상태값 : ' + status + ', Http에러메시지 : ' + msg);
			},
			success: function(xhr) {
				console.log(xhr.result);
				alert(lodgmentNo + ' 숙소가 삭제되었습니다.');
				go_page(p);
			}
		})
	}
})