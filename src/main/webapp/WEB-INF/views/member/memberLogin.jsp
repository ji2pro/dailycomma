<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberLogin.jsp</title>
<link rel="stylesheet" type="text/css" href="resources/include/css/memberSignup.css">
</head>

<body>
	<div class="container">
		<div class="py-5 text-center">
			<h2>로그인</h2>
		</div>
	</div>
	
	<div>		
	  <form class="form-signup" action="memberLogin.do" method="POST">
		  <div class="row">
			<div class="col-md-12">
				<input type="email"  name="memberEmail" class="form-control" value="이메일"/>
			</div>
			<div class="col-md-12">
				<input type="password" id="memberPw" name="memberPw" class="form-control" value="패스워드"/>
			</div>
			<div class="col-md-12">
				<button type="submit" class="btn btn-primary">로그인</button>
			</div>
			<div class="col-md-12">
				<button type="button" class="btn btn-danger">취소</button>
			</div>			
		  </div>
	   </form>
    </div>
	
</body>
</html>