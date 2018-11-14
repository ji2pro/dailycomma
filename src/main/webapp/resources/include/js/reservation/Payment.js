/*var amoun;
function value(param1,param2,param3,param4,param5) {
    amount = 3333333;
    amount = amount.replace(/,/g,'');
    amount = amount.replace('원','');
    amount *= 1;
/!*    buyer_email = param2;
    buyer_tel = param3;
    buyer_name = param4;
    buyer_addr = param5;*!/


    buyer_email = "asdsa@naver.com";
    buyer_tel = "01515161";
    buyer_name = "부자";
    buyer_addr = "개부자";
}*/

/*결제 API*/
$(document).ready(function() {
    IMP.init('imp92483158');
    $(".btn-payment").click(function() {
        IMP.request_pay({
            pg : 'html5_inicis',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : '주문명:결제테스트',
            amount : 32323223,
            buyer_email : 'dfgkjhfdk@naver.com',
            buyer_name : '개부자다',
            buyer_tel :  1513515321231,
            buyer_addr : '실리콘벨리'
            // buyer_postcode : '123-456'
        }, function(rsp) {
            if ( rsp.success ) {
                var msg = '결제가 완료되었습니다.';
                msg += '고유ID : ' + rsp.imp_uid;
                msg += '상점 거래ID : ' + rsp.merchant_uid;
                msg += '결제 금액 : ' + rsp.paid_amount;
                msg += '카드 승인번호 : ' + rsp.apply_num;
            } else {
                var msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
            }

            alert(msg);
        });
    });


});