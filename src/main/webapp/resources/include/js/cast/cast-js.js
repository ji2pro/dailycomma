/**
 * 
 */

var sel_files = [];
var filetag;
var count = 0;

$(document).ready(function() {
	
	var $grid = $('.grid').imagesLoaded( function() {
		 $grid.masonry({
		     itemSelector: '.grid-item',
		     percentPosition: true,
		     columnWidth: '.grid-sizer'
		  });
		 $('.grid').css("height","auto");
	 });	
	
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
							"<img class='img-fluid'alt='Responsive image' width='200px' src=\"" 
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

let isEnd = false;

$(function(){
  $(window).scroll(function(){
	  let $window = $(this);
	  let scrollTop = $window.scrollTop();
	  let windowHeight = $window.height();
      let documentHeight = $(document).height();
   
     if( scrollTop + windowHeight + 30 > documentHeight ){
    	 
    	 console.log("documentHeight:" + documentHeight + " | scrollTop:" +
                  scrollTop + " | windowHeight: " + windowHeight );
                          fetchList();
         }
     })
      fetchList();
})

let fetchList = function(){

         if(isEnd == true){
                  return;
         }
         // 방명록 리스트를 가져올 때 시작 번호
         // renderList 함수에서 html 코드를 보면 <li> 태그에 data-no 속성이 있는 것을 알 수 있다.
         // ajax에서는 data- 속성의 값을 가져오기 위해 data() 함수를 제공.

         let tourId = $(".grid-item").last().attr('id') || 0;
         
         $.ajax({
              url:"getCasts.do"  ,
              data : {'tourId' : tourId,
              		  'pageUnit' : 6},
              type: "GET",
              dataType: "json",
              success: callbackScroll
	
         });
}

function callbackScroll(data){
	
	let length = data.length;

    if( length < 4 ){
  	  isEnd = true;
    }
    
    $.each(data, function(index, tours){
             renderList(false, tours);
    })
}


let renderList = function(mode, tours){

    var tourImg = tours.tourImg.split(",");

    // 리스트 html을 정의
    let html =   "<div class='grid-item' id='"+tours.tourId+"'>" +
    			 "<div class='card' style='width: 23rem;'>" +
    		     "<img class='card-img-top' src='"+path+"resources/images/cast/"+tourImg[0]+"' alt='Card image cap'>" +
    		     "<div class='card-body'>"+
    		     "<h5 class='card-title'>"+tours.tourTitle+"</h5>"+
    		     "<a href='"+path+"detailCast/"+tours.tourId+"' class='btn btn-primary'>Go somewhere</a>"+
    		     "</div>"+
    		     "</div>"+
    		     "</div>";
    
    if( mode ){
         $(".grid").prepend(html);         
     }
     else{
         $(".grid").append(html);
     }
}
