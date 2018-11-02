<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" type="text/css" href="resources/include/css/Mypage.css">
</head>

<body>
	<div class="reta">
		최근 본 숙소
		<table class="table mt-3">
			<tbody class="lineset">
				<tr>
					<th>숙소이름</th>
					<th>객실종류</th>
					<th>가격</th>
				</tr>
				
		<c:forEach items="${country}" var="coun"> 
				<tr>
					<td>${coun.company}</td>
					<td>${coun.roomName}</td>
					<td>${coun.roomPrice}</td>
				</tr>
			</c:forEach> 	
			</tbody>
		</table>
	</div>
</body>
</html>