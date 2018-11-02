<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>registerLodgment.jsp</title>

<script src="http://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js?autoload=false"></script>
<link href="./resources/include/css/hostSignup.css" rel="stylesheet" type="text/css">

<style>
.img_wrap {
    width: 200px;
    height: 200px;
  }
/*  .img_wrap img{
    max-width: 100%;
}  */
</style>

<script>
	$(document).ready(function(){
		$('#input_img').on("change",handleImgFileSelect)
	});

    function handleImgFileSelect(e){
        var files = e.target.files;
        var filesArr = Array.prototype.slice.call(files);
    
        filesArr.forEach(function(f){
            if(!f.type.match("image.*")){
                alert("이미지만 사용가능");
                return;
            }

            var reader = new FileReader();
            reader.onload = function(e){
                $('#img').attr("src",e.target.result);
            }
            reader.readAsDataURL(f);    
        });
    }
</script>
</head>
<body>
<div>
	<div class="container">
		<div class="py-5 text-center">
			<h2>숙박업체 등록</h2>
		</div>
	</div>
	
	<div class="lineset">
	<form action="registerLodgment.do" method="post" enctype="multipart/form-data">
	 <div>
		 <div class="row">
	    	<div class="col-5">
	      		<label for="inputId">숙박업체명</label>
	      		<input type="text" class="form-control" name="company" placeholder="코끼리하우스">
	    	</div>
	        	   	
	    	
	    	<div class="col-5">
	      		<label for="inputEmail">숙박업체 유형</label>
	      	  	<select class="custom-select" id="inputGroupSelect01" name="lodgmentType">
				    <option value="A1"selected>모텔</option>
				    <option value="A2">호텔</option>
				    <option value="A3">펜션</option>
				    <option value="A4">게스트하우스</option>
 				 </select>
	    	</div>
	     </div><br>
	     
	     <div class="row">
	     	<div class="col-5" >
	     		<div class="img_wrap">
                	<img id="img" class="img-fluid" />
	     		</div>
	     	</div>	     
	     </div>
	    
	    <div class="row">
	    	<div class="col-5">
	       		 <input type="file" id="input_img" name="uploadFile" value="${lodgment.hostPw}">
	    	</div>
        </div><br>
	  	 
	  	 <div class="row">
	    	<div class="col-5">
	      		<label for="inputName">업체정보</label>
	      		<input type="text" class="form-control" name="lodgmentInfo" value="${lodgment.hostName}" placeholder="조식제공, 비흡연구역"> 
	    	</div>
	     </div><br>
  	   
  	   <div class="text-center">
  	   	<button type="submit" class="btn btn-primary">등록요청</button>&nbsp&nbsp&nbsp
  	   	<button type="button" class="btn btn-danger">취소</button>  	   
 	   </div>
 	  </div> 
	</form>
	</div>	
</div>
</body>
</html>