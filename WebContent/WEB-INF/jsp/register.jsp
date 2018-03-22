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
<!--sky form pro css-->
<link
	href="${pageContext.request.contextPath}/static/sky-form/css/sky-forms.css"
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
			alertify.set('notifier', 'position', 'top-center');
			var flag;
			if ("${message}" == "Successfully Deleted") {
				flag = "success";
			} else {
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
			<h1>Register</h1>
		</div>
	</div>
	<!--end breadcrumb-->

	<div class="space-60"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="sky-form-login">
					<form action="${pageContext.request.contextPath}/register"
						method="POST" class="sky-form">
						<h3 class="text-left">
							<i class="fa fa-user"></i>Create new account with Cyan
						</h3>

						<fieldset>
							<section>
								<label class="input"> <i class="icon-append fa fa-user"></i>
									<input type="text" name="username" placeholder="Username"
									required> <b class="tooltip tooltip-bottom-right">Enter
										Username</b>
								</label>
							</section>


							<section>
								<label class="input"> <i class="icon-append fa fa-lock"></i>
									<input type="password" name="password" placeholder="Password"
									id="password" required> <b
									class="tooltip tooltip-bottom-right">Don't forget your
										password</b>
								</label>
							</section>

							<section>
								<label class="input"> <i class="icon-append fa fa-lock"></i>
									<input type="password" name="passwordConfirm"
									placeholder="Confirm password" required> <b
									class="tooltip tooltip-bottom-right">Please confirm your
										password</b>
								</label>
							</section>

						</fieldset>

						<fieldset>
							<!-- <div class="row">
                                    <section class="col col-6">
                                        <label class="input">
                                            <input type="text" name="firstname" placeholder="First name">
                                        </label>
                                    </section>
                                    <section class="col col-6">
                                        <label class="input">
                                            <input type="text" name="lastname" placeholder="Last name">
                                        </label>
                                    </section>
                                </div> -->
							<section>
								<label class="input"> <i class="icon-append fa fa-user"></i>
									<input type="text" name="realName" placeholder="Full Name">
									<b class="tooltip tooltip-bottom-right">Enter your full
										name</b>
								</label>
							</section>

							<section>
								<label class="input"> <i
									class="icon-append fa fa-envelope-o"></i> <input type="email"
									name="email" placeholder="Email address"> <b
									class="tooltip tooltip-bottom-right">Enter valid email
										address</b>
								</label>
							</section>

							<section>
								<label class="input"> <i class="icon-append fa fa-phone"></i>
									<input type="phone" name="phone" placeholder="Phone Number">
									<b class="tooltip tooltip-bottom-right">Enter your phone
										number</b>
								</label>
							</section>

							<!--  <section>
                                    <label class="select">
                                        <select name="gender">
                                            <option value="0" selected disabled>Gender</option>
                                            <option value="1">Male</option>
                                            <option value="2">Female</option>
                                            <option value="3">Other</option>
                                        </select>
                                        <i></i>
                                    </label>
                                </section>-->

							<section>
								<label class="checkbox"><input type="checkbox"
									name="receiveEmail" id="subscription"><i></i>I want to
									receive news and special offers</label>
								<!-- <label class="checkbox"><input type="checkbox" name="terms" id="terms"><i></i>I agree with the Terms and Conditions</label> -->
							</section>
						</fieldset>
						<footer>
							<button type="submit" class="btn btn-skin btn-lg">Create
								account</button>
						</footer>
					</form>


				</div>
			</div>
			<!--col end-->
			<div class="col-md-6">
				<div class="login-register-aside-box">
					<h3>Already have an account!</h3>
					<br>
					<p>You can directly login to your account!</p>
					<p>Feel free to browse and shop at Cyan</p>
					<p>May you have a perfect shopping experience!</p>
					<br>
					<br> <a href='${pageContext.request.contextPath}/loginPage'
						class="btn btn-skin btn-lg">Login Now</a>
				</div>
			</div>
		</div>
	</div>
	<div class="space-60"></div>

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
	<!--sky form plugin js-->
	<script
		src="${pageContext.request.contextPath}/static/sky-form/js/jquery.form.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/static/sky-form/js/jquery.modal.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/static/sky-form/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		$(function() {
			// Validation		
			$("#sky-form").validate({
				// Rules for form validation
				rules : {
					username : {
						required : true
					},

					password : {
						required : true,
						minlength : 3,
						maxlength : 20
					},
					passwordConfirm : {
						required : true,
						minlength : 3,
						maxlength : 20,
						equalTo : '#password'
					}
				},
				// Messages for form validation
				messages : {
					login : {
						required : 'Please enter your login'
					},
					email : {
						required : 'Please enter your email address',
						email : 'Please enter a VALID email address'
					},
					password : {
						required : 'Please enter your password'
					},
					passwordConfirm : {
						required : 'Please enter your password one more time',
						equalTo : 'Please enter the same password as above'
					},
					firstname : {
						required : 'Please select your first name'
					},
					lastname : {
						required : 'Please select your last name'
					},
					gender : {
						required : 'Please select your gender'
					},
					terms : {
						required : 'You must agree with Terms and Conditions'
					}
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
