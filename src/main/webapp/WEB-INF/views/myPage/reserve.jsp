<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
			</tr>
		<c:forEach items="${reserve}" var="res">   
			<tr>
				<td>${res.reserveNo}</td>
				<td>${res.reserveDate}</td>
				<td>${res.company}</td>
				<td>${res.roomName}</td>
				<td>${res.checkDate-1}박${res.checkDate}일</td>
				<td>${res.reservePrice}</td>
			</tr>
		</c:forEach>   
		</tbody>
	</table>
</div>