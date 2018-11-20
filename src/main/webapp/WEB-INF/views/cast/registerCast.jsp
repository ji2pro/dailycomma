<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CAST 등록</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/include/css/room/registRoom-css.css">
<script src="<%=request.getContextPath()%>/resources/include/js/room/registRoom-js.js"></script>
</head>

<style>
.imgs_wrap {
    width: 200px;
    height: 160px;
    display: inline;
}
</style>

<body>
	<div class="container">
		<div class="py-5 text-center">
			<h2>CAST 등록</h2>
		</div>
	</div>
	
	<div>		
	  <form action="insertTour.do" method="post" enctype="multipart/form-data">
		  <div class="row">
			<div class="col">
				<input type="text" name="tourTitle" class="form-control" placeholder="Cast제목"/>
			</div>
			<div class="col">
			  	<select class="custom-select" id="inputGroupSelect01" name="tourLocation">
				    <option value="C1"selected>서울</option>
				    <option value="C2">부산</option>
				    <option value="C3">강릉</option>
				    <option value="C4">대구</option>
				    <option value="C5">제주도</option>
 				 </select>
			</div>

		  </div>
			<div class="row">
				<div class="col">
					<div class="imgs_wrap">
						<!--<img src="" class="img-fluid" alt="Responsive image"> -->
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12" id="filetag"></div>
		   	</div>
		   	
		   <div class="row">
				<div class="col-md-8">
					<button type="button" class="btn btn-danger" id="add_more">추가하기</button>
				</div>
		   </div>

		   <div class="row">
				<div class="col-md-8">
					<button type="submit" class="btn btn-primary">등록하기</button>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<button type="button" class="btn btn-danger">취소</button>
				</div>
			</div>			
		 </form>
	   </div>
</body>
</html>