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
<script
	src="${pageContext.request.contextPath}/static/js/alertify.min.js"></script>
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


	<!--header start-->
	<header class="header">

		<!--main navigation start-->
		<!-- Static navbar -->
		<nav class="navbar navbar-default navbar-static-top yamm sticky">
			<div class="container">
				<div class="navbar-header">
					<!-- <button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button> -->
					<a class="navbar-brand" href="${pageContext.request.contextPath}/"><img
						src="${pageContext.request.contextPath}/static/images/logo.png"
						alt="logo"></a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<!-- <li class="active"><a href="index.html">Home</a></li> -->
						<!--mega menu-->
						<li class="dropdown yamm-fw active"><a href="#"
							class="dropdown-toggle js-activated" data-toggle="dropdown">Products<i
								class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu">
								<li>
									<div class="yamm-content">
										<div class="row">

											<%-- <div class="col-sm-3">
												<h3 class="heading">Base pages</h3>
												<ul class="nav mega-vertical-nav">
													<li><a href="${pageContext.request.contextPath}/loginPage"><i class="fa fa-lock"></i>
															Login</a></li>
													<li><a href="${pageContext.request.contextPath}/registerPage"><i class="fa fa-user"></i>
															Register</a></li>
													<li><a href="${pageContext.request.contextPath}/"><i
															class="fa fa-map-marker"></i> Contact </a></li>
												</ul>

											</div> --%>
											<div class="col-sm-3">
												<h3 class="heading">Departments</h3>
												<ul class="nav mega-vertical-nav">

													<c:forEach var="d" items="${departments}">
														<li><a href="${pageContext.request.contextPath}/productListByDepartment/${d.departmentId}"><i
																class="fa fa-list"></i>${d.departmentName}</a></li>
													</c:forEach>

												</ul>
											</div>
											<div class="col-sm-3">
												<h3 class="heading">Cart Pages</h3>
												<ul class="nav mega-vertical-nav">
													<li><a href="${pageContext.request.contextPath}/cart"><i
															class="fa fa-shopping-cart"></i> Cart</a></li>
													<li><a href="${pageContext.request.contextPath}/order"><i class="fa fa-truck"></i>
															Checkout</a></li>
													<li><a href="${pageContext.request.contextPath}/order/list"><i
															class="fa fa-sliders"></i> Order history </a></li>
													<!-- <li><a href="compare.html"><i class="fa fa-random"></i>
															Compare </a></li>
													<li><a href="wishlist.html"><i class="fa fa-heart"></i>
															Wishlist </a></li> -->
												</ul>
											</div>
											<div class="col-sm-3">
												<img
													src="${pageContext.request.contextPath}/static/images/bg/imac.jpg"
													class="img-responsive" alt="">
											</div>
										</div>
									</div>
								</li>
							</ul></li>
						<!--menu Features li end here-->
						<!--mega menu end-->
						<!--mega menu-->
						<li class="dropdown yamm-fw"><a href="#"
							class="dropdown-toggle js-activated" data-toggle="dropdown">Brands<i
								class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu">
								<li>
									<div class="yamm-content">
										<div class="row">

											<div class="col-sm-3">
												<h3 class="heading">Popular Brands</h3>
												<ul class="nav mega-vertical-nav">
													<c:forEach var="b" items="${brands}">
														<li><a href="${pageContext.request.contextPath}/productListByBrand/${b}">${b}</a></li>
													</c:forEach>
												</ul>

											</div>
											<div class="col-sm-3">
												<h3 class="heading">Trending Brands</h3>
												<ul class="nav mega-vertical-nav">
													<c:forEach var="b" items="${brands}">
														<li><a href="${pageContext.request.contextPath}/productListByBrand/${b}">${b}</a></li>
													</c:forEach>
												</ul>
											</div>
											<!-- <div class="col-sm-3">
												<h3 class="heading">Sample title</h3>
												<ul class="nav mega-vertical-nav">
													<li><a href="#">Nam ipsum est</a></li>
													<li><a href="#">Volutpat</a></li>
													<li><a href="#">In efficitur in</a></li>
													<li><a href="#">Accumsan eget</a></li>
													<li><a href="#">Curabitur</a></li>
												</ul>
											</div> -->
											<div class="col-sm-3">
												<img
													src="${pageContext.request.contextPath}/static/images/bg/beats.jpg"
													class="img-responsive" alt="">
											</div>
										</div>
									</div>
								</li>
							</ul></li>
						<!--menu Features li end here-->
						<!--mega menu end-->
						<!--                             <li class="dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown" role="button" aria-haspopup="true">Popular<i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Nam ipsum est</a></li>
                                    <li><a href="#">Volutpat</a></li>
                                    <li><a href="#">In efficitur in</a></li>
                                    <li><a href="#">Accumsan eget</a></li>
                                    <li><a href="#">Curabitur</a></li>
                                </ul>
                            </li> -->
						<li class="dropdown"><a href="#"
							class="dropdown-toggle js-activated" data-toggle="dropdown"
							role="button" aria-haspopup="true">Account<i
								class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu">
							
								<c:if test="${user != null}">
									<li><a href="${pageContext.request.contextPath}/cart"><i
										class="fa fa-shopping-cart"></i> Shopping Cart</a></li>
										
									<li><a href="${pageContext.request.contextPath}/order"><i
										class="fa fa-truck"></i> Check Out</a></li>
										
									<li><a href="${pageContext.request.contextPath}/order/list"><i
										class="fa fa-sliders"></i> Order History</a></li>
							
									<li><a href="${pageContext.request.contextPath}/logout"><i
										class="fa fa-unlock"></i> Logout</a></li>
								</c:if>
								<c:if test="${user == null}">
									<li><a href="${pageContext.request.contextPath}/cart"><i
										class="fa fa-shopping-cart"></i> Shopping Cart</a></li>
							
									<li><a href="${pageContext.request.contextPath}/loginPage"><i
										class="fa fa-lock"></i> Login</a></li>
										
									<li><a
									href="${pageContext.request.contextPath}/registerPage"><i
										class="fa fa-user-plus"></i> Register</a></li>
								</c:if>

							</ul></li>
						<li class="dropdown">
							<!-- <input class="form-control mr-sm-2"
							style="position: relative; left: 10px; bottom: -6px;"
							type="search" placeholder="Search" aria-label="Search">
						<li><a href="#"><i class="fa fa-search"></i></a></li> -->
							<form id="find" method="POST"
								action="${pageContext.request.contextPath}/search">
								<div class="input-group" id="search"
									style="position: relative; left: 30px; bottom: -7px; width: 330px">

									<input class="form-control mr-sm-2" type="text"
										placeholder="Search" aria-label="Search" name="productName"
										required> <span class="input-group-addon"> <a
										href="javascript:void(0)"
										onclick="document.forms['find'].submit();"><i
											class="fa fa-search"></i></a>
									</span>

								</div>
							</form>
						</li>

					</ul>


					<ul class="nav navbar-nav navbar-right">




						<c:if test="${user != null}">
							<li><a href="${pageContext.request.contextPath}/order/list"><i
									class="pe-7s-edit"></i> Orders</a></li>
						
							<li><a href="${pageContext.request.contextPath}/logout"><i
									class="pe-7s-unlock"></i> Logout</a></li>
						</c:if>
						<c:if test="${user == null}">
							<li class="hidden-xs"><a
								href="${pageContext.request.contextPath}/registerPage"><i
									class="pe-7s-add-user"></i> Register</a></li>
							<li><a href="${pageContext.request.contextPath}/loginPage"><i
									class="pe-7s-lock"></i> Login</a></li>
						</c:if>





						<li class="dropdown"><a href="${pageContext.request.contextPath}/cart"
							class="dropdown-toggle js-activated" data-toggle="dropdown"
							role="button" aria-haspopup="true"><i class="pe-7s-cart"></i>
								<span class="badge">${cartsize}</span></a> 
								
								
								<c:if test="${cartsize != null}">

								<div class="dropdown-menu shopping-cart">

									<div class="cart-items content-scroll">
										<c:forEach var="cp" items="${cart}">
											<div class="cart-item clearfix">
												<div class="img">
													<a
														href="${pageContext.request.contextPath}/productDetail/${cp.productId}"><img
														src="${pageContext.request.contextPath}/${cp.image}"
														alt="" class="img-responsive"></a>
												</div>
												<!--img-->
												<div class="description">
													<a
														href="${pageContext.request.contextPath}/productDetail/${cp.productId}">${cp.productName}</a><strong
														class="price">${cp.quantity} x $${cp.price}</strong>
												</div>
												<!--Description-->
												<div class="buttons">
													<!-- <a href="#" class="fa fa-pencil"></a> -->
													<a href="${pageContext.request.contextPath}/cart/deleteCart/${cp.productId}" class="fa fa-trash-o"></a>
												</div>
											</div>
										</c:forEach>
									</div>
									<!--cart-items-->

									<div class="cart-item clearfix" style="text-align: center;">
										<strong class="price" style="text-align: center;">Subtotal
											(${cartsize} items): $${carttotal}</strong>
									</div>

									<div class="cart-footer">
										<a href="${pageContext.request.contextPath}/cart"
											class="btn btn-light-dark"> View Cart</a> <a
											href="${pageContext.request.contextPath}/order"
											class="btn btn-skin"> Checkout</a>
									</div>
									<!--footer of cart-->
								</div>
								<!--cart dropdown end-->


							</c:if>
							
						</li>

					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
			<!--/.container-fluid -->
		</nav>
		<!--main navigation end-->
	</header>
	<!--header end-->