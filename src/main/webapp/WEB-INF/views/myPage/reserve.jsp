<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
$(function(){

})

function cancelReserve(reserveNo){
	if(confirm("정말로 취소하시겠습니까?") == false) return;
	
	$.ajax({
		url : "cancelReserve.ajax",
		data : {'reserveNo' : reserveNo},
		type : "GET",
		dataType : "json",
		error: function(xhr, status, msg) {
			console.log('상태값 : ' + status + ', Http에러메시지 : ' + msg);
		},
		success : callbackCancelRes			
	});		
}

function callbackCancelRes(datas){
	alert("취소가 완료되었습니다.");
	$('tbody').empty();
	var header =
	"<tr>"
	+"<th>예약번호</th>"
	+"<th>예약날짜</th>"
	+"<th>숙소명</th>"
	+"<th>객실명</th>"
	+"<th>이용기간</th>"
	+"<th>예약금액</th>"
	+"<th>예약상태</th>"
	+"<th>예약취소</th>"
	+"</tr>";
	$('tbody').append(header);
	
	$.each(datas, function(idx, res){
		var str = 
		"<tr>"			
		+"<td>"+ res.reserveNo +"</td>"
		+"<td>"+ res.reserveDate +"</td>"
		+"<td>"+ res.company +"</td>"
		+"<td>"+ res.roomName +"</td>"
		+"<td>"+ res.checkDate + "박"+ (res.checkDate+1) +"일</td>"
		+"<td>"+res.reservePrice+"</td>";
		
		if (res.reserveState == 'D1')
			str += "<td>예약중</td>";					
		else if (res.reserveState == 'D2')	
			str += "<td>예약만료</td>"; 
		else if (res.reserveState == 'D3')	
			str += "<td>예약취소</td>";
		
		if (res.reserveState == 'D1'){
			str += "<td><button type='button' class='btn btn-primary'"+ 
					"onclick='cancelReserve('"+res.reserveNo+"')'>취소</button></td>";
		}
		else{
			str += "<td>&nbsp;</td>";
		}
		
		str += "</tr>";
		$('tbody').append(str);		
	})
	
}
</script>
<div class="reta">
	예약내역 
	<table class="table mt-3">
		<tbody class="lineset">
			<tr>
				<th>예약번호</th>
				<th>예약날짜</th>
				<th>숙소명</th>
				<th>객실명</th>
				<th>이용기간</th>
				<th>예약금액</th>
				<th>예약상태</th>
				<th>예약취소</th>
			</tr>
		<c:forEach items="${reserve}" var="res">   
			<tr>
				<td>${res.reserveNo}</td>
				<td>${res.reserveDate}</td>
				<td>${res.company}</td>
				<td>${res.roomName}</td>
				<td>${res.checkDate}박${res.checkDate+1}일</td>
				<td>${res.reservePrice}</td>
				<td>
					<c:if test="${res.reserveState == 'D1'}">
						예약중					
					</c:if>
					<c:if test="${res.reserveState == 'D2'}">	
						예약만료 
					</c:if>
					<c:if test="${res.reserveState == 'D3'}">	
						예약취소 
					</c:if>
				</td>
				
				<td>
					<c:choose>
						<c:when test="${res.reserveState == 'D1'}">
							<button type="button" class="btn btn-primary" onclick="cancelReserve('${res.reserveNo}')">취소</button>
						</c:when>
						<c:otherwise>
							&nbsp;
						</c:otherwise>
					</c:choose>
				</td>				
				
			</tr>
		</c:forEach>   
		</tbody>
	</table>
</div>