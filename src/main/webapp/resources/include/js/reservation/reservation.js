//예약페이지 
$(function(){
	$('#pointBtn').click(function(){
		var my_point = parseInt($('.my-point').attr("data-sum"));		//보유한 포인트
		var use_point =  parseInt($('#point').val());		//사용할 포인트
		var payment_sum = parseInt($('#payment-sum').children("i").attr("data-sum"));	//결제금액
		
		console.log("=========== my-point" + my_point);
		console.log("=========== use-point" + use_point);
		console.log("=========== payment_sum"  + payment_sum);
		
		if(use_point > my_point) {
			alert("포인트가 부족합니다.");
			return;
		}		
		
		if(use_point > payment_sum ){								//사용할 포인트가 결제금액보다 많을경우
			alert("결제금액보다 많이 입력하셨습니다.");
		
		}else{
			my_point = my_point - use_point;
			var my_point_str = my_point.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			var sum = payment_sum - use_point; 	//결제금액 - 사용할 포인트
			var round = Math.round(sum * 0.05);
			var round_str = round.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			var sum_str = sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			console.log(round);
			
			use_point_str = use_point.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			
			//round = round.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			$('#payment-sum').children("i").text(sum_str);
			$('#discount-point').children("i").text(use_point_str);
			$('#saving-point').children("i").text(round_str);
			$('.my-point').text(my_point_str);
			
			$('input:hidden[name="deductionPoint"]').val(use_point);
			$('input:hidden[name="reservePoints"]').val(round);
			$('input:hidden[name="reservePrice"]').val(sum);
			
		}
	});
});