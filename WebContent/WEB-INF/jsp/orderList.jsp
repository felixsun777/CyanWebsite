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


<!-- Stylish Alert -->
<script
	src="${pageContext.request.contextPath}/static/js/alertify.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/alertify.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/default.min.css" />
</head>
<body>
	<script type="text/javascript">
		if ("${message}" != "") {
			alertify.set('notifier','position', 'top-center');
			alertify.notify('${message}', "success", 5, function() {
				console.log('dismissed');
			});
		}
		if ("${exception}" != "") {
			alertify.set('notifier','position', 'top-center');
			alertify.notify('${exception}', "error", 5, function() {
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
			<h1>order History</h1>
		</div>
	</div>
	<!--end breadcrumb-->

	<div class="space-60"></div>
	<div class="container">
<!-- 		<div class="row">
			<div class="col-sm-4 col-sm-offset-8">
				<form class="search-form">
					<input type="text" class="form-control" placeholder="Search Order">
					<i class="fa fa-search"></i>
				</form>
			</div>
		</div> -->
		<div class="table-responsive table-order-history">

				<!-- outer loop -->
				<c:forEach var="order" items="${ordersMap}">
					<div class="panel panel-default">
						<div class="panel-heading">
							Order No. ${order.key}
						</div>
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th style="text-align: center">Order Date</th>
									<th style="text-align: center">Status</th>
									<th style="text-align: center">Receiver</th>
									<th style="text-align: center">Phone</th>
									<th style="text-align: center">Email</th>
								</tr>
							</thead>
							<tbody>
								<tr class="odd gradeX">
									<td align="center">${order.value.orderDate}</td>
									<%-- <td align="center">${order.value.orderStatus}</td> --%>
									
									<c:if test="${order.value.orderStatus==1}">
									<td align="center"><span class="label-warning"><i class="fa fa-edit"></i></span>Placed</td>
									</c:if>
									<c:if test="${order.value.orderStatus==2}">
									<td align="center"><span class="label-warning"><i class="fa fa-truck"></i></span>Shipping</td>
									</c:if>
									<c:if test="${order.value.orderStatus==3}">
									<td align="center"><span class="label-success"><i class="fa fa-truck"></i></span>Shipped</td>
									</c:if>
									<c:if test="${order.value.orderStatus==4}">
									<td align="center"><span class="label-success"><i class="fa fa-check-circle"></i></span>Completed</td>
									</c:if>
									<c:if test="${order.value.orderStatus==5}">
									<td align="center"><span class="label-danger"><i class="fa fa-ban"></i></span>Canceled</td>
									</c:if>	
									
									<td align="center">${order.value.receiverName}</td>
									<td align="center">${order.value.phone}</td>
									<td align="center">${order.value.email}</td>
									
								</tr>
							</tbody>
							<thead>
								<tr>
									<th style="text-align: center">Address</th>
									<th style="text-align: center">State</th>
									<th style="text-align: center">City</th>
									<th style="text-align: center">Zip Code</th>
									<th style="text-align: center">Total</th>
								</tr>
							</thead>
							<tbody>
								<tr class="odd gradeX">
									<td align="center">${order.value.address}</td>
									<td align="center">${order.value.state}</td>
									<td align="center">${order.value.city}</td>
									<td align="center">${order.value.zip}</td>
									<td align="center" class="total-order">$${order.value.orderSum}</td>
								</tr>
							</tbody>
						</table>
						
						<div class="panel panel-default"></div>
						
						<!-- inner loop -->
						<div class="panel panel-default">
							<div class="panel-heading">
								Order Details
							</div>
							<table class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th style="text-align: center"></th>
										<th style="text-align: center">Product Name</th>
										<th style="text-align: center">Brand</th>
										<th style="text-align: center">Price</th>
										<th style="text-align: center">Quantity</th>
										<th style="text-align: center">Sub Total</th>
										<th style="text-align: center">Operation</th>
									</tr>
								</thead>
								<tbody>
								<c:set value="${order.key}" var="orderId"/>
								<c:forEach var="detail" items="${detailsMap.get(orderId)}">
									<tr>
										<td valign="middle" align="center">
										<a href="${pageContext.request.contextPath}/productDetail/${detail.productId}">
										<img src="${pageContext.request.contextPath}/${detail.image}" alt=""
											width="50"></a></td>
										<td valign="middle" align="center">
										<a href="${pageContext.request.contextPath}/productDetail/${detail.productId}">
										${detail.productName}</a></td>
										<td valign="middle" align="center">${detail.brand}</td>
										<!-- <td><span class="label-success"><i class="fa fa-check"></i></span>
											Success</td> -->
										<td align="center">$${detail.price}</td>
										<td align="center">${detail.quantity}</td>
										<td class="total-order" align="center">$${detail.total}</td>
										<td class="total-order" align="center" style="width:150px">
											<%-- <c:set value="${reviews[(detail.productId).intValue()]}" var="review"/> --%>
											<c:if test="${empty reviews[(detail.productId).intValue()]}">
												<button id="${order.key}_${detail.productId}" style="width:90px"
										 			class="btn btn-info" onclick="openReview(this)">Add Review
										 		</button>
											</c:if>
											<c:if test="${!empty reviews[(detail.productId).intValue()]}">
												<button id="${order.key}_${detail.productId}" style="width:90px"
										 			class="btn btn-success" onclick="openReview(this)">Reviewed
										 		</button>
											</c:if>
											<%-- ${reviews[(detail.productId).intValue()]} --%>
												
											
											
										</td>
									</tr>
									
									<tr id="review_${order.key}_${detail.productId}" style="display:none">
	
	
										<!-- if have not reviewed, then add new review -->
										<c:if test="${empty reviews[(detail.productId).intValue()]}">
											<form name="form_${detail.productId}" method="POST" 
											action="${pageContext.request.contextPath}/review/${detail.productId}">
											<td valign="middle" align="center" colSpan="5" style="height:68px">
												<input type="text" class="form-control mr-sm-2" placeholder="Review"
												name="reviewContent">
											</td>
											<td align="center" >Rank:&nbsp<select name="starRanking">
													<option value="5" selected>5</option>
													<option value="4">4</option>
													<option value="3">3</option>
													<option value="2">2</option>
													<option value="1">1</option>
												</select>
											</td>
											<td class="total-order" align="center">
												
													<button class="btn btn-info" type="submit"
												style="width:90px">Submit</button>
											</td>
											</form>
										</c:if>	
										
										<!-- if already have reviewed, then browse the review -->
										<c:if test="${!empty reviews[(detail.productId).intValue()]}">
											<td valign="middle" align="center" colSpan="5" style="height:68px">
												<input type="text" class="form-control mr-sm-2" disabled
												value="${reviews[(detail.productId).intValue()].reviewContent}">
												
											</td>
											<td align="center" >Rank:&nbsp
												<select  disabled>
													<option>${reviews[(detail.productId).intValue()].starRanking}</option>
												</select>
											</td>
											<td class="total-order" align="center">
											</td>
										</c:if>	
							
									</tr>
								</c:forEach>
								</tbody>
								</table>
							</div>
					</div>
					<div class="space-60"></div>
				</c:forEach>	
				
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
	<script src="${pageContext.request.contextPath}/static/bower_components/jquery/dist/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/jquery-migrate.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/static/js/jquery.easing.1.3.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/jquery.sticky.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/static/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/jquery.mousewheel.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/static/custom-scrollbar/jquery.mCustomScrollbar.concat.min.js"
		type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/static/bower_components/flexslider/jquery.flexslider-min.js"></script>
	<script src="${pageContext.request.contextPath}/static/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/static/js/tweetie.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/static/js/custom.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		function openReview(button){
			var review = document.getElementById("review_"+button.id);
			if(review.style.display == "none"){
				review.style.display = "";
 			}else{
 				review.style.display = "none";
			}
		}
		
		function submitReview(button){
			var id = button.id.split(":")[1];
			var input = document.getElementById("input_"+id).value;
			var select = document.getElementById("select_"+id).value;
			var productId = id.split("_")[1];
			var url = "${pageContext.request.contextPath}/review/" + productId;

			$.ajax({
		        url: url,
		        type: "post",
		        data: {
		            reviewContent : input,
		            starRanking : select
		        },
		        success: function (result) {
		            console.log(result);
		        }
		    });
		}
	</script>
	
</body>
</html>
