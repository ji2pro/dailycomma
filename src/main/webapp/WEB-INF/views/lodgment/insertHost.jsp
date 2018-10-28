<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- 다음 주소 API  -->
<script src="./resources/include/js/lodgment/Address.js"></script>
<script src="http://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js?autoload=false"></script>

<title>insertHost.jsp</title>
</head>
<body>
	<h3>사장놈 회원가입</h3>
	<form action="insertHost.do">
		id <input type="text" class="form-control" name="hostId" value="${lodgment.hostId}"><br>
		email <input type="text" class="form-control" name="hostEmail" value="${lodgment.hostEmail}"><br>
		비밀번호 <input type="text" class="form-control" name="hostPw" value="${lodgment.hostPw}"><br>
		핸드폰번호 <input type="text" class="form-control" name="hostPhone" value="${lodgment.hostPhone}"><br>
		숙박업체명 <input type="text" class="form-control" name="company" value="${lodgment.company}"><br>
		숙박업체 주소 <input type="text" class="form-control" id="address" name="address" placeholder="도로명주소" value='${lodgment.address}' class="form-control" readonly="readonly"><br> 
		<input type="button" onclick="execDaumPostcode()" value="Post Search"><br>
		사업자 번호 <input type="text" class="form-control" name="businessNo" value="${lodgment.businessNo}"><br>
		담당자 <input type="text" class="form-control" name="hostName" value="${lodgment.hostName}"><br>
		<input type="hidden" class="form-control" id="location" name="location" value="${lodgment.location}"><br>	
		

		<%-- 	role<select name="role">
			<c:forEach items="${roleMap}" var="temp">
				<option value="${temp.key}">${temp.value}</option>
			</c:forEach>
		</select><br> --%>
		<input type="submit" value="사장놈가입"/>
	</form>
</body>
</html>