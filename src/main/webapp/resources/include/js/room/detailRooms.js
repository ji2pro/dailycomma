/*후기 목록 처리*/
function PostListResult(data) {
    console.log(data);
    var postList = "";

    $('.postList').remove();
    $.each(data,function(idx,item){	//forEach
        postList +=
            "<div class=\"postList\">"+
            "<li class=\"place-review__item\"></li>" +
        "<a role=\"button\" class=\"detail\" id="+item.postscriptNo+">"+
        "<div class=\"review-info\">"+
        "<div class=\"review-info__title\">"+
        "<span class=\"badge-rap\"><i class=\"badge-best\"><em>추천</em></i></span><strong>"+ item.postscriptTitle+"</strong></div>"+
        "<p class=\"review-info__content\">"+ item.postscriptContent+"</p>" +
        "<div class=\"review-userinfo\">"+
        "<span class=\"nicname\">"+item.memberNick+"</span><i class=\"bar\"></i>" +
        "<span class=\"roomtype\">"+item.roomName+"</span><i class=\"bar\"></i>" +
        "<span class=\"date\">"+item.postscriptDate+"</span>" +
        "</div>"+
        "<div class=\"place-review__score\">"+
        "<span class=\"score-rap\">";
        for(var i=0 ; i < 5 ; i++){
            if(item.grade > i){
                postList += "<i class='fas fa-star starColor' style=\"color:#ffeb00\"></i>";
            }
            else{
                postList += "<i class='far fa-star starColor' style=\"color:#ffeb00\"></i>";
            }
        }
        postList +=
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

    $.ajax({/*후기 등록 먼저 작업*/
        url: path + "/postscript",
        data: params,
        method : "post",
        error:function(data,status,msg){
            alert("상태값 :" + status + " Http에러메시지 :"+msg);
        },
        success:function(){
            $.ajax({/*후기 리스트 가져오기*/
                url:"/postscript/"+lodgmentNo,
                error:function(data,status,msg){
                    alert("상태값 :" + status + " Http에러메시지 :"+msg);
                },
                success:PostListResult
            })
        }
    })
}

$(function () {

    $(document).on('click','#insertStar',function () {

        var star = $(this).attr("class");
        console.log(star);
        if(star.substr(0,3)=="far"){//클릭한 i태그가 빈 별 이라면
            $(this).attr("class","fas fa-star");//선택한 부분을 별로 찍고
            console.log($(this).attr("class","fas fa-star"));
            $(this).prevAll().attr("class","fas fa-star");//선택한 부분 이전의 값을 내용이 찬 별로 찍어준다.
            console.log( $(this).prevAll().attr("class","fas fa-star"));
        }
        else{//클릭한 i태그가 빈 별이 아니라면
            $(this).nextAll().attr("class","far fa-star");//이후의 값을 빈별로 찍어준다.
            console.log($(this).nextAll().attr("class","far fa-star"));
        }

        var par = $(this).parent().children("i").index(this)+1;
        console.log("par = " + par);
        $('#grade').val(par);

   /*     if(starSpan == "to"){
            $("#total").val(par);
            textInput(par,starSpan);
        }else if(starSpan == "t"){
            $("#tasty").val(par);
            textInput(par,starSpan);
        }else if(starSpan == "p"){
            $("#price").val(par);
            textInput(par,starSpan);
        }else{
            $("#service").val(par);
            textInput(par,starSpan);
        }*/
    });

    /*후기 목록*/
    $(".postScript").on('click',function () {
        console.log($(this).attr('id'));
        var lodgmentNo = $(this).attr('id');

        $.ajax({
            url: path + "/postscript/"+lodgmentNo,
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
            url:path + "/postscriptForm/"+lodgmentNo,
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
            "<div style=\"width: 130px; height: 30px; display: inline-block; float:left\" id=\"to\">"+
            "<i class=\"far fa-star\" id=\"insertStar\" style=\"color:#FFD300\"></i>"+
            "<i class=\"far fa-star\" id=\"insertStar\" style=\"color:#FFD300\"></i>"+
            "<i class=\"far fa-star\" id=\"insertStar\" style=\"color:#FFD300\"></i>"+
            "<i class=\"far fa-star\" id=\"insertStar\" style=\"color:#FFD300\"></i>"+
            "<i class=\"far fa-star\" id=\"insertStar\" style=\"color:#FFD300\"></i>"+
            "</div>"+
            "</div>" +
            "<button type=\"button\" onclick=\"insertPostFormSubmit()\" name=\"button\" class=\"btn-gradation\" id=\"btnToJoinEnd\">등록" +
            "</button>" +
            "</div>" +
            "<input type=\"hidden\" name=\"lodgmentNo\" value=\""+lodgmentNo+"\">"+
            "<input type=\"hidden\" id=\"grade\" name=\"grade\" value=\"\">"+
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
            url: path + "/postDetail.do/"+postNo,
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

