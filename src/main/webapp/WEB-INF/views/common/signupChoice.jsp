<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">	
<link href="https://fonts.googleapis.com/css?family=Gaegu|Rancho" rel="stylesheet">
<link href="<c:url value="/resources/include/css/user.css"/>" rel="stylesheet">

<div class="container py-5">
	<div class="centered">
		<div class="text-center py-3">
			<h2>회원가입</h2>
		</div>
		
		<div class="text-center py-3">
			<a class="btnChoice text-center" href="insertHostForm.do">업주 회원<br>Owner</a>
			<a class="btnChoice text-center" href="insertMemberForm.do">일반 회원<br>Member</a>
		</div>
		
		<div class="text-center">
			<button type="button" class="btn btn-primary btn-block btn-dark" 
				onclick="window.history.back()">취소</button>
		</div>
	</div>
</div>
