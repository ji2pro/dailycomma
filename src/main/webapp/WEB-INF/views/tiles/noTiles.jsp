<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>

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

<tiles:insertAttribute name="content"/>
