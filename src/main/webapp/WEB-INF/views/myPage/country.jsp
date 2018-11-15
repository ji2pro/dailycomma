<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script> 
countryList = JSON.parse(sessionStorage.getItem("myPageCountryList"));  // getitem으로 스토리지에 있는 값을 json.parse시킨후 countryList에 넣음.
console.log(countryList) 
$(function(){
	for(i in countryList){ 
		if(!isNull(countryList[i])){
			$(".reta tr:last").after("<tr><td>"+countryList[i].company+"</td><td><a href='<c:url value='reserveRoom/"+countryList[i].roomNo+"'/>'>"+countryList[i].roomNo+"</a></td><td>"+countryList[i].roomName+"</td><td>"+countryList[i].roomPrice+"</td></tr>")
		}	
	}
});

function reserve_click(room_no){
	var url = path + "reserveRoom/"+room_no
	console.log(url);
	location.href = url;
}

function isNull(obj){
	 if(obj == '' || obj == null || obj == undefined || obj == NaN){ 
	  return true;
	 }else{
	  return false;
	 }
}
</script>

<div class="reta">
	최근 본 숙소
	<table class="table mt-3">
		<tbody class="lineset">
			<tr>
				<th>숙소 이름</th>
				<th>객실 번호</th>
				<th>객실 종류</th>
				<th>가격</th>
			</tr>

		</tbody>
	</table>
</div>
