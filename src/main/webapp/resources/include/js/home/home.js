$(function() {
	//숙소 유형 선택
	$("input:radio[name=lodgType]").click(function() {
		var lodgType = $(this).attr('title');
		$('.item-option-roomtype .popover-container > .option-btn > em').html(lodgType);

		var lodgTypeVal = $(this).attr('value');
		$('input:hidden[name="lodgmentType"]').val(lodgTypeVal);
	});

	//지역 선택
	$("input:radio[name=loc]").click(function() {
		var loc = $(this).attr('title');
		$('.item-option-area .popover-container > .option-btn > em').html(loc);

		var locVal = $(this).attr('value');
		$('input:hidden[name="location"]').val(locVal);
	});
	
	//선택버튼 클릭 시 드롭다운 메뉴 펼치기
//	$('.popover-wrapper.popover-container').on('click', '.option-btn', function() {
	$('.option-btn').on('click', function() {
		var div = $(this).closest($('.animate-bounce-down'));
		var state = div.css('display'); 
		if(state != 'none') {
			div.hide();
		} else {
			div.show();
		}
	});
	
	//달력
   	$.datepicker.setDefaults({
   		dateFormat: 'yy-mm-dd' //Input Display Format 변경
   			,showOtherMonths: true //빈 공간에 현재 월의 앞뒤 월의 날짜를 표시
   			,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
   			,changeYear: true //콤보박스에서 년 선택 가능
   			,changeMonth: true //콤보박스에서 월 선택 가능                
   			,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
   			,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
   			,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
   			,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
   			,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
   			,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
         	,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
         	,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
         	,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
   			,minDate: "-1M" //최소 선택일자(-1D:하루 전, -1M:한달 전, -1Y:일년 전)
   			,maxDate: "+1M" //최대 선택일자(+1D:하루 후, -1M:한달 후, -1Y:일년 후)                    
	 });
	 
     $("#datepicker").datepicker();                    
     $("#datepicker2").datepicker();
     
     //From의 초기값을 오늘 날짜로 설정
     $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
     //To의 초기값을 내일로 설정
     $('#datepicker2').datepicker('setDate', '+1D'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)

});
