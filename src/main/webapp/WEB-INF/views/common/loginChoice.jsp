<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">	
<link href="https://fonts.googleapis.com/css?family=Gaegu|Rancho" rel="stylesheet">

<title>로그인</title>
<style>
.centered {
	display: table;
	margin-left: auto;
	margin-right: auto;
	width: 400px;
}
.btnChoice {
	width: 190px;
	height: 100px;
	padding: 25px;
	margin: 0px;
	display: inline-block;
	color: black;
	border: 2px solid lightgrey;  
	cursor: pointer;
}
.btnChoice:hover {
	background-color: #F5F5F5;
	color: #FF6347;
}
</style>
</head>
<body>
	<div class="container py-5">
		<div class="centered">
			<div class="text-center py-3">
				<h2>로그인</h2>
			</div>
			
			<div class="text-center py-3">
				<a class="btnChoice text-center" href="hostLoginForm.do">업주 회원<br>Owner</a>
				<a class="btnChoice text-center" href="memberLoginForm.do">일반 회원<br>Member</a>
			</div>
		
			<div class="text-center">
				<button type="button" class="btn btn-primary btn-block btn-dark" 
					onclick="window.history.back()">취소</button>
			</div>
		</div>
	</div>
</body>
</html>