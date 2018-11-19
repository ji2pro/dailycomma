/*
 * lodgment.js
 */

$(function() {
	$("input[type=checkbox]").prop("checked",false);
	
	createLodgmentDropdown();
	$('#LodgmentSearchBtn').click(function(){
		var txt = $('#inlineFormInputGroup').val();
		$('input[name="searchKeyword"]:hidden').val(txt);
		go_page(1);
	});
});

$(document).ready(function(){
	
	$('#lodgmentDeleteSelected').click(function(){

		var checkbox = [];
		$('input[name="_selected_"]:checked').each(function(){
			checkbox.push($(this).val());
		});
		
		if(checkbox.length == 0) {
			alert("선택 사항이 없습니다.");
			return;
		}
		
		if (confirm(checkbox.length +"건을 삭제하시겠습니까??") == false){
			return;
		}
		var alldata = { "checkbox" : checkbox};

		
	    $.ajax({
	        url:path+"deleteLodgments.ajax",
	        data : JSON.stringify(checkbox),
	        contentType: 'application/json; charset=utf-8',
	        type: "DELETE",
	        dataType: "json",
			error: function(xhr, status, msg) {
				console.log('상태값 : ' + status + ', Http에러메시지 : ' + msg);
			},
			success: function(xhr) {
				if(xhr.result == true)	alert(checkbox.length+ '건이 삭제되었습니다.');
				else alert("해당 건수가 없습니다.");
				
				var p = $('input[name="page"]:hidden').val();
				go_page(p);
			}	   
	    
	    });
	    
	});

});

function createLodgmentDropdown(){
	$('.searchStandard').text("검색기준");
	$('.sortStandard').text("정렬기준");
	$('#sortdown').empty();
	var button = "<button type='button' class='dropdown-item' onclick='sortLodgment(\"C1\")'>서울</button>"
		+"<button type='button' class='dropdown-item' onclick='sortLodgment(\"C2\")'>부산</button>"
		+"<button type='button' class='dropdown-item' onclick='sortLodgment(\"C3\")'>광주</button>"
		+"<button type='button' class='dropdown-item' onclick='sortLodgment(\"C4\")'>대구</button>"
		+"<button type='button' class='dropdown-item' onclick='sortLodgment(\"C5\")'>제주도</button>";
			
		
	$('#sortdown').append(button);
	
	button = ""
	$('#searchdown').empty();
	button = "<button type='button' class='dropdown-item' onclick='searchLodgment(\"lodgmentNo\")'>업체번호</button>"
			+"<button type='button' class='dropdown-item' onclick='searchLodgment(\"company\")'>업체이름</button>";
	$('#searchdown').append(button);

	$('.searchBtn').attr("id","LodgmentSearchBtn");		
}

function searchLodgment(condition){
	$('input[name="searchCondition"]:hidden').val(condition);

	if(condition == 'lodgmentNo')
		$('.searchStandard').text('업체번호');
	else
		$('.searchStandard').text('업체이름');
}

function sortLodgment(state){
	$('input[name="location"]:hidden').val(state);
	if(state == 'C1')
		$('.sortStandard').text('서울');
	else if(state == 'C2')
		$('.sortStandard').text('부산');
	else if(state == 'C3')
		$('.sortStandard').text('광주');
	else if(state == 'C4')
		$('.sortStandard').text('대구');
	else
		$('.sortStandard').text('제주도');
	
	go_page(1);
}


//페이징 처리
function go_page(p) {

	$('input[name="page"]:hidden').val(p);
    $.ajax({
        url:path+"lodgment.ajax",
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
				 '<td>'+data.hostName+'</td>');
		
		if(data.location == 'C1')
			html += "<td>서울</td>";
		else if(data.location == 'C2')
			html += "<td>부산</td>";
		else if(data.location == 'C3')
			html += "<td>광주</td>";
		else if(data.location == 'C4')
			html += "<td>대구</td>";
		else
			html += "<td>제주도</td>";
		
		html += "</tr>";
		/*html +=  '<td>'+
				 '<div class="btn-group">'+
				 '<button id="btnEdit" class="btn btn-outline-success btn-sm">수정</button>'+
				 '<button id="btnDelete" class="btn btn-outline-danger btn-sm">삭제</button>'+
				 '</div>'+
				 '</td>'+
				 '</tr>';*/
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
			url: path+'lodgment/' + lodgmentNo,
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