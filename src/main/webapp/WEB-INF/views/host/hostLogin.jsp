<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="<c:url value="/resources/include/css/user/user.css"/>" rel="stylesheet">

<div class="container py-5 mb-5" style="min-height: 600px;">
	<div class="px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		<h1 class="display-5">업주 로그인</h1>
	</div>

	<form class="form-signin" action="hostLogin.do" method="POST">
		<div class="row">
			<div class="col-md-12">
				<input type="text" name="hostId" class="form-control" placeholder="업주님 아이디"/>
				<input type="password" id="hostPw" name="hostPw" class="form-control" placeholder="업주님 패스워드"/>
			</div>
			<div class="col-md-12">
				<button type="submit" class="btn btn-primary btn-lg btn-block">로그인</button>
				<button type="button" class="btn btn-outline-danger btn-lg btn-block">취소</button>
			</div>
		</div>
	</form>
</div>
