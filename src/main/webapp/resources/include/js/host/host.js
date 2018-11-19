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