$(function () {
    $(".detail").on('click',function () {
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

    $(".postList").on('click',function () {
        console.log($(this).attr('id'));
        var lodgmentNo = $(this).attr('id');
        $.ajax({
            url:"/postScriptList.do/"+lodgmentNo,
            success :
                function(result) {
                    $(".review-list").html(result).show();
                }
        })
    });
});

