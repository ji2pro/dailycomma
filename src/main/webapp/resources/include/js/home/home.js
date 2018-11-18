$(function() {
	/*
	 * 선택버튼 클릭 시, 드롭다운 메뉴 펼치기 
	 */
	//숙소 버튼
	$('.item-option-roomtype .option-btn').on('click', function() {
		var dropRoomMenu = $('.item-option-roomtype .animate-bounce-down');
		dropRoomMenu.show();  //숙소 유형 리스트 보여주기
	});
	//지역 버튼
	$('.item-option-area .option-btn').on('click', function() {
		var dropAreaMenu = $('.item-option-area .animate-bounce-down');
		dropAreaMenu.show();  //지역 리스트 보여주기
	});
	//날짜 버튼
	$('.item-option-calendar .option-btn').on('click', function() {
		var dropCalMenu = $('.item-option-calendar .animate-bounce-down');
		dropCalMenu.show();  //달력 보여주기
	});
	
	/*
	 * 유형 선택하기
	 */
	//숙소 선택(라디오 버튼)
	$('input:radio[name="lodgType"]').click(function() {
		var lodgType = $(this).attr('title');
		$('.item-option-roomtype .popover-container > .option-btn > em').html(lodgType);

		var lodgTypeVal = $(this).attr('value');
		$('input:hidden[name="lodgmentType"]').val(lodgTypeVal);
		$('.item-option-roomtype .animate-bounce-down').hide();
	});
	//지역 선택(라디오 버튼)
	$('input:radio[name="loc"]').click(function() {
		var loc = $(this).attr('title');
		$('.item-option-area .popover-container > .option-btn > em').html(loc);

		var locVal = $(this).attr('value');
		$('input:hidden[name="location"]').val(locVal);
		$('.item-option-area .animate-bounce-down').hide();
	});
	
	/*
	 * 달력(체크인/아웃) 버튼 이벤트 
	 */
	//날짜를 클릭하면 해당 날짜 텍스트의 색상이 바뀐다. 
	$('.dateInput').on('click', function() {
		var inputText = $(this).find('.dateInput-text');
		inputText.addClass('dateInput-text-focused');
	});
	//날짜 텍스트에서 포커스가 빠져나가면 텍스트의 색상이 돌아온다.
	$('.dateInput').focusout(function() {
		var inputText = $(this).find('.dateInput-text');
		inputText.removeClass('dateInput-text-focused');
	});
	
	//날짜를 클릭하면 아래 화살표의 색상이 바뀐다.
	$('.item-option-calendar .option-btn').on('click', function() {
		var downArrow = $(this).find('.fa-chevron-down');
		downArrow.addClass('option-btn-focused');
	});
	//날짜를 벗어나면 아래 화살표의 색상이 돌아온다.
	$('.item-option-calendar .option-btn').focusout(function() {
		var downArrow = $(this).find('.fa-chevron-down');
		downArrow.removeClass('option-btn-focused');
	});
	
	//달력
	$.datepicker.setDefaults({
		dateFormat: 'yy-mm-dd' //Input Display Format 변경
			,showOtherMonths: true //빈 공간에 현재 월의 앞뒤 월의 날짜를 표시
   			,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
   			,changeYear: true //콤보박스에서 년 선택 가능
   			,changeMonth: true //콤보박스에서 월 선택 가능
   			,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
   			,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
   			,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
         	,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
         	,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
         	,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
/*   		,minDate: "-1M" //최소 선택일자(-1D:하루 전, -1M:한달 전, -1Y:일년 전)
   			,maxDate: "+1M" //최대 선택일자(+1D:하루 후, -1M:한달 후, -1Y:일년 후)*/
		}
	);
   	//div에 달력 기능 할당(선택한 날짜를 텍스트로 표시)
   	$("#startDate").datepicker({
        minDate: 0,
		onSelect: function(dateText, inst) {
				$('#startDateText').html(dateText);
		},
        onClose: function( selectedDate ) {
            // 시작일(fromDate) datepicker가 닫힐때
            // 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
            $("#endDate").datepicker( "option", "minDate", selectedDate );
        }
	});

    $("#endDate").datepicker({
		onSelect: function(dateText, inst) {
				$('#endDateText').html(dateText);
		},
        onClose: function( selectedDate ) {
            // 종료일(toDate) datepicker가 닫힐때
            // 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정
            $("#startDate").datepicker( "option", "maxDate", selectedDate );
        }
	});

    //startDate의 초기값을 오늘 날짜로 설정
    $('#startDate').datepicker('setDate', 'today'); //(-1D:하루 전, -1M:한달 전, -1Y:일년 전), (+1D:하루 후, -1M:한달 후, -1Y:일년 후)
    var startDate = $('#startDate').val();
    $('#startDateText').html(startDate);


    //endDate의 초기값을 내일로 설정
    $('#endDate').datepicker('setDate', '+1D'); //(-1D:하루 전, -1M:한달 전, -1Y:일년 전), (+1D:하루 후, -1M:한달 후, -1Y:일년 후)
    var endDate = $('#endDate').val();
    $('#endDateText').html(endDate);

     
    /*
 	* 드롭다운 감추기
 	*/
 	$('body').on('click', function(e) {
 		var wrapper = $('.popover-wrapper'); // 메뉴 버튼의 부모
 	    if (!wrapper.is(e.target) &&             // 클릭한 대상이 선택한(의도한) div가 아니라면
     		wrapper.has(e.target).length === 0)  // 또는 컨테이너의 자식도 아니라면
 	    {
 			$('.animate-bounce-down').hide();
 	    }
 	});
});
