<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="./resources/include/js/lodgment/Address.js"></script>
<script src="http://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js?autoload=false"></script>
<script src="/resources/include/js/host/host.js"></script>
<link href="<c:url value="/resources/include/css/user/user.css"/>" rel="stylesheet">


<script>

var path = "<c:url value='/'/>"
$(function(){
	$('.checkId').click(function(){
		var id = $('input[name="hostId"]:text').val()
		if(id.length < 4) {
			alert("아이디는 4글자 이상 입력해주세요");
			return;
		}
		
		$.ajax({
	           url: path + "checkHostId.do",
	           data : {"hostId" : id},
	           dataType: "json",
	           error: function (data, status, msg) {
	               //alert("상태값 :" + status + " Http에러메시지 :"+msg);
	           },
	           success: function(data){
	        	   if(data == true){
	        		   alert("사용가능한 아이디입니다.");
	           		   $('#signupBtn').attr('disabled',false);
	           		  
	        	   }
	        	   else alert("중복되는 아이디입니다.");
	           }
	    })
	});
	
	$('#hostId').change(function(){
		 $('#signupBtn').attr('disabled',true);
	});
});

</script>

<div class="container py-5 mb-5">
	<div class="px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		<h1 class="display-5">업주 회원 가입</h1>
		<p class="lead">
			데일리 콤마에 가입하시면 안정적인 수익이 기대됩니다!
		</p>
	</div>
	
	<form class="form-signup" action="insertHost.do" onsubmit="return checkz()">
		<div class="row">
			<div class="col">
				<div class="form-group row">
					<label for="hostId" class="col-md-3 col-form-label">아이디</label>
					<div class="col-md-7">
						<input type="text" class="form-control" name="hostId" id="hostId" placeholder="아이디를 입력하세요." value="${lodgment.hostId}" required>
						<div class="invalid-feedback">아이디는 필수 입력 사항입니다.</div>
					</div>
					<div class="col-md-2">
						<button type="button" class="btn btn-outline-dark checkId">중복 확인</button>					
					</div>
				</div>
				
				<div class="form-group row">
					<label for="hostEmail" class="col-md-3 col-form-label">이메일</label>
					<div class="col-md-9 mb-2">
						<input type="email" class="form-control" name="hostEmail" id="hostEmail" placeholder="이메일을 입력하세요." value="${lodgment.hostEmail}" required>
						<div class="invalid-feedback">이메일은 필수 입력 사항입니다.</div>
					</div>
				</div>
				
				<hr class="mb-4">
				
				<div class="form-group row">
					<label for="hostPw" class="col-md-3 col-form-label">비밀번호</label>
					<div class="col-md-9">
						<input type="password" class="form-control" name="hostPw" id="hostPw" value="${lodgment.hostPw}" placeholder="비밀번호">
						<div class="invalid-feedback">비밀번호는 필수 입력 사항입니다.</div>
					</div>
				</div>
				
				<div class="form-group row">
					<label for="inputPWcheck" class="col-md-3 col-form-label">비밀번호 확인</label>
					<div class="col-md-9 mb-2">
						<input type="password" class="form-control" id="inputPWcheck" placeholder="비밀번호 확인">
						<div class="invalid-feedback">비밀번호 확인은 필수 입력 사항입니다.</div>
					</div>
				</div>
				
				<hr class="mb-4">
				
				<div class="form-group row">
					<label for="hostName" class="col-md-3 col-form-label">이름</label>
					<div class="col-md-9">
						<input type="text" class="form-control" name="hostName" id="hostName" value="${lodgment.hostName}" placeholder="이름">
					</div>
				</div>
					
				<div class="form-group row">
					<label for="hostPhone" class="col-md-3 col-form-label">연락처</label>
					<div class="col-md-9">
						<input type="text" class="form-control" name="hostPhone" id="hostPhone" value="${lodgment.hostPhone}" placeholder="연락처">
					</div>
				</div>
				
				<div class="form-group row">
					<label for="address" class="col-md-3 col-form-label">주소</label>
					<div class="col-md-7">
						<input type="text" class="form-control" id="address" name="address" placeholder="도로명주소" value='${lodgment.address}' readonly="readonly">
						<div class="invalid-feedback">주소를 입력하세요.</div>
					</div>
					<div class="col-md-2">
						<button type="button" class="btn btn-outline-dark" onclick="execDaumPostcode()">주소 검색</button>					
					</div>
				</div>

				<div class="form-group row">
					<label for="inputDetailAddress" class="col-md-3 col-form-label">상세 주소</label>
					<div class="col-md-9">
						<input type="text" class="form-control" id="inputDetailAddress" placeholder="대구">
					</div>
				</div>
				
				<div class="form-group row">
					<label for="businessNo" class="col-md-3 col-form-label">사업자 번호</label>
					<div class="col-md-9 mb-2">
    					<input type="text" class="form-control" name="businessNo" id="businessNo" placeholder="1234567">
					</div>
				</div>
				
				<input type="hidden" id="location" name="location" value="daegu">

				<hr class="mb-4">
				
				<div class="form-group row">
					<div class="col-md-6">
						<button class="btn btn-primary btn-lg btn-block" id="signupBtn" type="submit" disabled="">가입 요청하기</button>
					</div>
					<div class="col-md-6">
						<button class="btn btn-outline-danger btn-lg btn-block" type="button" onclick="location.href=history.back()">취소하기</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>
