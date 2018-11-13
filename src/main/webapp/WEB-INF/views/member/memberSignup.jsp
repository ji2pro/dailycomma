<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="resources/include/css/memberSignup.css" rel="stylesheet" type="text/css">

<div class="container py-5">
	<div class="text-center py-3">
		<h2>회원가입</h2>
	</div>

	<div>		
		<form class="form-signup" action="insertMember.do">
			<div class="row">
				<div class="col-md-12">
					<input type="email"  name="memberEmail" class="form-control" placeholder="이메일"/>
				</div>
				<div class="col-md-12">
					<input type="text" name="memberNick" class="form-control" placeholder="닉네임"/>
				</div>
				<div class="col-md-12">
					<input type="password" id="memberPw" name="memberPw" class="form-control" placeholder="패스워드"/>
				</div>
				<div class="col-md-12">
					<input type="password" id="pwcheck" class="form-control" placeholder="패스워드확인"/>
				</div>
				<div class="col-md-12">
					<input type="text" id="memberName" name="memberName" class="form-control" placeholder="이름"/>
				</div>
				<div class="col-md-12">
					<button type="submit" class="btn btn-primary">가입하기</button>
				</div>
				<div class="col-md-12">
					<button type="button" class="btn btn-danger">취소</button>
				</div>
			</div>
		</form>
	</div>
</div>
