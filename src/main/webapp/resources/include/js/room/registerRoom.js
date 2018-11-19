/*
 * registRoom.js 
 */

var sel_files = [];
var filetag;
var count = 0;

$(function() {
	//filetag = "<input type='file' name='uploadFile' id='input_imgs"+ count +"'>"
    //$('#filetag').html(filetag);
    //$('input[type="file"]').on("change", handleImgsFileSelect);

    $('#add_more').click(function(){
        console.log(count);
        filetag = "<input type='file' name='uploadFile' id='input_imgs"+ count + "'>";
		$('#add_more').hide();
		$('#filetag').append(filetag);    
        $('input[type="file"]').on("change", handleImgsFileSelect);
	
	});    
});
    
function handleImgsFileSelect(e) {
	// sel_files = [];
	// $(".imgs_wrap").empty();
    
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);

	filesArr.forEach(function(f) {
		console.log(f);
		if (!f.type.match("image.*")) {
			alert("확장자는 이미지 확장자만 가능합니다.");
			return;
		}
		sel_files.push(f);

		var reader = new FileReader();
		reader.onload = function(e) {
			var img_html = 
				"<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("+count+")\" id=\"img_id_"+count+"\">" +
				"<img class='img-fluid' alt='Responsive image' src=\"" 
				+ e.target.result + "\"/>" + "</a>";
							
			$('#input_imgs'+(count)).hide();                       
			$(".imgs_wrap").append(img_html);
			count++;
		}
		reader.readAsDataURL(f);
		$('#add_more').show();
	});
}

function deleteImageAction(index) {
	console.log("index : "+index);
	console.log("sel length : "+sel_files.length);

	sel_files.splice(index, 1);

	var img_id = "#img_id_"+index;
	var input_id = "#input_imgs"+index;
	$(img_id).remove();
	$(input_id).remove(); 
}
