/*좋아요 처리*/
function likeOn(data) {
    $('.likey').find('span').attr("class", "a1");
    $('.bt_detail').find('span').attr("class", "a1");

    $('[name=jsonLikeCount]').text(data.totalLike);
}

function likeOff(data) {
    $('.likey').find('span').attr("class", "a0");
    $('.bt_detail').find('span').attr("class", "a0");

    $('[name=jsonLikeCount]').text(data.totalLike);
}

$(document).on('click', '.likey', function () {
    var tourId = $(this).attr('id');
    var liId = $(this).find('span').attr('class');

    if (liId == 'a0') {
        $.ajax({
            url: path + "detailCastInsert/" + tourId,
            dataType: "json",
            error: function (data, status, msg) {
                //alert("상태값 :" + status + " Http에러메시지 :"+msg);
            },
            success: likeOn
        })
    } else if (liId == 'a1') {
        $.ajax({
            url: path + "detailCastDelete/" + tourId,
            dataType: "json",
            error: function (data, status, msg) {
                //alert("상태값 :" + status + " Http에러메시지 :"+msg);
            },
            success: likeOff
        })
    }
})

/*캐스트 상세 덧글 처리*/
function detailCastPostList(data) {
    var html = "";

    $('.postContents').remove();

    $.each(data, function (idx, item) {
        html +=
            "<div class='con_post bord_b postContents'>" +
            "<div class='count'>" +
            "<span class='day'>" + item.commentDate + " " + item.cmemberNick + "</span>" +
            "<div class='content_post'>" +
            "<span style='color: #454545'>" + item.commentContent + "</span>" +
            "</div>" +
            "</div>" +
            "</div>";
    })
    $('.addPostList').append(html);
}

/*캐스트 상세 페이지 버튼*/
function detailCastPostPage(data) {

    $('.pagingButton').remove();

    var idx = data.totalPage;
    var html = "";
    localStorage.setItem("totalPage", idx);

    for (var i = 1; i <= idx; i++) {
        html += '<li class="page-item pagingButton pagingNo' + i + '"><a class="page-link" onclick="postContent(' + i + ')">' + i + '</a></li>';
    }
    $('.paging').after(html);
}

function Previous() {
    var page = localStorage.getItem("page");
    page = Number(page) - 1;

    if (page == 0)
        page = 1;

    return page;
}

function Next() {
    var page = localStorage.getItem("page");
    var totalPage = localStorage.getItem("totalPage");

    page = Number(page) + 1;

    if (page > totalPage)
        page = page - 1;

    return page;
}

/*덧글 리스트 호출*/
function postContent(paging) {
    var tourId = $('.likey').attr('id');

    $('.pagination').find('.active').removeClass('active');
    /*이전 active 클래스를 지운다*/
    $('.pagingNo' + paging).addClass('active');
    /*클릭하는 해당 태그에 클래스를 추가 한다.*/

    localStorage.setItem("page", paging);

    $.ajax({
        url: path + "detailCastPostList/" + tourId + "/" + paging,
        dataType: "json",
        error: function (data, status, msg) {
            //alert("상태값 :" + status + " Http에러메시지 :"+msg);
        },
        success: detailCastPostList
    })
}

/*덧글 페이지 버튼*/
function postButton() {
    $.ajax({
        url: path + "detailCastPostPage",
        dataType: "json",
        error: function (data, status, msg) {
            //alert("상태값 :" + status + " Http에러메시지 :"+msg);
        },
        success: detailCastPostPage
    })
}

/*페이지가 로드되면 ajax 호출*/
$(function () {
    var paging = 1;
    postContent(paging);
    postButton();
    $('#insertTextarea').hide();
    $(".commentSubmit").hide();
})

/*덧글 입력 토글 발생*/
$(document).on('click', ".insertComment", function () {
    $("#insertTextarea").toggle();
    $(".commentSubmit").toggle();

});
/*덧글 등록 버튼 클릭시 insert 작업 수행*/
$(document).on('click', ".commentSubmitButton", function () {
    insertComment($("#insertTextarea").val());

    $('#insertTextarea').hide();
    $(".commentSubmit").hide();
})
/*덧글 등록*/
function insertComment(comment) {
    var tourId = $('.likey').attr('id');

    $.ajax({
        type: 'post',
        url: path + "detailCastPostInput/" + tourId,
        data: {
            "comment":comment
        },
        error: function (data, status, msg) {
            //alert("상태값 :" + status + " Http에러메시지 :"+msg);
        },
        success: function (){
            postContent(1);
            postButton();
            document.getElementById("insertTextarea").value='';
        }
    })
}



