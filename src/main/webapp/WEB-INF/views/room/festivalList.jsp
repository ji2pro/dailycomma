<%@page import="javax.naming.Context" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>apiTest.jsp</title>
    <link href="<c:url value="/resources/include/css/room/apiTest.css" />" rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources/include/css/room/bundle.css" />" rel="stylesheet" type="text/css">
    <script>
        var path = "<c:url value='/'/>";
        var areaCode = "${param.location}";
    </script>
    <script src="<c:url value="/resources/include/js/room/festivalList.js" />"></script>
</head>
<body>
<div class="sub-container" id="sub-container-type1">
    <div class="container-inner">
        <p class="location-lst">
            <span>하이라이트</span>
            <span class="active">축제&amp;행사</span>
        </p>
        <ul class="lst-type-card active">

        </ul>
    </div>
</div>
<div class="sub-detail-contents" id="sub-container">
    <div class="sub-detail-inner">
    </div>
</div>
</body>
</html>
