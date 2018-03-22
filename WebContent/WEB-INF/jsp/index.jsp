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
<!--revolution css-->
<link
	href="${pageContext.request.contextPath}/static/revolution/css/navigation.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/revolution/css/layers.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/revolution/css/settings.css"
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

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="${pageContext.request.contextPath}/static/https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="${pageContext.request.contextPath}/static/https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
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


	<%@ include file="head.jsp" %>

	<!--slider revolution 5 start-->
	<article class="content">
		<div class="rev_slider_wrapper">
			<!-- START REVOLUTION SLIDER 5.0 auto mode -->
			<div id="rev_slider" class="rev_slider" data-version="5.0">
				<ul>
					<!-- SLIDE  -->
					<li data-transition="fade">
						<!-- MAIN IMAGE --> <img
						src="${pageContext.request.contextPath}/static/images/bg/bg-1.jpg"
						alt="" width="1920" height="600"> <!-- LAYER NR. 1 -->
						<div class="tp-caption slider-title tp-resizeme"
							data-transform_idle="o:1;" data-x="center" data-hoffset="0"
							data-y="top" data-voffset="200"
							data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
							data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
							data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							data-start="500" data-splitin="none" data-splitout="none"
							data-responsive_offset="on">Cell Phones</div> <!-- LAYER NR. 2 -->
						<div class="tp-caption slider-caption tp-resizeme"
							data-transform_idle="o:1;" data-x="center" data-hoffset="0"
							data-y="top" data-voffset="280"
							data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
							data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
							data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							data-start="800" data-splitin="none" data-splitout="none"
							data-responsive_offset="on">New Releases</div> <!-- LAYER NR. 3 -->
						<div class="tp-caption slider-button tp-resizeme"
							data-transform_idle="o:1;" data-x="center" data-hoffset="0"
							data-y="top" data-voffset="320"
							data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
							data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
							data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							data-start="1200" data-splitin="none" data-splitout="none"
							data-responsive_offset="on">
							<a href="${pageContext.request.contextPath}/productListByDepartment/5">Shop Now</a>
						</div>
					</li>

					<!-- SLIDE  -->
					<li data-transition="fade">
						<!-- MAIN IMAGE --> <img
						src="${pageContext.request.contextPath}/static/images/bg/bg-2.jpg"
						alt="" width="1920" height="600"> <!-- LAYER NR. 1 -->
						<div class="tp-caption slider-title tp-resizeme"
							data-transform_idle="o:1;" data-x="right" data-hoffset="100"
							data-y="top" data-voffset="150"
							data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
							data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
							data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							data-start="500" data-splitin="none" data-splitout="none"
							data-responsive_offset="on">Computers</div> <!-- LAYER NR. 2 -->
						<div class="tp-caption slider-caption tp-resizeme"
							data-transform_idle="o:1;" data-x="right" data-hoffset="100"
							data-y="top" data-voffset="230"
							data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
							data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
							data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							data-start="800" data-splitin="none" data-splitout="none"
							data-responsive_offset="on">Best Collection</div> <!-- LAYER NR. 3 -->
						<div class="tp-caption slider-button tp-resizeme"
							data-transform_idle="o:1;" data-x="right" data-hoffset="100"
							data-y="top" data-voffset="280"
							data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
							data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
							data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							data-start="1200" data-splitin="none" data-splitout="none"
							data-responsive_offset="on">
							<a href="${pageContext.request.contextPath}/productListByDepartment/3">Shop Now</a>
						</div>
					</li>

					<!-- SLIDE  -->
					<li data-transition="fade">
						<!-- MAIN IMAGE --> <img
						src="${pageContext.request.contextPath}/static/images/bg/bg-3.jpg"
						alt="" width="1920" height="600"> <!-- LAYER NR. 1 -->
						<div class="tp-caption slider-title tp-resizeme"
							data-transform_idle="o:1;" data-x="center" data-hoffset="0"
							data-y="top" data-voffset="200"
							data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
							data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
							data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							data-start="500" data-splitin="none" data-splitout="none"
							data-responsive_offset="on">Video Games</div> <!-- LAYER NR. 2 -->
						<div class="tp-caption slider-caption tp-resizeme"
							data-transform_idle="o:1;" data-x="center" data-hoffset="0"
							data-y="top" data-voffset="280"
							data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
							data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
							data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							data-start="800" data-splitin="none" data-splitout="none"
							data-responsive_offset="on">Playing in the dream</div> <!-- LAYER NR. 3 -->
						<div class="tp-caption slider-button tp-resizeme"
							data-transform_idle="o:1;" data-x="center" data-hoffset="0"
							data-y="top" data-voffset="320"
							data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
							data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
							data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							data-start="1200" data-splitin="none" data-splitout="none"
							data-responsive_offset="on">
							<a href="${pageContext.request.contextPath}/productListByDepartment/7">Shop Now</a>
						</div>
					</li>


					<!-- SLIDE  -->
					<li data-transition="fade">
						<!-- MAIN IMAGE --> <img
						src="${pageContext.request.contextPath}/static/images/bg/bg-4.jpg"
						alt="" width="1920" height="600"> <!-- LAYER NR. 1 -->
						<div class="tp-caption slider-title tp-resizeme"
							data-transform_idle="o:1;" data-x="right" data-hoffset="100"
							data-y="top" data-voffset="150"
							data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
							data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
							data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							data-start="500" data-splitin="none" data-splitout="none"
							data-responsive_offset="on">Audio</div> <!-- LAYER NR. 2 -->
						<div class="tp-caption slider-caption tp-resizeme"
							data-transform_idle="o:1;" data-x="right" data-hoffset="100"
							data-y="top" data-voffset="230"
							data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
							data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
							data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							data-start="800" data-splitin="none" data-splitout="none"
							data-responsive_offset="on">Most Beautiful Ever</div> <!-- LAYER NR. 3 -->
						<div class="tp-caption slider-button tp-resizeme"
							data-transform_idle="o:1;" data-x="right" data-hoffset="100"
							data-y="top" data-voffset="280"
							data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
							data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
							data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
							data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
							data-start="1200" data-splitin="none" data-splitout="none"
							data-responsive_offset="on">
							<a href="${pageContext.request.contextPath}/productListByDepartment/6">Shop Now</a>
						</div>
					</li>


				</ul>
			</div>
			<!-- END REVOLUTION SLIDER -->
		</div>
	</article>

	<!--slider revolution 5 end-->
	<div class="space-60"></div>
	<div class="blocks-main">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="blocks-col">
						<img
							src="${pageContext.request.contextPath}/static/images/bg/bg-2.jpg"
							alt="" class="img-responsive">
						<a href="${pageContext.request.contextPath}/productListByDepartment/3">
							<div class="block-overlay">
								<h4>Computers</h4>
								<p>Best Collection</p>
							</div>
						</a>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="blocks-col">
						<img
							src="${pageContext.request.contextPath}/static/images/bg/bg-3.jpg"
							alt="" class="img-responsive">
						<a href="${pageContext.request.contextPath}/productListByDepartment/7">
							<div class="block-overlay">
								<h4>Video Games</h4>
								<p>Playing in the dream</p>
							</div>
						</a>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="blocks-col">
						<img
							src="${pageContext.request.contextPath}/static/images/bg/bg-1.jpg"
							alt="" class="img-responsive">
						<a href="${pageContext.request.contextPath}/productListByDepartment/5">
							<div class="block-overlay">
								<h4>Cell Phones</h4>
								<p>New Releases</p>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--block main-->


	<div class="space-60"></div>


	<!--new arrivals-->
	<section class="new-arrivals">
		<div class="container">
			<h2 class="section-heading">New Arrivals</h2>

			<!--owl carousel-->
			<div class="row">
				<div id="owl-slider" class="col-md-12">

					<div class="item">
						<div class="item_holder">
							<a href="${pageContext.request.contextPath}/productDetail/${arrival.get(0).productId}"><img
								src="${pageContext.request.contextPath}/${arrival.get(0).image}"
								alt="" class="img-responsive"></a>
							<div class="title">
								<h5>
									${arrival.get(0).productName} <br>
								</h5>
								<span class="price" style="color:red">$${arrival.get(0).price}</span>
							</div>
						</div>
						<!--item holder-->
					</div>
					<!--item loop-->
					<div class="item">
						<div class="item_holder">
							<a href="${pageContext.request.contextPath}/productDetail/${arrival.get(1).productId}"><img
								src="${pageContext.request.contextPath}/${arrival.get(1).image}"
								alt="" class="img-responsive"></a>
							<div class="title">
								<h5>
									${arrival.get(1).productName} <br>
								</h5>
								<span class="price" style="color:red">$${arrival.get(1).price}</span>
							</div>
						</div>
						<!--item holder-->
					</div>
					<!--item loop-->
					<div class="item">
						<div class="item_holder">
							<a href="${pageContext.request.contextPath}/productDetail/${arrival.get(2).productId}"><img
								src="${pageContext.request.contextPath}/${arrival.get(2).image}"
								alt="" class="img-responsive"></a>
							<div class="title">
								<h5>
									${arrival.get(2).productName} <br>
								</h5>
								<span class="price" style="color:red">$${arrival.get(2).price}</span>
							</div>
						</div>
						<!--item holder-->
					</div>
					<!--item loop-->
					<div class="item">
						<div class="item_holder">
							<a href="${pageContext.request.contextPath}/productDetail/${arrival.get(3).productId}"><img
								src="${pageContext.request.contextPath}/${arrival.get(3).image}"
								alt="" class="img-responsive"></a>
							<div class="title">
								<h5>
									${arrival.get(3).productName} <br>
								</h5>
								<span class="price" style="color:red">$${arrival.get(3).price}</span>
							</div>
						</div>
						<!--item holder-->
					</div>
					<!--item loop-->
					<div class="item">
						<div class="item_holder">
							<a href="${pageContext.request.contextPath}/productDetail/${arrival.get(4).productId}"><img
								src="${pageContext.request.contextPath}/${arrival.get(4).image}"
								alt="" class="img-responsive"></a>
							<div class="title">
								<h5>
									${arrival.get(4).productName} <br>
								</h5>
								<span class="price" style="color:red">$${arrival.get(4).price}</span>
							</div>
						</div>
						<!--item holder-->
					</div>
					<!--item loop-->
					<div class="item">
						<div class="item_holder">
							<a href="${pageContext.request.contextPath}/productDetail/${arrival.get(5).productId}"><img
								src="${pageContext.request.contextPath}/${arrival.get(5).image}"
								alt="" class="img-responsive"></a>
							<div class="title">
								<h5>
									${arrival.get(5).productName} <br>
								</h5>
								<span class="price" style="color:red">$${arrival.get(5).price}</span>
							</div>
						</div>
						<!--item holder-->
					</div>
					<!--item loop-->
				</div>
			</div>
			<!--owl end-->
		</div>
	</section>
	<!--end new arrivals-->
	<div class='space-60'></div>
	<!--parallax section start-->
	<section class="parallax">
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1 text-center">
					<h1>
						<span>Audio never better</span>
					</h1>
					<a href='${pageContext.request.contextPath}/productListByDepartment/6' class="btn btn-skin btn-lg">Shop Now</a>
				</div>
			</div>
		</div>
	</section>
	<!--parallax section end-->
	<div class='space-60'></div>

	<!--popular products-->
	<section class="featured-products">
		<div class="container">
			<h2 class="section-heading">Popular products</h2>
			<div class="row">
				<div class="col-sm-6 col-md-3 ">
					<div class="item_holder">
						<a href="${pageContext.request.contextPath}/productDetail/${popular.get(0).productId}"><img
							src="${pageContext.request.contextPath}/${popular.get(0).image}"
							alt="" class="img-responsive"></a>
						<div class="title">
							<h5>
								${popular.get(0).productName} <br>${popular.get(0).averageRanking}<i class="fa fa-star" style="color:#06a1a1"></i>
							</h5>
							<span class="price" style="color:red">$${popular.get(0).price}</span>
						</div>
					</div>
					<!--item holder-->
				</div>
				<!--col end-->
				<div class="col-sm-6 col-md-3 ">
					<div class="item_holder">
						<a href="${pageContext.request.contextPath}/productDetail/${popular.get(1).productId}"><img
							src="${pageContext.request.contextPath}/${popular.get(1).image}"
							alt="" class="img-responsive"></a>
						<div class="title">
							<h5>
								${popular.get(1).productName} <br>${popular.get(1).averageRanking}<i class="fa fa-star" style="color:#06a1a1"></i>
							</h5>
							<span class="price" style="color:red">$${popular.get(1).price}</span>
						</div>
					</div>
					<!--item holder-->
				</div>
				<!--col end-->
				<div class="col-sm-6 col-md-3 ">
					<div class="item_holder">
						<a href="${pageContext.request.contextPath}/productDetail/${popular.get(2).productId}"><img
							src="${pageContext.request.contextPath}/${popular.get(2).image}"
							alt="" class="img-responsive"></a>
						<div class="title">
							<h5>
								${popular.get(2).productName} <br>${popular.get(2).averageRanking}<i class="fa fa-star" style="color:#06a1a1"></i>
							</h5>
							<span class="price" style="color:red">$${popular.get(2).price}</span>
						</div>
					</div>
					<!--item holder-->
				</div>
				<!--col end-->
				<div class="col-sm-6 col-md-3 ">
					<div class="item_holder">
						<a href="${pageContext.request.contextPath}/productDetail/${popular.get(3).productId}"><img
							src="${pageContext.request.contextPath}/${popular.get(3).image}"
							alt="" class="img-responsive"></a>
						<div class="title">
							<h5>
								${popular.get(3).productName} <br>${popular.get(3).averageRanking}<i class="fa fa-star" style="color:#06a1a1"></i>
							</h5>
							<span class="price" style="color:red">$${popular.get(3).price}</span>
						</div>
					</div>
					<!--item holder-->
				</div>
				<!--col end-->
			</div>
			<!--row-->

			<div class="row">
				<div class="col-sm-6 col-md-3 ">
					<div class="item_holder">
						<a href="${pageContext.request.contextPath}/productDetail/${popular.get(4).productId}"><img
							src="${pageContext.request.contextPath}/${popular.get(4).image}"
							alt="" class="img-responsive"></a>
						<div class="title">
							<h5>
								${popular.get(4).productName} <br>${popular.get(4).averageRanking}<i class="fa fa-star" style="color:#06a1a1"></i>
							</h5>
							<span class="price" style="color:red">$${popular.get(4).price}</span>
						</div>
					</div>
					<!--item holder-->
				</div>
				<!--col end-->
				<div class="col-sm-6 col-md-3 ">
					<div class="item_holder">
						<a href="${pageContext.request.contextPath}/productDetail/${popular.get(5).productId}"><img
							src="${pageContext.request.contextPath}/${popular.get(5).image}"
							alt="" class="img-responsive"></a>
						<div class="title">
							<h5>
								${popular.get(5).productName} <br>${popular.get(5).averageRanking}<i class="fa fa-star" style="color:#06a1a1"></i>
							</h5>
							<span class="price" style="color:red">$${popular.get(5).price}</span>
						</div>
					</div>
					<!--item holder-->
				</div>
				<!--col end-->
				<div class="col-sm-6 col-md-3 ">
					<div class="item_holder">
						<a href="${pageContext.request.contextPath}/productDetail/${popular.get(6).productId}"><img
							src="${pageContext.request.contextPath}/${popular.get(6).image}"
							alt="" class="img-responsive"></a>
						<div class="title">
							<h5>
								${popular.get(6).productName} <br>${popular.get(6).averageRanking}<i class="fa fa-star" style="color:#06a1a1"></i>
							</h5>
							<span class="price" style="color:red">$${popular.get(6).price}</span>
						</div>
					</div>
					<!--item holder-->
				</div>
				<!--col end-->
				<div class="col-sm-6 col-md-3 ">
					<div class="item_holder">
						<a href="${pageContext.request.contextPath}/productDetail/${popular.get(7).productId}"><img
							src="${pageContext.request.contextPath}/${popular.get(7).image}"
							alt="" class="img-responsive"></a>
						<div class="title">
							<h5>
								${popular.get(7).productName} <br>${popular.get(7).averageRanking}<i class="fa fa-star" style="color:#06a1a1"></i>
							</h5>
							<span class="price" style="color:red">$${popular.get(7).price}</span>
						</div>
					</div>
					<!--item holder-->
				</div>
				<!--col end-->
			</div>
			<!--row-->

			<div class="row">
				<div class="col-sm-6 col-md-3 ">
					<div class="item_holder">
						<a href="${pageContext.request.contextPath}/productDetail/${popular.get(8).productId}"><img
							src="${pageContext.request.contextPath}/${popular.get(8).image}"
							alt="" class="img-responsive"></a>
						<div class="title">
							<h5>
								${popular.get(8).productName} <br>${popular.get(8).averageRanking}<i class="fa fa-star" style="color:#06a1a1"></i>
							</h5>
							<span class="price" style="color:red">$${popular.get(8).price}</span>
						</div>
					</div>
					<!--item holder-->
				</div>
				<!--col end-->
				<div class="col-sm-6 col-md-3 ">
					<div class="item_holder">
						<a href="${pageContext.request.contextPath}/productDetail/${popular.get(9).productId}"><img
							src="${pageContext.request.contextPath}/${popular.get(9).image}"
							alt="" class="img-responsive"></a>
						<div class="title">
							<h5>
								${popular.get(9).productName} <br>${popular.get(9).averageRanking}<i class="fa fa-star" style="color:#06a1a1"></i>
							</h5>
							<span class="price" style="color:red">$${popular.get(9).price}</span>
						</div>
					</div>
					<!--item holder-->
				</div>
				<!--col end-->
				<div class="col-sm-6 col-md-3 ">
					<div class="item_holder">
						<a href="${pageContext.request.contextPath}/productDetail/${popular.get(10).productId}"><img
							src="${pageContext.request.contextPath}/${popular.get(10).image}"
							alt="" class="img-responsive"></a>
						<div class="title">
							<h5>
								${popular.get(10).productName} <br>${popular.get(10).averageRanking}<i class="fa fa-star" style="color:#06a1a1"></i>
							</h5>
							<span class="price" style="color:red">$${popular.get(10).price}</span>
						</div>
					</div>
					<!--item holder-->
				</div>
				<!--col end-->
				<div class="col-sm-6 col-md-3 ">
					<div class="item_holder">
						<a href="${pageContext.request.contextPath}/productDetail/${popular.get(11).productId}"><img
							src="${pageContext.request.contextPath}/${popular.get(11).image}"
							alt="" class="img-responsive"></a>
						<div class="title">
							<h5>
								${popular.get(11).productName} <br>${popular.get(11).averageRanking}<i class="fa fa-star" style="color:#06a1a1"></i>
							</h5>
							<span class="price" style="color:red">$${popular.get(11).price}</span>
						</div>
					</div>
					<!--item holder-->
				</div>
				<!--col end-->
			</div>
			<!--row-->
		</div>
	</section>
	<!--end Popular products-->
	<div class="space-50"></div>

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
	<!--newsletter end-->

	<div class="space-60"></div>
	<!--features section start-->
	<div class="container">
		<div class="row">
			<div class="col-sm-4 margin-b-30">
				<div class="features-box">
					<div class="icon">
						<i class="fa fa-truck"></i>
					</div>
					<div class="text">
						<h3>Free Shipping</h3>
						<p>Cyan Website offers our great customer a free shipping service all over the US within 3 days.</p>
					</div>
				</div>
				<!--features box-->
			</div>
			<!--features column-->
			<div class="col-sm-4 margin-b-30">
				<div class="features-box blue">
					<div class="icon">
						<i class="fa fa-credit-card"></i>
					</div>
					<div class="text">
						<h3>Secure payment</h3>
						<p>On Cyan, your every order payment is secured by our safe network environment. You can shop with confidence.</p>
					</div>
				</div>
				<!--features box-->
			</div>
			<!--features column-->
			<div class="col-sm-4 margin-b-30">
				<div class="features-box">
					<div class="icon">
						<i class="fa fa-refresh"></i>
					</div>
					<div class="text">
						<h3>Easy Returns</h3>
						<p>Our free two weeks return policy is very convenient and helpful for offering you a great shopping experience.</p>
					</div>
				</div>
				<!--features box-->
			</div>
			<!--features column-->
		</div>
	</div>
	<!--features section end-->
	<div class="space-30"></div>

	<%@ include file="foot.jsp" %>

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
	<!--revolution slider extentions-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/revolution/js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/revolution/js/jquery.themepunch.tools.min.js"></script>
	<!--revolution slider extentions-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	<script>
		/******************************************
		 -	PREPARE PLACEHOLDER FOR SLIDER	-
		 ******************************************/

		var revapi;
		jQuery(document).ready(function() {
			revapi = jQuery("#rev_slider").revolution({
				sliderType : "standard",
				sliderLayout : "auto",
				delay : 9000,
				navigation : {
					arrows : {
						enable : true
					}
				},
				gridwidth : 1230,
				gridheight : 500
			});
		}); /*ready*/
	</script>
</body>
</html>