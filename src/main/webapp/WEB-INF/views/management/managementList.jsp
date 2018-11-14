<!-- manageController managementList.do로 연결 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<link href="./resources/include/css/management.css" rel="stylesheet" type="text/css"> 
<script src="<%=request.getContextPath()%>/resources/include/js/management/management.js"></script>
<%-- <link href="<%=request.getContextPath()%>/resources/include/css/admin.css" rel="stylesheet" type="text/css" /> --%>

  	 

<title>예약관리 managementList.do</title>

</head>
<body>
<div class="contentMargin">
	<div class="titleAlign">
		<h1><b>예약관리</b></h1>
	</div>
	<br>

<form action="<c:url value="/deleteReserve.do"/>">
<p align="right">
	<button id="btnDelete" type="button" class="btn btn-primary">예약취소</button>
</p>
<table id="empList" style="font-size: 15px; "class="table table-striped table-bordered table-hover tableAlign" >
	
	<thead>
		<tr style="background : #ffaabb;">
			<th>선택</th>
			<th>이름</th>
			<th>이메일</th>
			<th>연락처</th>
			<th>예약상태</th>
			<th>예약날짜</th>
			<th>예약인원</th>
			<th>예약객실</th>
			<th>예약가격</th>
			<th>체크인</th>
			<th>체크아웃</th>
			<th>일수</th>
			<th>상태변경일</th>
		</tr>
	</thead>

	
		<tbody>
		
			<c:forEach items="${memberList}" var="member">
				<tr>
					<td><input type="checkbox" name="reserveNo" value="${member.reserveNo}"></td>
					<td>${member.memberName}</td>
					<td>${member.memberEmail}</td>
					<td>(연락처)</td>
					<td>${member.reserveState}</td>
					<td>${member.reserveDate}</td>
					<td>${member.reservePeople}</td>
					<td>${member.roomName}</td>
					<td>${member.reservePrice}</td>
					<td>${member.checkin}</td>
					<td>${member.checkout}</td>
			 		<td>(일수)<%-- ${member.reserveDays} --%></td>  
					<td>(상태변경일)</td>				
				</tr>
			</c:forEach>
		
		</tbody>
	
</table>
</form>

</div>
</body>
</html>







 