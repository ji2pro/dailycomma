<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>hostSignup.jsp</title>

<script src="./resources/include/js/lodgment/Address.js"></script>
<script src="http://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js?autoload=false"></script>
<link href="./resources/include/css/hostSignup.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div class="container py-5">
		<div class="text-center py-3">
			<h2>사장님 회원가입</h2>
		</div>
	
		<div class="lineset">
			<form action="insertHost.do">
		 		<div class="row">
	    			<div class="col-5">
			      		<label for="inputId">아이디</label>
			      		<input type="text" class="form-control" name="hostId" value="${lodgment.hostId}" placeholder="점주님 아이디">
			    	</div>
	    			<button type="button" class="btn">중복확인</button>
	    	   	
					<div class="col-5">
		      			<label for="inputEmail">이메일</label>
		      			<input type="text" class="form-control" name="hostEmail" value="${lodgment.hostEmail}"  placeholder="Email">
		    		</div>
	     		</div>
	    
	    		<div class="row">
		    		<div class="col-5">
		      			<label for="inputPW">비밀번호</label>
		      			<input type="text" class="form-control" name="hostPw" value="${lodgment.hostPw}">
		    		</div>
	    	
					<div class="col-5 pw-check">
			      		<label for="inputPWcheck">비밀번호 확인</label>
			      		<input type="password" class="form-control" id="inputPWcheck" placeholder="Password">
	    			</div>
	  	 		</div>
	  	 
			  	<div class="row">
			    	<div class="col-5">
			      		<label for="inputName">이름</label>
			      		<input type="text" class="form-control" name="hostName" value="${lodgment.hostName}" placeholder="이름"> 
			    	</div>
			    	
			    	 <div class="col-5 pw-check">
			      		<label for="inputPhone">연락처</label>
			      		<input type="text" class="form-control" name="hostPhone" value="${lodgment.hostPhone}" placeholder="연락처"> 
			    	</div>
			  	</div>
	  	
			  	<div class="row">
			  	  	<div class="col-8">
			    		<label for="inputAddress">주소</label>
			    		<input type="text" class="form-control" id="address" name="address" placeholder="도로명주소" value='${lodgment.address}' readonly="readonly">
			  	   	</div>	  	   
			  	 	<button type="button" class="btn" onclick="execDaumPostcode()">주소 검색</button>
			  	 	<!-- <input type="button" class="form-control" onclick="execDaumPostcode()" value="Post Search"><br>-->
			  	 	
			  	 	<div class="col-9">
			    		<label for="inputDetailAddress">상세주소</label>
			    		<input type="text" class="form-control" id="inputDetailAddress" placeholder="Daegu">
			  		</div>
		  	 	</div>
		  	 	
  	 	   		<div class="row">
  	 	   	 		<div class="col-9">
  	 	   				<label for="inputBusiness">사업자번호</label>
	    				<input type="text" class="form-control" name="businessNo" placeholder="1234567">
  	 	   	 		</div>
				</div>
	   
				<input type="hidden" id="location" name="location" value="daegu">
  	   
				<div class="text-center">
					<button type="submit" class="btn">가입요청</button>
					<button type="submit" class="btn">취소</button>
				</div>
			</form>
		</div>	
	</div>
</body>
</html>