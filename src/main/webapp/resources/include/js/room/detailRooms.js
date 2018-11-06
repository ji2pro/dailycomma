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
});

