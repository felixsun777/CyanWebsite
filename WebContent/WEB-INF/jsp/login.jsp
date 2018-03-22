<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Cyan Website</title>

<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--plugins-->
<link href="${pageContext.request.contextPath}/static/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/bower_components/flexslider/flexslider.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/owl-carousel/owl.theme.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/owl-carousel/owl.transitions.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/pe-icons/Pe-icon-7-stroke.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/custom-scrollbar/jquery.mCustomScrollbar.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/yamm.css" rel="stylesheet">
<!--sky form pro css-->
<link href="${pageContext.request.contextPath}/static/sky-form/css/sky-forms.css" rel="stylesheet">
<!--custom css file-->
<link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet">

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
			alertify.notify('${message}', flag, 5, function() {
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
			<h1>Login</h1>
		</div>
	</div>
	<!--end breadcrumb-->

	<div class="space-60"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="sky-form-login">
					<form action="${pageContext.request.contextPath}/login" method="POST" class="sky-form">

						<h3 class="text-left">
							<i class="fa fa-unlock"></i>Log in to your account
						</h3>
						<fieldset>
							<section>
								<div class="row">
									<label class="label col col-4">Your Username</label>
									<div class="col col-8">
										<label class="input"> <i
											class="icon-append fa fa-user"></i> <input type="text"
											name="username" required>
										</label>
									</div>
								</div>
							</section>

							<section>
								<div class="row">
									<label class="label col col-4">Enter Password</label>
									<div class="col col-8">
										<label class="input"> <i
											class="icon-append fa fa-lock"></i> <input type="password"
											name="password" required>
										</label>
										<div class="note">
											<!-- <a href="#sky-form2" class="modal-opener">Forgot
												password?</a> -->
										</div>
									</div>
								</div>
							</section>

							<!-- <section>
								<div class="row">
									<div class="col col-4"></div>
									<div class="col col-8">
										<label class="checkbox"><input type="checkbox"
											name="remember" checked><i></i>Keep me logged in</label>
									</div>
								</div>
							</section> -->
						</fieldset>
						<footer class="text" >
							<button type="submit" class="btn btn-lg btn-skin">Log in</button>
						</footer>
					</form>
					<!--login form-->
					<!--password recovery form start-->
					<!-- <form action="sky-form/php_files/demo-login-process.php"
						id="sky-form2" class="sky-form sky-form-modal">
						<header>Password recovery</header>

						<fieldset>
							<section>
								<label class="label">E-mail</label> <label class="input">
									<i class="icon-append fa fa-envelope-o"></i> <input
									type="email" name="email" id="email">
								</label>
							</section>
						</fieldset>

						<footer>
							<button type="submit" name="submit" class="button">Submit</button>
							<a href="#" class="button button-secondary modal-closer">Close</a>
						</footer>

						<div class="message">
							<i class="fa fa-check"></i>
							<p>
								Your request successfully sent!<br> <a href="#"
									class="modal-closer">Close window</a>
							</p>
						</div>
					</form> -->

					<!--password-recovery form end-->
				</div>
			</div>
			<!--col end-->
			<div class="col-md-6">
				<div class="login-register-aside-box">
					<h3>Don't have an account yet?</h3>
					<br>
					<p>You can have a account conveniently!</p>
					<p>Just submit some basic information about yourself.</p>
					<p>Then you are good to go!</p>
					<br><br><a href='${pageContext.request.contextPath}/registerPage' class="btn btn-lg btn-skin">Register
						Now</a>
				</div>
			</div>
		</div>
	</div>
	<div class="space-60"></div>

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
        <script src="${pageContext.request.contextPath}/static/custom-scrollbar/jquery.mCustomScrollbar.concat.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/static/bower_components/flexslider/jquery.flexslider-min.js"></script>
        <script src="${pageContext.request.contextPath}/static/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/static/js/tweetie.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/static/js/custom.js" type="text/javascript"></script>
        <!--sky form plugin js-->
        <script src="${pageContext.request.contextPath}/static/sky-form/js/jquery.form.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/static/sky-form/js/jquery.modal.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/static/sky-form/js/jquery.validate.min.js" type="text/javascript"></script>
	<script
		type="${pageContext.request.contextPath}/static/text/javascript">
		$(function() {
			// Validation for login form
			$("#sky-form").validate({
				// Rules for form validation
				rules : {
					email : {
						required : true,
						email : true
					},
					password : {
						required : true,
						minlength : 3,
						maxlength : 20
					}
				},
				// Messages for form validation
				messages : {
					email : {
						required : 'Please enter your email address',
						email : 'Please enter a VALID email address'
					},
					password : {
						required : 'Please enter your password'
					}
				},
				// Do not change code below
				errorPlacement : function(error, element) {
					error.insertAfter(element.parent());
				}
			});

			// Validation for recovery form
			$("#sky-form2")
					.validate(
							{
								// Rules for form validation
								rules : {
									email : {
										required : true,
										email : true
									}
								},
								// Messages for form validation
								messages : {
									email : {
										required : 'Please enter your email address',
										email : 'Please enter a VALID email address'
									}
								},
								// Ajax form submition					
								submitHandler : function(form) {
									$(form)
											.ajaxSubmit(
													{
														beforeSend : function() {
															$(
																	'#sky-form button[type="submit"]')
																	.attr(
																			'disabled',
																			true);
														},
														success : function() {
															$("#sky-form2")
																	.addClass(
																			'submited');
														}
													});
								},
								// Do not change code below
								errorPlacement : function(error, element) {
									error.insertAfter(element.parent());
								}
							});
		});
	</script>

</body>
</html>
