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
	href="${pageContext.request.contextPath}/static/bower_components/lightbox2/dist/css/lightbox.css"
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

<!-- Stylish Alert -->
<script src="${pageContext.request.contextPath}/static/js/alertify.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/alertify.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/default.min.css" />
	
</head>
<body>

<script type="text/javascript">
		if ("${message}" != "") {
			alertify.set('notifier','position', 'top-center');
			var flag;
			if("${message}"=="Successfully Deleted"){
				flag = "success";
			}else{
				flag = "error";
			}
			alertify.notify('${message}', "success", 5, function() {
				console.log('dismissed');
			});
		}
	</script>
	<!--header start-->
	<jsp:include page="head.jsp"></jsp:include>
	<!--header end-->

	<!--breadcrumb start-->
	<div class="breadcrumb-wrapper">
		<div class="container">
			<h1>Product Detail</h1>
		</div>
	</div>
	<!--end breadcrumb-->

	<div class="space-60"></div>
	<div class="container">
		<div class="row single-product">

			<div class="col-md-9">
				<div class="row">
					<div class="col-md-5 margin-b-30">
						<div id="product-single" class="owl-carousel owl-theme single-product-slider">
							<div class="item">
								<a href="${pageContext.request.contextPath}/${product.image}" data-lightbox="roadtrip"> 
								<img src="${pageContext.request.contextPath}/${product.image}" alt="Product image"class="img-responsive"></a>
							</div>
							
							<!-- <div class="item">
								<a href="images/men/s-2.jpg" data-lightbox="roadtrip"> <img
									src="images/men/s-2.jpg" alt="Product image"
									class="img-responsive"></a>
							</div>
							<div class="item">
								<a href="images/men/s-3.jpg" data-lightbox="roadtrip"> <img
									src="images/men/s-3.jpg" alt="Product image"
									class="img-responsive"></a>
							</div>
							<div class="item">
								<a href="images/men/s-4.jpg" data-lightbox="roadtrip"> <img
									src="images/men/s-4.jpg" alt="Product image"
									class="img-responsive"></a>
							</div> -->
						</div>
					</div>
					<div class="col-md-7">
						<div class="product-detail-desc">
							<h3 class="title">
								<a href="#">${product.productName}</a>
							</h3>
							<span class="price" style="color:red"><del style="color:#999">$${product.msrp}</del>&nbsp&nbsp $${product.price}</span> <span
								class="rating"> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star-half-full"></i> <a
								href="#">${reviewCount} Reviews</a>
							</span>
							
							<!-- <div class="colors">
								<span>Choose color</span> <a href="#" class="light"></a> <a
									href="#" class="blue"></a> <a href="#" class="yellow"></a> <a
									href="#" class="red"></a>
							</div> -->
							<div class="available">Brand : ${product.brand}</div>
							<div class="available">Available Date : ${product.availableDate}</div>
							<div class="available">Availability : ${product.stock}</div><br>
							<%-- <p>Description : ${product.description}</p><br> --%>
							
							<form id="cart" action="${pageContext.request.contextPath}/addCart/" method="POST">
							<div class="size">
								<span>Quantity : </span> <select name="quantity"><option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
									<option>7</option>
									<option>8</option>
									<option>9</option>
									<option>10</option></select>
							</div>
							<input type="hidden" name="productId" value="${product.productId}">
							</form>
							<div class="add-buttons">
								<!-- <a href="#" class="btn btn-border btn-lg" data-toggle="tooltip"
									data-placement="top" title="Add to wishlist"><i
									class="fa fa-heart"></i></a> <a href="#"
									class="btn btn-border btn-lg" data-toggle="tooltip"
									data-placement="top" title="Add to Compare"><i
									class="fa fa-random"></i></a> -->
									
									 <a href="javascript:void(0)" onclick="document.forms['cart'].submit();" data-toggle="tooltip"
									data-placement="top" title="Add to cart"
									class="btn btn-skin btn-lg"><i class="fa fa-shopping-cart"></i>
									Add to cart</a>
							</div>
						</div>
					</div>
				</div>
				<!--single product details end-->
				<div class="space-40"></div>
				<div class="row">
					<div class="col-md-12 item-more-info">
						<div>

							<!-- Nav tabs -->
							<ul class="nav nav-justified" role="tablist">
								<li role="presentation" class="active"><a href="#desc"
									aria-controls="desc" role="tab" data-toggle="tab">Description</a></li>
								<li role="presentation"><a href="#reviews"
									aria-controls="reviews" role="tab" data-toggle="tab">Reviews</a></li>
								<!-- <li role="presentation"><a href="#add-cmnt"
									aria-controls="add-cmnt" role="tab" data-toggle="tab">Add
										Review</a></li> -->
							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="desc">
									<p>${product.description}</p>
									<c:forEach var="picture" items="${pictures}">
										<img src="${pageContext.request.contextPath}/${picture}" width="850">
									</c:forEach>
								</div>
								<div role="tabpanel" class="tab-pane" id="reviews">
									<c:forEach var="review" items="${reviews}">
									<div class="media">
										<div class="media-left">
											<img class="media-object img-circle"
												src="${pageContext.request.contextPath}/static/images/${review.userId % 5 +1}.jpg" width="80" alt="...">
										</div>
										<div class="media-body">
											<h5>${review.username}</h5>
											<p>${review.reviewContent}</p>
											<span class="rating"> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star-half-empty"></i>
											</span>
										</div>
									</div>
									</c:forEach>
								</div>
								
							</div>

						</div>
					</div>
				</div>

			</div>

			<div class="col-md-3">
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
								<a
									href="${pageContext.request.contextPath}/productDetail/${p.productId}">
									<img class="media-object" src="${pageContext.request.contextPath}/${p.image}" alt="" width="70">
								</a>
							</div>
							<div class="media-body">
								<h4 class="media-heading">
									<a
										href="${pageContext.request.contextPath}/productDetail/${p.productId}">${p.productName}</a>
								</h4>
								<span class="rating"> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star-half-empty"></i>
								</span> <span class="price"> $${p.price} </span>

							</div>
						</div>
					</c:forEach>

				</div>
				<!--sidebar-widget end-->

			</div>
			<!--sidebar col-->
		</div>
		<div class="space-60"></div>
		<div class="similar-products">
			<h2 class="section-heading">Similar Products</h2>
			<!--owl carousel-->
			<div class="row">
				<div id="owl-slider" class="col-md-12">
				
					<c:forEach var="s" items="${requestScope.similar}">
						<div class="item">
							<div class="item_holder">
								<a href="${pageContext.request.contextPath}/productDetail/${s.productId}"><img src="${pageContext.request.contextPath}/${s.image}" alt=""
									class="img-responsive"></a>
								<div class="title">
									<h5>
										${s.productName} <br>${s.brand}
									</h5>
									<span class="price" style="color:red">$${s.price}</span>
								</div>
							</div>
						</div>
					</c:forEach>
				
				
					

				</div>
			</div>
			<!--owl end-->
		</div>
		<!--similar products-->

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
	<script
		src="${pageContext.request.contextPath}/static/bower_components/lightbox2/dist/js/lightbox.min.js"
		type="text/javascript"></script>
</body>
</html>
