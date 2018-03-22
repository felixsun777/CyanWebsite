<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Cyan Website</title>

<!-- Bootstrap -->
<link
	href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!--plugins-->
<link
	href="${pageContext.request.contextPath}/static/bower_components/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/bower_components/flexslider/flexslider.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/owl-carousel/owl.carousel.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/owl-carousel/owl.theme.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/owl-carousel/owl.transitions.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/pe-icons/Pe-icon-7-stroke.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/custom-scrollbar/jquery.mCustomScrollbar.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/yamm.css"
	rel="stylesheet">
<!--custom css file-->
<link href="${pageContext.request.contextPath}/static/css/style.css"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<body>

	<!--header begin-->
	<jsp:include page="head.jsp"></jsp:include>
	<!--header end-->



	<!--breadcrumb start-->
	<div class="breadcrumb-wrapper">
		<div class="container">
			<h1>Products List</h1>
		</div>
	</div>
	<!--end breadcrumb-->

	<div class="space-60"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<!-- <ul class="product-filter-block list-inline clearfix">
					<li>Sort by:</li>
					<li class="active"><a href="#">Top Rated</a></li>
					<li><a href="#">Featured items</a></li>
					<li><a href="#">new arrivals</a></li>
				</ul> -->
				<!--fliter list end-->


				<c:forEach var="c" items="${requestScope.products}">
					<div class="product-list">
						<div class="row">
							<div class="col-md-4 margin-b-30">
								<div class="product-list-thumb">
									<a href="${pageContext.request.contextPath}/productDetail/${c.productId}"> <img
										src="${pageContext.request.contextPath}/${c.image}"
										alt="Product image" class="img-responsive"></a>
								</div>
							</div>
							<div class="col-md-8">
								<div class="product-list-desc">
									<h3 class="title">
										<a href="${pageContext.request.contextPath}/productDetail/${c.productId}">${c.productName}</a>
									</h3>
									<span class="price"><del>$${c.msrp}</del> $${c.price}</span> <span
										class="rating"> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star-half-full"></i> <a
										href="#">${c.averageRanking} Stars</a>
									</span>
									<p>${c.description}</p>
									<div class="icon-list">
										<a href="#" data-toggle="tooltip" data-placement="top"
											title="Add to wishlist"><i class="fa fa-heart"></i></a> <a
											href="#" data-toggle="tooltip" data-placement="top"
											title="Add to Compare"><i class="fa fa-random"></i></a> <a
											href="#" data-toggle="tooltip" data-placement="top"
											title="Add to cart" class="btn btn-skin">Add to cart</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<!--products list-->
			</div>

			<div class="col-md-3 col-md-offset-1">
<%-- 				<div class="sidebar-widget">
					<h3>Departments</h3>
					<ul class="list-unstyled">
						<c:forEach var="d" items="${requestScope.departments}">
							<li><a href="#">${d.departmentName}</a></li>
						</c:forEach>
					</ul>
				</div> --%>
				<!--sidebar-widget end-->
				
				
				<div class="sidebar-widget">
					<h3>Bestseller</h3>
					<c:forEach var="p" items="${requestScope.popular}">
						<div class="media">
							<div class="media-left">
								<a href="${pageContext.request.contextPath}/productDetail/${p.productId}"> <img class="media-object" src="${pageContext.request.contextPath}/${p.image}"
									alt="" width="70">
								</a>
							</div>
							<div class="media-body">
								<h4 class="media-heading">
									<a href="${pageContext.request.contextPath}/productDetail/${p.productId}">${p.productName}</a>
								</h4>
								<span class="rating"> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star-half-empty"></i>
								</span> <span class="price"> $${p.price}
								</span>
	
							</div>
						</div>
					</c:forEach>
			
				</div>
				<!--sidebar-widget end-->
			</div>
			<!--sidebar col-->
		</div>
	</div>
	<div class="space-60"></div>
	<div class="newsletter">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<h3>Subscribe to newsletter</h3>
					<p>Lorem ipsum get latest update of products sit amet.</p>
				</div>
				<div class="col-md-7">
					<form role="form" method="post" action="#"
						class="subscribe-form  assan-newsletter">
						<div class="row">
							<div class="col-sm-8">
								<div class="form-group">
									<input type="text" class="form-control" name="email"
										placeholder="Enter email to subscribe">
								</div>
							</div>
							<div class="col-sm-4 text-center">
								<div>
									<button class="newsletter-btn" name="submit" type="submit">Notify
										me</button>
								</div>
							</div>
						</div>


					</form>

				</div>
			</div>
		</div>
	</div>
	<!--footer start-->
	<jsp:include page="foot.jsp"></jsp:include>
	<!--footer end-->
	<!--js plugins-->
	<script
		src="${pageContext.request.contextPath}/static/bower_components/jquery/dist/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/jquery-migrate.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/jquery.easing.1.3.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/jquery.sticky.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/bootstrap-hover-dropdown.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/jquery.mousewheel.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/static/custom-scrollbar/jquery.mCustomScrollbar.concat.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/static/bower_components/flexslider/jquery.flexslider-min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/owl-carousel/owl.carousel.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/tweetie.min.js"
		type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/static/js/custom.js"
		type="text/javascript"></script>
</body>
</html>
