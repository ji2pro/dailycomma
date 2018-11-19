<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js?autoload=false"></script>
<link href="<c:url value="/resources/include/css/host/host.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/include/js/host/host.js"/>"></script>

<div class="container py-5" id="registerLodgmentWrapper">
	<div class="text-center mb-5">
		<h1 class="display-5">숙소 등록</h1>
	</div>
	
	<form action="registerLodgment.do" method="post" enctype="multipart/form-data" class="row">
		<div class="col-md-9 order-md-1">
			<h4 class="mb-3">업체 정보</h4>
			<div class="row">
				<div class="col-md-8">
		      		<label for="inputLodgmentName" class="py-2">숙박 업체명</label>
		      		<input type="text" id="inputLodgmentName" class="form-control" name="company" placeholder="코끼리 하우스">
		    	</div>
	
		    	<div class="col-md-4">
					<label for="inputLodgmentType" class="py-2">숙박 업체 유형</label>
					<select class="custom-select" id="inputLodgmentType" name="lodgmentType">
					    <option value="A1" selected>모텔</option>
					    <option value="A2">호텔</option>
					    <option value="A3">펜션</option>
						<option value="A4">게스트하우스</option>
	 				</select>
		    	</div>
			</div>
			
			<hr class="mb-4">
			<h4 class="mb-3">이미지 업로드</h4>
			<div class="img_wrap my-3">
     			<img id="img" class="img-fluid" />
			</div>

	    	<div class="col-md-12">
				<input type="file" id="input_img" name="uploadFile" class="form-control d-block custom-file-input">
				<label class="custom-file-label" for="input_img">이미지 파일을 선택하세요.</label>
	    	</div>
    	</div>

		<div class="col-md-3 order-md-2">
			<h4 class="mb-3">숙소 옵션 선택</h4>    	
			<div class="row">
				<div class="col-md-12 mb-5">
					<div class="custom-control custom-checkbox d-block">
						<input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck1" value="E1">
						<label class="custom-control-label" for="customCheck1">주차 가능</label>
					</div>
					<div class="custom-control custom-checkbox d-block">		 
						<input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck2" value="E2">
						<label class="custom-control-label" for="customCheck2">파티룸</label>
					</div>  
					<div class="custom-control custom-checkbox d-block">					  				
						<input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck3" value="E3">
						<label class="custom-control-label" for="customCheck3">24시간 데스크</label>
					</div>
					<div class="custom-control custom-checkbox d-block">				  
						<input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck4" value="E4">
						<label class="custom-control-label" for="customCheck4">객실 내 PC</label>
					</div>
					<div class="custom-control custom-checkbox d-block">  
						<input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck5" value="E5">
						<label class="custom-control-label" for="customCheck5">객실 금연</label>
					</div>
					<div class="custom-control custom-checkbox d-block">  
						<input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck6" value="E6">
						<label class="custom-control-label" for="customCheck6">비즈니스</label>
					</div>
					<div class="custom-control custom-checkbox d-block">  
						<input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck7" value="E7">
						<label class="custom-control-label" for="customCheck7">글램핑</label>
					</div>
					<div class="custom-control custom-checkbox d-block">  
						<input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck8" value="E8">
						<label class="custom-control-label" for="customCheck8">VOD</label>
					</div>
					<div class="custom-control custom-checkbox d-block">  
						<input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck9" value="E9">
						<label class="custom-control-label" for="customCheck9">와이파이</label>
					</div>
					<div class="custom-control custom-checkbox d-block">  
						<input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck10" value="E10">
						<label class="custom-control-label" for="customCheck10">식사 가능</label>
					</div>
					<div class="custom-control custom-checkbox d-block">  
						<input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck11" value="E11">
						<label class="custom-control-label" for="customCheck11">레스토랑</label>
					</div>
					<div class="custom-control custom-checkbox d-block">  
	  					<input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck12" value="E12">
						<label class="custom-control-label" for="customCheck12">바베큐</label>
					</div>
					<div class="custom-control custom-checkbox d-block">  
						<input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck13" value="E13">
						<label class="custom-control-label" for="customCheck13">매점/편의점</label>
					</div>
					<div class="custom-control custom-checkbox d-block">  
						<input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck14" value="E14">
						<label class="custom-control-label" for="customCheck14">수영장</label>
					</div>
					<div class="custom-control custom-checkbox d-block">  
						<input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck15" value="E15">
						<label class="custom-control-label" for="customCheck15">주방</label>
					</div>
					<div class="custom-control custom-checkbox d-block">  
						<input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck16" value="E16">
						<label class="custom-control-label" for="customCheck16">커피숍</label>
					</div>
					<div class="custom-control custom-checkbox d-block">  
						<input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck17" value="E17">
						<label class="custom-control-label" for="customCheck17">투어</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="text-center mt-4">
						<button type="submit" class="btn btn-primary mr-2">등록 요청</button>
						<button type="button" class="btn btn-danger">취소</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>	
