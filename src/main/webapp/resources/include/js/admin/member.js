/**
 * member.js
 */

$(function() {
	go_page(1);
});

//페이징 처리
function go_page(p) {
	console.log("p====="+p);
	var param ;
	if(document.frm) {
		document.frm.page.value = p;
		param = $('#frm').serialize();
	} else {
		param = {page: 1, sort: 'member_no'}
	}
	
    $.ajax({
        url:"./member.ajax"  ,
        data :$('#frm').serialize(),
        type: "GET",
        dataType: "json",
        success: callbackMember
   });
}
	
	//document.frm.submit();


function sort(s) {
	document.frm.sort.value = s;
	document.frm.submit();
}

function callbackMember(datas){
	console.log(datas);
	var list = datas.list;
	var paging = datas.paging;
	var html="";
	
	$.each(list,function(idx,data){
		html += ('<tr class="text-center">'+
				 '<td scope="row">'+
				 '<label class="custom-control custom-checkbox">'+
				 '<input type="checkbox" name="_selected_" value="'+data.memberNo+'" class="custom-control-input">'+
				 '<span class="custom-control-indicator"></span>'+
				 '</label>'+
				 '</td>'+
				 '<td>'+data.memberNo+'</td>'+
				 '<td>'+data.memberName+'</td>'+
				 '<td>'+data.memberNick+'</td>'+
				 '<td>'+data.memberEmail+'</td>'+
				 '<td>'+data.memberPoint+'</td>'+
				 '<td>'+data.signupDate+
//				 '<fmt:parseDate value="'+data.signupDate+'" var="signupDate_D" pattern="yyyy-MM-dd HH:mm:ss"/>'+
//				 '<fmt:formatDate value="'+data.signupDate_D+'" var="signupDate_FD" pattern="yyyy.MM.dd"/>'+
//				 data.signupDate_FD+
				 '</td>'+
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
	
	//$('#membertbody').html("");
	//$('#memberPaging').html("");

	$('#membertbody').empty();
	$('#memberPaging').empty();
	
	$('#membertbody').append(html);
	$('#memberPaging').append(page);
	
}