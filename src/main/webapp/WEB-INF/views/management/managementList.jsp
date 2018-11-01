<!-- manageController managementList.do로 연결 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<link href="./resources/include/css/management.css" rel="stylesheet" type="text/css"> 
  	 
<script>

      $(document).ready(function(){
            $('#empList').DataTable({
                 pageLength: 4,
                bPaginate: true,
                bLengthChange: true,
                lengthMenu : [ [ 5, 10, 30, -1 ], [ 5, 10, 30, "All" ] ],
                bAutoWidth: false,
                processing: true,
                ordering: true,
                serverSide: false,
                searching: true,  
                /* ajax : {
                    "url":"/managementList.do",
                    "type":"POST",
                    "data": function (d) {
                        d.userStatCd = "NR";
                    }
                },
                columns : [
                    {data: "member_name"},
                    {data: "member_email"},
                    {data: "reserve_state"},
                    {data: "reserve_date"}
                ]
  */
            });
 
    });  
    </script>
    

    
<title>예약관리 managementList.do</title>

</head>
<body>
<div class="contentMargin">
<table id="empList" class="table table-striped table-bordered table-hover tableAlign " >
	<thead>
		<tr style="background:#ffaabb;">
			<th>이름</th>
			<th>이메일</th>
			<th>예약상태</th>
			<th>예약날짜</th>
			<th>예약날짜</th>
			<th>예약날짜</th>
			<th>예약날짜</th>
			<th>예약날짜</th>
			<th>예약날짜</th>
			<th>예약날짜</th>
			<th>예약날짜</th>
<!-- 			<th>예약날짜</th>
			<th>예약인원</th>
			<th>예약객실</th>
			<th>예약가격</th>
			<th>체크인</th>
			<th>체크아웃</th>
			<th>일수</th>
			<th>상태변경일</th> -->
		</tr>
	</thead>
	<div class="titleAlign">
	<h1><b>예약관리</b></h1>
	</div> 
	<tbody>
	
		<tr>
		<td><input type="checkbox"></td>
		<td>${member_name}</td>
		<td>memberEmail</td>
		<td>reserveState</td>
		<td>reserveDate</td>
		<td>reservePeople</td>
		<td>roomName</td>
		<td>roomName</td>
		<td>roomName</td>
		<td>roomName</td>
		<td>roomName</td> 
		
		</tr>
		
	</tbody>
</table>
</div>
</body>
</html>







 