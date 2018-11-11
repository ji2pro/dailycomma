$(function () {
    $.ajax({
        url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival?serviceKey=dRWo2wKq2B%2FKrt7Y7XfVsQkh5Kd5K%2BblTUQR2rCFXPVLNO5ThHE%2BTgha3kfg4eAJP76aeHgLQqQOaSsj%2BC%2BKeg%3D%3D&numOfRows=10&pageSize=10&pageNo=1&startPage=1&MobileOS=ETC&MobileApp=AppTest&arrange=A&listYN=Y&areaCode=4&eventStartDate=20181111&_type=json",
        dataType: 'json',
        success : function(datas) {
        console.log(datas);
        }
    });
})