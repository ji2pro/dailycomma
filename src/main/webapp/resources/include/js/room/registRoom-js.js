/**
 * 
 */
    var sel_files = [];
    var filetag;
    var index=1;
    var count =0;
    $(document).ready(function() {
        filetag = "<input type='file' name='uploadFile' id='input_imgs"+ count +"'>"
        $('#filetag').html(filetag);
        $('input[type="file"]').on("change", handleImgsFileSelect);

        $('#add_more').click(function(){
            count =  $('input[type="file"]').length;
            console.log(count);
            filetag = "<input type='file' name='uploadFile' id='input_imgs"+ count + "'>";
            $('#filetag').append(filetag);    
            $('input[type="file"]').on("change", handleImgsFileSelect);
        });
        //$('#input_imgs'+count).on("change", handleImgsFileSelect);    
        
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
                       // $('#input_imgs'+(count)).hide();                       
                                               
                        $(".imgs_wrap").append(img_html);
                                             
                    }
                    reader.readAsDataURL(f);
                });
    }
