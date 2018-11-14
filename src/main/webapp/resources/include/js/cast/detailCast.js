function likeOn(data) {
    $('.likey').find('span').attr("class","a1");
    $('.bt_detail').find('span').attr("class","a1");

    $('[name=jsonLikeCount]').text(data.totalLike);
}
function likeOff(data) {
    $('.likey').find('span').attr("class","a0");
    $('.bt_detail').find('span').attr("class","a0");

    $('[name=jsonLikeCount]').text(data.totalLike);
}
$(document).on('click', '.likey', function () {
    var tourId = $(this).attr('id');
    var liId = $(this).find('span').attr('class');

    if(liId == 'a0'){
        $.ajax({
            url: path + "detailCastInsert/" + tourId,
            dataType: "json",
            error: function (data, status, msg) {
                //alert("상태값 :" + status + " Http에러메시지 :"+msg);
            },
            success:likeOn
        })
    }else if(liId == 'a1'){
        $.ajax({
            url: path + "detailCastDelete/" + tourId,
            dataType: "json",
            error: function (data, status, msg) {
                //alert("상태값 :" + status + " Http에러메시지 :"+msg);
            },
            success:likeOff
        })
    }
})