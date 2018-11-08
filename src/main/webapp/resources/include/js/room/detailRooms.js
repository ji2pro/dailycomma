/*후기 목록 처리*/
function PostListResult(data) {
    console.log(data);
    var postList;
    $.each(data,function(idx,item){	//forEach
        postList +=
            "<div class=\"postList\">"+
            "<li class=\"place-review__item\"></li>" +
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
            "</a>"+
            "</div>";
    });
    $('.review-list').append(postList);
    $('#insertPostForm').remove();
    $('.review-post__insert-btn').show();

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

/*후기 등록 처리*/
function insertPostFormSubmit(){
    var params = $("#insertPostForm").serialize();
    var lodgmentNo = $(".review-post__insert-btn").attr('id');
    console.log(lodgmentNo);
    console.log(params);
   
    $.ajax({/*인설트 먼저 작업*/
            url:"/postscript",
            data: params,
            method : "post",
            error:function(data,status,msg){
            alert("상태값 :" + status + " Http에러메시지 :"+msg);
        },
        success:
            $.ajax({/*후기 리스트 가져오기*/
                url:"/postscript/"+lodgmentNo,
                error:function(data,status,msg){
                    alert("상태값 :" + status + " Http에러메시지 :"+msg);
                },
                success:PostListResult
            })        
    })
}

$(function () {

    /*후기 목록*/
    $(".postScript").on('click',function () {
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

    /*후기 등록 폼*/
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

    /*후기 등록 폼 처리*/
    function insertPostscriptForm(data) {
        console.log(data);
        var insertPost;
        var lodgmentNo = $(".review-post__insert-btn").attr('id');

        insertPost = "<form name=\"insertPostForm\" id=\"insertPostForm\" >" +
            "<div class=\"login-cont\">" +
            "<div class=\"inp-txt-member\">" +
            "<select name=\"roomNo\">";
        $.each(data, function (idx, item) {
            insertPost += "<option value=\"" + item.roomNo + "\" name=\"roomNo\">" + item.roomName + "</option>";
        });
        insertPost +=
            "</select>" +
            "<input type=\"text\" name=\"postscriptTitle\" id=\"postscriptTitle\" value=\"\" placeholder=\"제목을 입력 해주세요\">" +
            "</div>" +
            "<div class=\"inp-txt-member\">" +
            "<textarea rows=\"4\" name=\"postscriptContent\" id=\"postscriptContent\" cols=\"100\" placeholder=\"내용을 입력 해주세요.\"style=\"resize: none;\"/>" +
            "</div>" +
            "<button type=\"button\" onclick=\"insertPostFormSubmit()\" name=\"button\" class=\"btn-gradation\" id=\"btnToJoinEnd\">등록" +
            "</button>" +
            "</div>" +
            "<input type=\"hidden\" name=\"lodgmentNo\" value=\""+lodgmentNo+"\">"+
            "</form>";
        $('#insertPostFieldset').append(insertPost);
        $('.postList').remove();
        $('.review-post__insert-btn').hide();
    }

    /*후기 상세*/
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

    /*후기 상세에서 목록가기*/
    $(document).on('click', ".review-detail__list-btn" ,function () {
        console.log("test");
        $("#postResult").hide();
        $(".review-list").show();
    });
});

