<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="<c:url value="/resources/include/css/user/user.css"/>" rel="stylesheet">

<div class="container py-5">
	<div class="px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		<h1 class="display-5">회원 로그인</h1>
	</div>

	<form class="form-signin" action="memberLogin.do" method="POST">
		<div class="row">
			<div class="col-md-12">
				<input type="email" name="memberEmail" class="form-control" placeholder="회원님 이메일"/>
				<input type="password" id="memberPw" name="memberPw" class="form-control" placeholder="회원님 패스워드"/>
			</div>
			<div class="col-md-12">
				<button type="submit" class="btn btn-primary btn-lg btn-block">로그인</button>
				<button type="button" class="btn btn-outline-danger btn-lg btn-block">취소</button>
			</div>
		</div>
	</form>
</div>
