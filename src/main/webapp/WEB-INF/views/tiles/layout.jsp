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
    <link href="<c:url value="/resources/include/css/jquery-ui.theme.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/include/css/common.css"/>" rel="stylesheet" type="text/css" /> 
    <link href="<c:url value="/resources/include/css/main.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/include/css/reservation.css"/>" rel="stylesheet" type="text/css" />
	<!-- 현재 시간 자바스크립트 파일 -->
    <script src="<c:url value="/resources/include/js/clock.js"/>"></script>
    <!-- Masonry(그리드 레이아웃 라이브러리) -->
	<script src="<c:url value="/webjars/masonry/4.2.0/masonry.pkgd.min.js"/>"></script>
	
	<!-- 달력 cdn -->
	<script src="<c:url value="/webjars/jquery-ui/1.12.1/jquery-ui.min.js"/>"></script>
	<link rel="stylesheet" href="<c:url value="/webjars/jquery-ui/1.12.1/jquery-ui.min.css"/>">
	
	<!-- 쿠키 -->
	<script> var absolutePath = "<c:url value='/'/>"</script>
	<script src="<c:url value="/resources/include/js/common/Cookie.js"/>"></script>
</head>
<body>
	<%-- 			<tiles:insertAttribute name="header" /> --%>
	<nav class="navbar fixed-top navbar-expand-lg navbar-light">
	    <a class="navbar-brand" href="<c:url value="/"/>">Daily Comma</a>
	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="#navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="navbar-toggler-icon"></span>
	    </button>
	
	    <div class="collapse navbar-collapse" id="navbarCollapse">

	        <ul class="navbar-nav ml-auto">
                <c:if test="${sessionScope.type == 'member' }">
                    <li class="nav-item nav-link navUser">${sessionScope.login.memberNick}님</li>
                </c:if>

                <c:if test="${sessionScope.type == 'host' }">
                    <li class="nav-item nav-link navUser">${sessionScope.login.hostName} 사장님</li>
                </c:if>

                <c:if test="${sessionScope.type == 'admin' }">
					<li class="nav-item nav-link navUser">관리자님</li>
                </c:if>

            	<c:if test="${sessionScope.login eq null }">
					<li class="nav-item"><a class="nav-link" href="<c:url value="/signupChoice.do"/>">회원 가입</a></li>
            	</c:if>

                <c:if test="${sessionScope.admin ne null }">
					<li class="nav-item"><a class="nav-link" href="<c:url value="/admin"/>">관리자 페이지</a></li>
                </c:if>

                <c:if test="${sessionScope.login ne null }">
					<li class="nav-item"><a class="nav-link" href="<c:url value="/castListForm.do"/>">캐스트</a></li>
                </c:if>

            	<c:if test="${sessionScope.login ne null and sessionScope.type == 'member' and empty sessionScope.admin}">
					<li class="nav-item"><a class="nav-link" href="<c:url value="/registerCastForm.do"/>">캐스트 등록</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/myPage.do"/>">마이페이지</a></li>
            	</c:if>
				<c:if test="${sessionScope.login ne null and sessionScope.type == 'host'}">
                    <li class="nav-item"><a class="nav-link" href="<c:url value="/lodgmentList.do"/>">숙소 목록</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/registerLodgmentForm.do"/>">숙소 등록</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/insertRoomForm.do"/>">객실 등록</a></li>
            		<li class="nav-item"><a class="nav-link" href="<c:url value="/managementList.do"/>">업주 페이지</a></li>
            	</c:if>
       			<c:if test="${sessionScope.login eq null }">
	            	<!-- <li class="nav-item"><a class="nav-link" href="<c:url value="/loginChoice.do"/>">로그인</a></li>-->
	        		<li class="nav-item"><a class="nav-link" href="#" onclick="setCookie(30)">로그인</a></li>
	        	</c:if>
	        	<c:if test="${sessionScope.login ne null }">
	        		<li class="nav-item"><a class="nav-link" href="<c:url value="/memberLogout.do"/>">로그아웃</a></li>	        	
	    		</c:if>
	        </ul>
	    </div>
	</nav>
	
	<div id="wrapper">
		<tiles:insertAttribute name="content" />
	</div>
	
	<!-- footer 영역 -->
	<footer class="footer blue-purple-gradient">
		<!-- INFO -->
			<!-- <div class="site-info"> -->
			<h5>Contact Info</h5>  
			<p>Yedam Vocational Training Institute</p>
			
			<!-- BOX -->
			<a href="tel:+911234567890" style="margin-left: 25px; margin-right: 50px;"> 
				<!-- ICON -->
				<h5><i class="fa fa-phone"></i> Call us </h5>
				<!-- PARAGRAPH -->
				<p>053-421-2460</p>
			</a>
			
			<!-- BOX -->
			<a href="mailto:ask@yedam.ac" style="margin-left: 40px; margin-right: 30px;" class="site-box-row last"> 
				<!-- ICON -->
				<h5><i class="fa fa-envelope"></i> Email us</h5>
				<!-- Mail -->
				<p>ask@yedam.ac</p> 
			</a>
			
			<!-- BOX -->
			<a style="margin-left: 30px; margin-right: 10px;" class="site-box-row" target="_blank" href="http://maps.google.com/?q=Location,대구광역시 중구 상서동 22-2" >
				<!-- ICON -->
				<h5><i class="fa fa-map-marker"></i> Location</h5>
				<!-- ADDRESS -->
				<p>대구 중구 상서동 22-2</p> 
			</a> 
			                       
			<h2 id="clock"></h2> <!-- 현재시간 clock.js 파일 -->
	</footer>
	<%-- 			<tiles:insertAttribute name="footer" /> --%>
</body>
</html>