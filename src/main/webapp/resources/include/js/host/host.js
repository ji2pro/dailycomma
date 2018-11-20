/*
 * host.js 
 */

$(function() {
	$('#input_img').on("change",handleImgFileSelect)
});

function handleImgFileSelect(e) {
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);
   
	filesArr.forEach(function(f) {
		if(!f.type.match("image.*")) {
			alert("이미지만 사용가능");
			return;
		}

		var reader = new FileReader();
		reader.onload = function(e) {
			$('#img').attr("src",e.target.result);
		}
		reader.readAsDataURL(f);    
	});
}


function checkz() {
    var getIntro = $("#intro").val().replace(/\s|/gi,'');
    var hobbyCheck = false;
    var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
    var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/);
    var getBusinessNo = RegExp(/^[0-9]/);
    var getName= RegExp(/^[가-힣]+$/);
    var fmt = RegExp(/^\d{6}[1234]\d{6}$/); //형식 설정
    var buf = new Array(13); //주민등록번호 배열


    //아이디 공백 확인
    if($('#hostId').val() == ""){
      alert("아이디 입력바람");
      $("#hostId").focus();
      return false;
    }

    //이름의 유효성 검사
    if(!getCheck.test($('#hostName').val())){
      alert("형식에 맞게 입력해주세요");
      $("#hostName").val("");
      $("#hostName").focus();
      return false;
    }

    //비밀번호
    if(!getCheck.test($("#hostPw").val())) {
    alert("형식에 맞춰서 PW를 입력해줘용");
    $("#hostPw").val("");
    $("#hostPw").focus();
    return false;
    }

    //아이디랑 비밀번호랑 같은지
    if ($("#hostId").val()==($("#hostPw").val())) {
    alert("비밀번호가 ID와 똑같으면 안!대!");
    $("#hostPw").val("");
    $("#hostPw").focus();
  }

    //비밀번호 똑같은지
    if($("#hostPw").val() != ($("#inputPWcheck").val())){ 
    alert("비밀번호가 틀렸네용.");
    $("#hostPw").val("");
    $("#inputPWcheck").val("");
    $("#hostPw").focus();
    return false;
   }

   //이메일 공백 확인
    if($("#hostEmail").val() == ""){
      alert("이메일을 입력해주세요");
      $("#hostEmail").focus();
      return false;
    }
         
    //이메일 유효성 검사
    if(!getMail.test($("#hostEmail").val())){
      alert("이메일형식에 맞게 입력해주세요")
      $("#hostEmail").val("");
      $("#hostEmail").focus();
      return false;
    }

    //이름 유효성
    if (!getName.test($("#hostName").val())) {
      alert("이름 똑띠 쓰세용");
      $("#hostName").val("");
      $("#hostName").focus();
      return false;
    }
    
    if(!getBusinessNo.test($('#businessNo').val())){
    	alert("숫자만 입력해주세요");
    	$("#businessNo").val();
    	$("#businessNo").focus();
    	return false;
    }
    
    if($("#businessNo").val() == ""){
        alert("사업자번호를 입력해주세요");
        $("#businessNo").focus();
        return false;
      }
    
    if($("#address").val() == ""){
        alert("주소를 입력해주세요");
        $("#address").focus();
        return false;
      }

  return true;
}