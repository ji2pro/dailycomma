<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- jQuery 3.3.1 -->
	<script src="./webjars/jquery/3.3.1/dist/jquery.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<!-- Bootstrap 4.1.3 -->
    <script src="./webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link href="./webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Custom Style -->
    <link href="./resources/include/css/common.css" rel="stylesheet" type="text/css" />
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
	            <li class="nav-item"><a class="nav-link" href="insertUserForm.do">회원 가입</a></li>
	            <li class="nav-item"><a class="nav-link" href="login.do">로그인</a></li>
	        </ul>
	    </div>
	</nav>
	<div id="wrapper">
		<div class="container-fluid">
			<tiles:insertAttribute name="content" />
		</div>
	</div>
	<footer>
		FOOTER
<%-- 			<tiles:insertAttribute name="footer" /> --%>
	</footer>
</body>
</html>