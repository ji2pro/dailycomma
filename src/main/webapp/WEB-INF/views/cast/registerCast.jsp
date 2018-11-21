<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="<c:url value="/resources/include/css/host/host.css" />" rel="stylesheet" type="text/css">
<script src="<c:url value="/resources/include/js/room/registerRoom.js" />"></script>

<div class="container py-5" style="min-height: 600px;">
	<div class="text-center mb-5">
		<h1 class="display-5">캐스트 등록</h1>
	</div>
	
	<form action="insertTour.do" method="post" enctype="multipart/form-data">
		<div class="row">
			<div class="col">
				<input type="text" name="tourTitle" class="form-control" placeholder="캐스트 제목"/>
			</div>
			<div class="col">
			  	<select class="custom-select" id="inputGroupSelect01" name="tourLocation">
				    <option value="C1" selected>서울</option>
				    <option value="C2">부산</option>
				    <option value="C3">광주</option>
				    <option value="C4">대구</option>
				    <option value="C5">제주도</option>
 				 </select>
			</div>
		</div>
		
		<div class="row">
			<div class="col">
				<div class="imgs_wrap">
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12" id="filetag"></div>
	   	</div>
	   	
	   	<div class="row my-3">
			<div class="col-md-12">
				<button type="button" class="btn btn-outline-dark" id="add_more">사진 추가하기</button>
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
