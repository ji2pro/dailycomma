<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/include/css/memberSignup-css.css">
</head>

<body>
	<div class="container">
		<div class="py-5 text-center">
			<h2>회원가입</h2>
		</div>
	</div>
	
	<div>		
	  <form class="form-signup" action="insertMember.do">
		  <div class="row">
			<div class="col-md-12">
				<input type="email"  name="memberEmail" class="form-control" value="이메일"/>
			</div>
			<div class="col-md-12">
				<input type="text" name="memberNick" class="form-control" value="닉네임"/>
			</div>
			<div class="col-md-12">
				<input type="password" id="memberPw" name="memberPw" class="form-control" value="패스워드"/>
			</div>
			<div class="col-md-12">
				<input type="password" id="pwcheck" class="form-control" value="패스워드확인"/>
			</div>
			<div class="col-md-12">
				<input type="text" id="memberName" name="memberName" class="form-control" value="이름"/>
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
	
</body>
</html>