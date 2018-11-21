/*
 * reservation.js
 */

$(function() {

	createReserveDropdown();
	$("input[type=checkbox]").prop("checked",false);
	$('#reserveSearchBtn').click(function(){
		var txt = $('#inlineFormInputGroup').val();
		$('input[name="searchKeyword"]:hidden').val(txt);
		go_page(1);
	});

});

//체크박스 삭제
$(document).ready(function(){
	
	$('#reserveDeleteSelected').click(function(){
		var checkbox = [];
		$('input[name="_selected_"]:checked').each(function(){
			checkbox.push($(this).val());
		});
		
		var alldata = { "checkbox" : checkbox};
		
		if(checkbox.length == 0) {
			alert("선택 사항이 없습니다.");
			return;
		}
		
		if (confirm(checkbox.length +"건을 삭제하시겠습니까??") == false){
			return;
		}
		
	    $.ajax({
	        url:path+"deleteReserves.ajax",
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


function createReserveDropdown(){
	$('.searchStandard').text("검색기준");
	$('.sortStandard').text("정렬기준");
	$('#sortdown').empty();
/*	var button = "<button type='button' class='dropdown-item' onclick='sortHost(\"B1\")'>승인</button>"
				+"<button type='button' class='dropdown-item' onclick='sortHost(\"B2\")'>미승인</button>"
				+"<button type='button' class='dropdown-item' onclick='sortHost(\"B3\")'>대기</button>";	
				
	$('#sortdown').append(button);*/
	
	var button="";
	
	$('#searchdown').empty();
	button = "<button type='button' class='dropdown-item' onclick='searchReserve(\"reserveNo\")'>예약번호</button>"
			+"<button type='button' class='dropdown-item' onclick='searchReserve(\"memberName\")'>이름</button>"
			+"<button type='button' class='dropdown-item' onclick='searchReserve(\"memberEmail\")'>이메일</button>";
	$('#searchdown').append(button);

	$('.searchBtn').attr("id","reserveSearchBtn");		
}

function searchReserve(condition){
	$('input[name="searchCondition"]:hidden').val(condition);
	
	if(condition == 'reserveNo')
		$('.searchStandard').text('예약번호');
	else if(condition == 'memberName')
		$('.searchStandard').text('이름');
	else
		$('.searchStandard').text('이메일');
}



//페이징 처리
function go_page(p) {
/*	console.log("p====="+p);
	var param;
	if(document.reservationPagingForm) {
		document.reservationPagingForm.page.value = p;
		param = $('#reservationPagingForm').serialize();
	} else {
		param = {page: 1, sort: 'reserve_no'}
	}*/
	
	$('input[name="page"]:hidden').val(p);
	
    $.ajax({
        url:path+"reservation.ajax",
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
		var differ = dateDiffer(data.checkin, data.checkout);
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
				 
				 '<td>'+dateFormat(data.reserveDate)+'</td>'+
				 
				 '<td>'+data.reservePeople+'</td>'+
				 '<td>'+data.reservePrice+'원</td>'+
				 '<td>'+data.reserveStateName+'</td>'+
				 '<td>'+dateFormat(data.checkin)+'</td>'+
				 '<td>'+dateFormat(data.checkout)+'</td>'+
				 
				 '<td>'+differ+'박'+(differ+1) +'일</td>'+
				 '</tr>'
				 );
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


function dateDiffer(checkin, checkout){
	
	//var today = new Date();  
	//var dateString = "2012-04-25";  
	var idx = checkin.indexOf(' ');
	checkin = checkin.substring(0,idx);
	idx = checkout.indexOf(' ');
	checkout =  checkout.substring(0,idx);
	
	var checkindate = checkin.split("-");  
	var checkoutdate = checkout.split("-");
	
	var checkinObj = new Date(checkindate[0], Number(checkindate[1])-1, checkindate[2]); 
	var checkoutObj = new Date(checkoutdate[0], Number(checkoutdate[1])-1, checkoutdate[2]);  
	  
	var betweenDay = (checkoutObj.getTime() - checkinObj.getTime())/1000/60/60/24;  
	  

	return betweenDay;
}

function dateFormat(d){
	var idx = d.indexOf(' ');
	d = d.substring(0,idx);
	
	var darray = d.split("-");
	
	//var dObj = new Date(darray[0], Number(darray[1])-1, darray[2]); 
	return d;
}
/*
 * 예약 내역 삭제 이벤트
 */
$('body').off().on('click', '#btnDelete', function() {
	var reserveNo = $(this).closest('tr').find($('input[type=checkbox]')).val();
	var confirmReservation = confirm(reserveNo + ' 예약 내역을 정말 삭제하겠습니까?');
	var p = $('input[name="page"]:hidden').val();
	if(confirmReservation) {
		$.ajax({
			url: path+'reservation/' + reserveNo,
			type: 'DELETE',
			contentType: 'application/json; charset=utf-8',
			dataType: 'json',
			error: function(xhr, status, msg) {
				console.log('상태값 : ' + status + ', Http에러메시지 : ' + msg);
			},
			success: function(xhr) {
				console.log(xhr.result);
				alert(reserveNo + ' 예약 내역이 삭제되었습니다.');
				go_page(p);
			}
		})
	}
})