<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">	
<link href="https://fonts.googleapis.com/css?family=Gaegu|Rancho" rel="stylesheet">
<link href="<c:url value="/resources/include/css/user.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/include/js/user/user.js"/>"></script>

<div class="container">
	<div class="px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		<h1 class="display-5">로그인</h1>
		<p class="lead">
			회원 유형을 선택하세요.
		</p>
	</div>

	<div class="card-deck mb-3 text-center">
		<a class="card mb-4" href="hostLoginForm.do">
			<div class="card-body">
				<h3 class="card-title">
					업주 회원 로그인<br>
					<small class="text-muted">Owner</small>
				</h3>
			</div>
		</a>
		<a class="card mb-4" href="memberLoginForm.do">
			<div class="card-body">
				<h3 class="card-title">
					일반 회원 로그인<br>
					<small class="text-muted">Member</small>
				</h3>
			</div>
		</a>
		
	</div>
	<div class="text-center mb-5">
		<button type="button" class="btn btn-outline-dark btn-block btn-lg" onclick="window.history.back()">
			이전 페이지로 돌아가기
		</button>
	</div>
</div>