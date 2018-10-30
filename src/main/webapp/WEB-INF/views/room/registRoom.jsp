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

<style>
.imgs_wrap {
    width: 200px;
    height: 160px;
    display: inline;
}
</style>
<script>
var sel_files = [];
var filetag;
var index=1;

$(document).ready(function() {
	filetag = "<input type='file' name='uploadFile' id='input_imgs"+index +"'multiple/>"
	$('#filetag').html(filetag);
	$('#input_imgs' + index).on("change", handleImgsFileSelect);
});

function handleImgsFileSelect(e) {

   // sel_files = [];
   // $(".imgs_wrap").empty();
    
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);

   
	filesArr.forEach(function(f) {
                console.log(f);
                console.log(index);
                if (!f.type.match("image.*")) {
					alert("확장자는 이미지 확장자만 가능합니다.");
					return;
				}
				sel_files.push(f);

				var reader = new FileReader();
				reader.onload = function(e) {
                    var img_html = 
                            "<img class='img-fluid'alt='Responsive image' width='200px' src=\""
                            + e.target.result + "\"/>";
                    $('#filetag').children('#input_imgs'+index).hide();
                    index++;
                	filetag = "<input type='file' name='uploadFile' id='input_imgs"+ index+ "'multiple/>";                         
                    $(".imgs_wrap").append(img_html);
                    $('#filetag').append(filetag);
                  
                }
				reader.readAsDataURL(f);
			});
}
</script>

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
            </div>
            <div class="row">
			    <div class="col-md-12">
                    <div class="imgs_wrap">
                        <!--<img src="" class="img-fluid" alt="Responsive image"> -->
                    </div>
                </div>
            </div>

            <div class="col-md-12" id="filetag">
                <!--<input type="file" name="uploadFile" id="input_imgs" multiple/>-->
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