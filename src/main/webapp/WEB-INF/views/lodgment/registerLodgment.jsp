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
.custom-checkbox    {
	display : inline-block;
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
	       		 <input type="file" id="input_img" name="uploadFile" >
	    	</div>
        </div><br>
	  	 
	  	 <div class="row">
	    	<div class="col-8">
				<div class="custom-control custom-checkbox">
				  <input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck1" value="E1">
				  <label class="custom-control-label" for="customCheck1">주차가능</label>
				</div>
				<div class="custom-control custom-checkbox">		 
				  <input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck2" value="E2">
				  <label class="custom-control-label" for="customCheck2">파티룸</label>
				</div>  
				<div class="custom-control custom-checkbox">					  				
				  <input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck3" value="E3">
				  <label class="custom-control-label" for="customCheck3">24시간데스크</label>
				</div>
				<div class="custom-control custom-checkbox">				  
				  <input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck4" value="E4">
				  <label class="custom-control-label" for="customCheck4">객실내PC</label>
				</div>
				<div class="custom-control custom-checkbox">  
				  <input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck5" value="E5">
				  <label class="custom-control-label" for="customCheck5">객실금연</label>
				</div>
				<div class="custom-control custom-checkbox">  
  				  <input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck6" value="E6">
				  <label class="custom-control-label" for="customCheck6">비즈니스</label>
				</div>
				<div class="custom-control custom-checkbox">  
  				  <input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck7" value="E7">
				  <label class="custom-control-label" for="customCheck7">글램핑</label>
				</div>
				<div class="custom-control custom-checkbox">  
  				  <input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck8" value="E8">
				  <label class="custom-control-label" for="customCheck8">VOD</label>
				</div>
				<div class="custom-control custom-checkbox">  
  				  <input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck9" value="E9">
				  <label class="custom-control-label" for="customCheck9">와이파이</label>
				</div>
				<div class="custom-control custom-checkbox">  
  				  <input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck10" value="E10">
				  <label class="custom-control-label" for="customCheck10">식사가능</label>
				</div>
				<div class="custom-control custom-checkbox">  
  				  <input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck11" value="E11">
				  <label class="custom-control-label" for="customCheck11">레스토랑</label>
				</div>
				<div class="custom-control custom-checkbox">  
  				  <input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck12" value="E12">
				  <label class="custom-control-label" for="customCheck12">바베큐</label>
				</div>
				<div class="custom-control custom-checkbox">  
  				  <input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck13" value="E13">
				  <label class="custom-control-label" for="customCheck13">매점/편의점</label>
				</div>
				<div class="custom-control custom-checkbox">  
  				  <input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck14" value="E14">
				  <label class="custom-control-label" for="customCheck14">수영장</label>
				</div>
				<div class="custom-control custom-checkbox">  
  				  <input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck15" value="E15">
				  <label class="custom-control-label" for="customCheck15">주방</label>
				</div>
				<div class="custom-control custom-checkbox">  
  				  <input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck16" value="E16">
				  <label class="custom-control-label" for="customCheck16">커피숍</label>
				</div>
				<div class="custom-control custom-checkbox">  
  				  <input type="checkbox" name="checkBox" class="custom-control-input" id="customCheck17" value="E17">
				  <label class="custom-control-label" for="customCheck17">투어</label>
				</div>     
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