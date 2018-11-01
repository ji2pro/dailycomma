<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- jQuery 3.3.1 -->
	<script src="<%=request.getContextPath()%>/webjars/jquery/3.3.1/dist/jquery.min.js"></script>
	<!-- Bootstrap 4.1.3 -->
    <script src="<%=request.getContextPath()%>/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link href="<%=request.getContextPath()%>/webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome 5.4.1 -->
    <link href="<%=request.getContextPath()%>/webjars/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Custom Style -->
    <link href="<%=request.getContextPath()%>/resources/include/css/common.css" rel="stylesheet" type="text/css" /> 
    <link href="<%=request.getContextPath()%>/resources/include/css/main.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/resources/include/css/reservation.css" rel="stylesheet" type="text/css" />
    <script src="<%=request.getContextPath()%>/resources/include/js/clock.js"></script> <!-- 현재시간 자바스크립트 파일 --> 
</head>
<body>
	<%-- 			<tiles:insertAttribute name="header" /> --%>
	<nav class="navbar fixed-top navbar-expand-lg navbar-light">
	    <a class="navbar-brand" href="getUsers.do">Daily Comma</a>
	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="navbar-toggler-icon"></span>
	    </button>
	
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	        <!-- <ul class="navbar-nav mr-auto">
	            <li class="nav-item"><a class="nav-link" href="#">내 주변</a></li>
	            <li class="nav-item"><a class="nav-link" href="#">숙소 검색</a></li>
	            <li class="nav-item"><a class="nav-link" href="#">캐스트</a></li>
	        </ul> -->
	        <ul class="navbar-nav ml-auto">
	            <!-- <li class="nav-item"><a class="nav-link" href="#">예약 내역</a></li> -->
	            <li class="nav-item"><a class="nav-link" href="insertHostForm.do">회원 가입</a></li>
	            <li class="nav-item"><a class="nav-link" href="login.do">로그인</a></li>
	        </ul>
	    </div>
	</nav>
	
	<div id="wrapper">
		<tiles:insertAttribute name="content" />
	</div>
	
	<footer>
		FOOTER<br>
		  손준우는 바보가 확실하다.<br> 
		  ${serverTime} <br>
		  <h2 id="clock"></h2> <!-- 현재시간 clock.js 파일 -->

		
<%-- 			<tiles:insertAttribute name="footer" /> --%>
	</footer>
</body>
</html>