<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="resources/include/css/user/memberSignup.css" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/include/css/user/user.css"/>" rel="stylesheet">

<div class="container py-5">
	<div class="px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		<h1 class="display-5">일반 회원 가입</h1>
		<p class="lead">
			데일리 콤마에 가입하셔서 편리한 숙박을 경험하세요!
		</p>
	</div>

	<div class="row">
		<div class="col">
			<form action="insertMember.do">
				<div class="form-group row">
					<label for="memberEmail" class="col-md-2 col-form-label">이메일</label>
					<div class="col-md-10">
						<input type="email" class="form-control" name="memberEmail" id="memberEmail" placeholder="이메일을 입력하세요." value="${lodgment.hostEmail}" required>
						<div class="invalid-feedback">이메일은 필수 입력 사항입니다.</div>
					</div>
				</div>
				
				<div class="form-group row">
					<label for="memberPw" class="col-md-2 col-form-label">비밀번호</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="memberPw" id="memberPw" placeholder="비밀번호">
						<div class="invalid-feedback">비밀번호는 필수 입력 사항입니다.</div>
					</div>
				</div>
				
				<div class="form-group row">
					<label for="pwcheck" class="col-md-2 col-form-label">비밀번호 확인</label>
					<div class="col-md-10 mb-2">
						<input type="password" class="form-control" id="pwcheck" placeholder="비밀번호 확인">
						<div class="invalid-feedback">비밀번호 확인은 필수 입력 사항입니다.</div>
					</div>
				</div>

				<hr class="mb-4">
								
				<div class="form-group row">
					<label for="memberName" class="col-md-2 col-form-label">이름</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="memberName" id="memberName" placeholder="회원님의 이름을 입력하세요.">
					</div>
				</div>
				
				<div class="form-group row">
					<label for="memberNick" class="col-md-2 col-form-label">닉네임</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="memberNick" id="memberNick" placeholder="회원님의 별명을 입력하세요.">
					</div>
				</div>
				
				<hr class="mb-4">
				
				<div class="form-group row">
					<div class="col-md-6">
						<button class="btn btn-primary btn-lg btn-block" type="submit">가입하기</button>
					</div>
					<div class="col-md-6">
						<button class="btn btn-outline-danger btn-lg btn-block" type="submit">취소하기</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>