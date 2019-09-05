<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<!-- style css -->
<link rel="stylesheet" href="<c:url value="/css/style.css" />"
	type="text/css" />
	<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
	<div class="header_area">
		<div class="header_border">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
						<div class="header_heaft_area">
							<div class="header_left_all">
								<div class="mean_al_dv">
									<div class="littele_menu">
										<a href="#">回首頁<i class="fa fa-caret-down"></i></a>
									</div>
									<ul class="option">

									</ul>
								</div>
								<div class="usd_area">
									<div class="littele_menu">
										<a href="#"> 我是賣家 <i class="fa fa-caret-down"></i>
										</a>
									</div>
									<ul class="option">
										<li><a href="#">賣場管理</a></li>
										<li><a href="#">交易紀錄</a></li>
										<li><a href="#">我的賣場</a></li>
									</ul>
								</div>
								<div class="usd_area">
									<div class="littele_menu">
										<a href="#"> 我是買家 <i class="fa fa-caret-down"></i>
										</a>
									</div>
									<ul class="option">
										<li><a href="#">訂單查詢</a></li>
										<li><a href="#">交易紀錄</a></li>
										<li><a href="#">歷史紀錄</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
						<div class="header_right_area">
							<ul>
								<li><a class="account" href="#">登入/註冊</a></li> 
<!-- 								<li><a class="wishlist" href="#">訂單查詢</a></li> -->
<!-- 								<li><a class="Shopping cart" href="#">購物車</a></li> -->
								<li><a class="Checkout" href="membercentre">會員中心</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>