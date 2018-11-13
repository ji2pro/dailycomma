$(function () {

    $(document).on('click', '.likey', function () {
        var tourId = $(this).attr('id');
        $.ajax({
            url: path + "/detailCastInsert/" + tourId,
            error:function(data,status,msg){
                alert("상태값 :" + status + " Http에러메시지 :"+msg);
            },
            success:function(result) {
                var tag ="";
                tag += "<li name='btnLike' class='on'><a href='#none' class='liken' id='"+tourId+"'><span class='bl_like'></span></a></li>"
                $('#likey').remove();
                $('.right').append(tag);
            }
        })
    })

/*    $(document).on('click', '.liken', function () {
        var tourId = $(this).attr('id');
        $.ajax({
            url: path + "/detailCast/" + tourId,
            error:function(data,status,msg){
                alert("상태값 :" + status + " Http에러메시지 :"+msg);
            },
            success:
        })
    })*/
})
