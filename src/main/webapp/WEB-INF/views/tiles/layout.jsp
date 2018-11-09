<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>데일리 콤마</title>
	<!-- favicon.ico -->
	<link rel="shortcut icon" href="<c:url value="/resources/favicon.ico"/>" type="image/x-icon" />
	<link rel="icon" href="<c:url value="/resources/favicon.ico"/>" type="image/x-icon" />
	<!-- jQuery 3.3.1 -->
	<script src="<c:url value="/webjars/jquery/3.3.1/dist/jquery.min.js"/>"></script>
	<!-- popper.js -->
	<script src="<c:url value="/webjars/popper.js/1.14.3/umd/popper.min.js"/>"></script>
	<!-- Bootstrap 4.1.3 -->
    <script src="<c:url value="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.1.3/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
    <!-- Font Awesome 4.7.0 -->
    <link href="<c:url value="/webjars/font-awesome/4.7.0/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css" />
    <!-- Custom Style -->
    <link href="<c:url value="/resources/include/css/common.css"/>" rel="stylesheet" type="text/css" /> 
    <link href="<c:url value="/resources/include/css/main.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/include/css/reservation.css"/>" rel="stylesheet" type="text/css" />
<%--     <link href="<%=request.getContextPath()%>/resources/include/css/admin.css" rel="stylesheet" type="text/css" /> --%>
	<!-- 현재 시간 자바스크립트 파일 -->
    <script src="<c:url value="/resources/include/js/clock.js"/>"></script>
    <!-- Masonry(그리드 레이아웃 라이브러리) --> 
	<script src="<c:url value="/webjars/masonry/4.2.0/masonry.pkgd.min.js"/>"></script>
	
</head>
<body>
	<%-- 			<tiles:insertAttribute name="header" /> --%>
	<nav class="navbar fixed-top navbar-expand-lg navbar-light">
	    <a class="navbar-brand" href="<c:url value="/"/>">Daily Comma</a>
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
	            <li class="nav-item"><a class="nav-link" href="<c:url value="/userChoice.do"/>">회원 가입</a></li>
	            <c:choose>
		            <c:when test="${sessionScope.memberLogin eq null }">
		            	<li class="nav-item"><a class="nav-link" href="<c:url value="/loginForm.do"/>">로그인</a></li>
		        	</c:when>
		        	<c:otherwise>
		        		<li class="nav-item"><a class="nav-link" href="<c:url value="/memberLogout.do"/>">로그아웃</a></li>	        	
		        	</c:otherwise>
	        	</c:choose>
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