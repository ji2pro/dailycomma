<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="./resources/include/css/room/registRoom-css.css">
<script src="./resources/include/js/room/registRoom-js.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>
	<div class="container">
		<div class="py-5 text-center">
			<h2>객실등록</h2>
		</div>
	</div>
	
	<div>		
	  <form class="form-signup">
		  <div class="row">
			<div class="col">
				<input type="text" name="roomName" class="form-control" placeholder="객실이름"/>
			</div>
			<div class="col">
				<input type="text" name="roomPrice" class="form-control" placeholder="가격"/>
			</div>
			<div class="col">
				<input type="text" id="pw" name="roomQuantity" class="form-control" placeholder="객실수"/>
			</div>
			<div class="col">
				<input type="text" id="pwcheck" class="form-control" value="패스워드확인"/>
            </div>
            <div class="row">
			    <div class="col-md-12">
                    <div class="imgs_wrap">
                        <!--<img src="" class="img-fluid" alt="Responsive image"> -->
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <input type="file" id="input_imgs" multiple/>
			</div>
            
            <div class="col-md-12">
				<button type="btn" class="btn btn-primary">등록하기</button>
			</div>
			<div class="col-md-12">
				<button type="button" class="btn btn-danger">취소</button>
			</div>			
		  </div>
	   </form>
    </div>
	
</body>
</html>