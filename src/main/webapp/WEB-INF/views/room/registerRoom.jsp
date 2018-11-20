<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="<c:url value="/resources/include/css/host/host.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/include/js/room/registerRoom.js" />"></script>

<div class="container py-5">
	<div class="text-center mb-5">
		<h1 class="display-5">객실 등록</h1>
	</div>
	
	<form action="insertRoom.do" method="post" enctype="multipart/form-data">
		<div class="row">
			<div class="col">
				<input type="text" name="roomName" class="form-control" placeholder="객실 이름"/>
			</div>
			<div class="col">
				<input type="text" name="roomPrice" class="form-control" placeholder="가격"/>
			</div>
			<div class="col">
				<input type="number" name="roomCapa" class="form-control" min="1" max="30" placeholder="최대 인원"/>
			</div>
			<div class="col">
				<input type="number" id="roomQuantity" name="roomQuantity" min="1" max="30" class="form-control" placeholder="객실 수"/>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<div class="imgs_wrap">
				</div>
			</div>
		</div>
	
		<div class="col-md-12 row my-3" id="filetag"></div>
		<div class="row my-3">
			<div class="col-md-12">
				<button type="button" class="btn btn-outline-dark" id="add_more">사진 추가하기</button>
			</div>
		</div>
	  
		<div class="row">
			<div class="col-md-12">
				<textarea rows="10" name="roomInfo" style="width: 100%"></textarea>
			</div>
		</div> 
		<div class="row mt-3">
			<div class="col-md-6">
				<button type="submit" class="btn btn-lg btn-block btn-primary">등록하기</button>
			</div>
			<div class="col-md-6">
				<button type="button" class="btn btn-lg btn-block btn-danger">취소</button>
			</div>
		</div>
	</form>
</div>