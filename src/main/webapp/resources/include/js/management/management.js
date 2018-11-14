// 예약자 리스트 
$(document).ready(function(){
    $('#empList').DataTable({
        pageLength: 10,
        bPaginate: true, /* 페이징 처리 할것인가 */
        bLengthChange: true, /* true 하면 리스트 박스 추가 */
        lengthMenu : [ [ 5, 10, 30, -1 ], [ 5, 10, 30, "All" ] ],
        bAutoWidth: true,
        processing: true, /* 값을 가져올때 로딩 processing ui보여줌 */
        ordering: true, /* 항목 정렬 사용 */
        serverSide: false,
        searching: true
    });   

    $('#btnDelete').click(function(){
    	if (confirm("정말 삭제하시겠습니까??") == true){    //확인
    		var length =  $('input[name="reserveNo"]:checked').length;
    		if( length == 0){
    			alert("삭제할 데이터가 없습니다.")
    			return;
    		}    		
    		alert(length + "건이 삭제되었습니다.");
    		$('form').submit();  
    	}
     });
    
 });    

    

/*function callbackDelete(datas){
	
	$.each(data, function(idx, m){
				
	})
}
*/
      
      
      
       //* 체크박스 선택뒤 취소버튼 예약 삭제 이벤트 ... 연구중..
      
 /*      $('body').off().on('click', '#btnDelete', function() {
      	var memberNo = $(this).closest('tr').find($('input[type=checkbox]')).val();
      	
      	console.log(memberNo);
      	var confirmMember = confirm(reserveNo + ' 사용자를 정말 삭제하겠습니까?');
      	
      	if(confirmMember) {
      		$.ajax({
      			url: './deleteReserve.do',
      			data: $("form").serialize(), 
      			type: 'POST',
      			contentType: 'application/json; charset=utf-8',
      			dataType: 'json',
      			error: function(xhr, status, msg) {
      				console.log('상태값 : ' + status + ', Http에러메시지 : ' + msg);
      			},
      			success: function(xhr) {
      				console.log(xhr.result);
      				alert(memberNo + ' 회원이 삭제되었습니다.');
      				go_page(1);
      			}
      		})
      	}
      }) */
      