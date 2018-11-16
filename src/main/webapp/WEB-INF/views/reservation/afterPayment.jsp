<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" type="text/css" href="<c:url value="/resources/include/css/reservation/afterPayment.css"/>">

	<div>
		<div class="container">
			<div class="py-5 text-center">
				<h1>결제가 완료 되었습니다.</h1>
			</div>
		</div>		
		<div class="lineset container">
			<div class="row">
  				<div class="col-sm-6 card-lineset">
    				<div class="card">
    					<span>${location} </span>
      					<div class="card-body">
        					<h3 class="card-title">축제 일정</h3>
        					<p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        					<a href="#" class="btn btn-primary">축제 일정 보러가기</a>
      					</div>
    				</div>
  				</div>
  				<div class="col-sm-6 card-lineset">
    				<div class="card">
      					<div class="card-body">
        					<h3 class="card-title">관광지</h3>
       	 					<p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        					<a href="#" class="btn btn-primary">관광지 보러가기</a>
      					</div>
    				</div>
  				</div>
			</div>
			
			<div class="text-center btn-lineset">
				<button class="btn" type="button">홈으로 돌아가기</button>
			</div>			
		</div>
	</div>
