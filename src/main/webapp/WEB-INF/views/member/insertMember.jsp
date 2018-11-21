<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertMember.jsp</title>
</head>
<body>
<h3>일반회원 가입</h3>
	<form action="insertMember.do" method="post">
		이메일 <input type="text" name="memberEmail" value="${member.memberEmail}"><br>
		닉네임 <input type="text" name="memberNick" value="${member.memberNick}"><br>
		이름 <input type="text" name="memberName" value="${member.memberName}"><br>
		비밀번호 <input type="text" name="memberPw" value="${member.memberPw}"><br>
		프로필 사진 <input type="text" name="memberImg" value="${member.memberImg}"><br>
		회원 소개 <input type="text" name="memberIntro" value="${member.memberIntro}"><br>
		<input type="submit" value="회원가입" />
	</form>
</body>
</html>