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
			<h1>Review</h1>
		</div>
	</div>
	<!--end breadcrumb-->

	<div class="space-60"></div>
	<div class="container">
		<div class="table-responsive table-order-history">

				
				
				
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
</body>
</html>
