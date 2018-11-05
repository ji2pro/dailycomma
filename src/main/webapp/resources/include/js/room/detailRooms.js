/*$(document).ready(function () {
    $(document).on('click',)(function () {
        console.log(this);
        $.ajax({
            url:"/postDetail.do/"+postNo
        })
    })
})*/
$(function () {
    $(".detail").on('click',function () {
        console.log($(this).attr('id'));
        var postNo = $(this).attr('id');
        $.ajax({
            url:"/postDetail.do/"+postNo,
            success :
                function(result) {
                    $("#postResult").html(result);
                    $(".review-list").empty();
            }
        })
    })
})
