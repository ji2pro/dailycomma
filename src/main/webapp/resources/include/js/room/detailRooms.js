$(function () {
    $(".postList").on('click',function () {
        console.log($(this).attr('id'));
        var lodgmentNo = $(this).attr('id');

        $.ajax({
            url:"/postscript/"+lodgmentNo,
/*            success :
                function(result) {
                    console.log(result);
                    $(".review-list").html(result).show();
                }*/
            error:function(data,status,msg){
                alert("상태값 :" + status + " Http에러메시지 :"+msg);
            },
            success:PostListResult
        })
    });

    //후기 목록 조회 응답
    function PostListResult(data) {
        console.log(data);
        var postList;
        $.each(data,function(idx,item){	//포문 돌림.
            postList +=  "<li class=\"place-review__item\"></li>" +
                    "<a role=\"button\" class=\"detail\" id="+item.postscriptNo+">"+
                    "<div class=\"review-info\">"+
                    "<div class=\"review-info__title\">"+
                    "<span class=\"badge-rap\"><i class=\"badge-best\"><em>추천</em></i></span><strong>일요일 가기 좋은곳</strong></div>"+
                    "<p class=\"review-info__content\">"+ item.postscriptContent+"</p>" +
                    "<div class=\"review-userinfo\">"+
                    "<span class=\"nicname\">"+item.memberNick+"</span><i class=\"bar\"></i>" +
                    "<span class=\"roomtype\">"+item.roomName+"</span><i class=\"bar\"></i>" +
                    "<span class=\"date\">2017.05.07</span>" +
                    "</div>"+
                    "<div class=\"place-review__score\">"+
                    "<span class=\"score-rap\">"+
                    "<i class=\"icon-staylist icon-staylist-score score10\"></i>"+
                    "<i class=\"icon-staylist icon-staylist-score score10\"></i>"+
                    "<i class=\"icon-staylist icon-staylist-score score10\"></i>"+
                    "<i class=\"icon-staylist icon-staylist-score score10\"></i>"+
                    "<i class=\"icon-staylist icon-staylist-score score10\"></i>"+
                    "</span>"+
                    "</div>"+
                    "</div>"+
                    "</a>";
            });
        $('.review-list').append(postList);
        //each
        /*   $(' <li class="place-review__item"></li>')
              .append($('<a role="button" class="detail" id="'+${item.postscriptNo}+'">')
              .append($('<div class="review-info">'))
              .append($('<div class="review-info__title">'))
              .append($('<td>').html(item.role))
              .append($('<td>').html('<button id=\'btnSelect\'>조회</button>'))
              .append($('<td>').html('<button id=\'btnDelete\'>삭제</button>'))
              .append($('<input type=\'hidden\' id=\'hidden_userId\'>').val(item.id))
              .appendTo('.review-list');*/	//appendTo 자식태그를 바디 태그에 붙인다.
         //.append(($('<a>').attr('id',item.postscriptNo).addClass('detail').attr('role','button')) 방식으로도 사용가능
    }
    $(".review-post__insert-btn").on('click',function () {
        console.log($(this).attr('id'));
        var lodgmentNo = $(this).attr('id');

        $.ajax({
            url:"/postscriptForm/"+lodgmentNo,
            type: 'GET',
            dataType: 'json',
            error:function(data,status,msg){
                alert("상태값 :" + status + " Http에러메시지 :"+msg);
            },
            success:insertPostscriptForm
        })
    });

    /*후기 등록 폼*/
    function insertPostscriptForm(data) {
        console.log(data);
        var insertPost;

        insertPost = "<div class=\"login-cont\">"+
                      "<div class=\"inp-txt-member\">"+
                      "<select>";
        $.each(data,function(idx,item) {
            insertPost += "<option value=\""+ item.roomNo+"\">"+item.roomName+"</option>";
        });
        insertPost +=
            "</select>"+
           "<input type=\"text\" name=\"email\" value=\"\" placeholder=\"제목을 입력 해주세요\">"+
            "</div>"+
            "<div class=\"inp-txt-member\">"+
            "<textarea rows=\"4\" cols=\"100\" placeholder=\"내용을 입력 해주세요.\"style=\"resize: none;\"></textarea>"+
            "</div>"+
            "<button type=\"submit\" name=\"button\" class=\"btn-gradation\" id=\"btnToJoinEnd\">다음"+
            "</button>"+
            "</div>";
        $('#insertPostFieldset').append(insertPost);
        $('.review-list').hide();
        $('.review-post__insert-btn').hide();
    }

    $(document).on('click',".detail",function () {
        console.log($(this).attr('id'));
        var postNo = $(this).attr('id');
        $.ajax({
            url:"/postDetail.do/"+postNo,
            success :
                function(result) {
                    $("#postResult").html(result).show();
                    $(".review-list").hide();
            }
        })
    });

    $(document).on('click', ".review-detail__list-btn" ,function () {
        console.log("test");
        $("#postResult").hide();
        $(".review-list").show();
    });
});

