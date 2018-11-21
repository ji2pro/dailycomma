<!-- manageController managementList.do로 연결 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link href="<c:url value="/resources/include/css/management/management.css" />" rel="stylesheet" type="text/css"> 
<script src="<c:url value="/resources/include/js/management/management.js" />"></script>
<!-- DataTables -->
<link rel="stylesheet" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>


<div class="contentMargin">
	<div class="titleAlign">
		<h1><b>예약관리</b></h1>
	</div>

	<form action="<c:url value="/deleteReserve.do"/>">
	
		<div class="btn-group">
			<button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				사장님 통계관리
			</button>  
			<div class="dropdown-menu">
				<a class="dropdown-item" href="<c:url value="/managementList.do"/>">예약자 리스트</a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="<c:url value="/stats.do"/>">통계관리</a>
                <%--<div class="dropdown-divider"></div>
                <a class="dropdown-item" href="<c:url value="/lodgmentList.do"/>">숙소목록</a>--%>
			</div>
		</div>


<!-- 		<p align="right">
			<button id="btnDelete" type="button" class="btn btn-primary">예약취소</button>
		</p> -->
		<table id="empList" style="font-size: 15px; "class="table table-striped table-bordered table-hover tableAlign" >
			
			<thead>
				<tr style="background : #ffaabb;">
					<th>이름</th>
					<th>이메일</th>
					<th>예약상태</th>
					<th>예약날짜</th>
					<th>예약인원</th>
					<th>예약객실</th>
					<th>예약가격</th>
					<th>체크인</th>
					<th>체크아웃</th>
					
				</tr>
			</thead>
		
			<tbody>
				<c:forEach items="${memberList}" var="member">
				<tr>
					<td>${member.memberName}</td>
					<td>${member.memberEmail}</td>
					<td>${member.reserveState}</td>
					<td>${member.reserveDate}</td>
					<td>${member.reservePeople}</td>
					<td>${member.roomName}</td> 
					<td><fmt:formatNumber value="${member.reservePrice}" pattern="#,###" />원</td>
					<td>${member.checkin}</td>
					<td>${member.checkout}</td>
			 					
				</tr>
				</c:forEach>
			</tbody>
		
		</table>

	</form>

</div>
