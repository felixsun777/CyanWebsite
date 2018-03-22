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
			<h1>Checkout</h1>
		</div>
	</div>
	<!--end breadcrumb-->

	<div class="space-60"></div>
	<div class="container sky-checkout-form">

		<form action="${pageContext.request.contextPath}/order/placeOrder" method="POST" id="checkout-form" class="sky-form">
			<fieldset>
			<div class="row"><section class="col col-6"><h2 class="section-heading">Please input the receiver's information</h2></section></div>
			
				<div class="row">
					<section class="col col-6">
						<label class="input"> <i class="icon-prepend fa fa-user"></i>
							<input type="text" name="receiverName" placeholder="Receiver Name">
						</label>
					</section>
					<!-- <section class="col col-6">
						<label class="input"> <i class="icon-prepend fa fa-user"></i>
							<input type="text" name="lname" placeholder="Last name">
						</label>
					</section> -->
				</div>

				<div class="row">
					<section class="col col-6">
						<label class="input"> <i
							class="icon-prepend fa fa-envelope"></i> <input type="email"
							name="email" placeholder="E-mail">
						</label>
					</section>
					<section class="col col-6">
						<label class="input"> <i class="icon-prepend fa fa-phone"></i>
							<input type="tel" name="phone" id="phone" placeholder="Phone">
						</label>
					</section>
				</div>
			</fieldset>

			<fieldset>
			<div class="row"><section class="col col-6"><h2 class="section-heading">Please input the receiver's address</h2></section></div>
				<div class="row">
					<section class="col col-5">
						<label class="select"> <select name="state">
								<option value="0" selected disabled>State</option>
								<option value="AL">Alabama</option>
								<option value="AK">Alaska</option>
								<option value="AZ">Arizona</option>
								<option value="AR">Arkansas</option>
								<option value="CA">California</option>
								<option value="CO">Colorado</option>
								<option value="CT">Connecticut</option>
								<option value="DE">Delaware</option>
								<option value="DC">District Of Columbia</option>
								<option value="FL">Florida</option>
								<option value="GA">Georgia</option>
								<option value="HI">Hawaii</option>
								<option value="ID">Idaho</option>
								<option value="IL">Illinois</option>
								<option value="IN">Indiana</option>
								<option value="IA">Iowa</option>
								<option value="KS">Kansas</option>
								<option value="KY">Kentucky</option>
								<option value="LA">Louisiana</option>
								<option value="ME">Maine</option>
								<option value="MD">Maryland</option>
								<option value="MA">Massachusetts</option>
								<option value="MI">Michigan</option>
								<option value="MN">Minnesota</option>
								<option value="MS">Mississippi</option>
								<option value="MO">Missouri</option>
								<option value="MT">Montana</option>
								<option value="NE">Nebraska</option>
								<option value="NV">Nevada</option>
								<option value="NH">New Hampshire</option>
								<option value="NJ">New Jersey</option>
								<option value="NM">New Mexico</option>
								<option value="NY">New York</option>
								<option value="NC">North Carolina</option>
								<option value="ND">North Dakota</option>
								<option value="OH">Ohio</option>
								<option value="OK">Oklahoma</option>
								<option value="OR">Oregon</option>
								<option value="PA">Pennsylvania</option>
								<option value="RI">Rhode Island</option>
								<option value="SC">South Carolina</option>
								<option value="SD">South Dakota</option>
								<option value="TN">Tennessee</option>
								<option value="TX">Texas</option>
								<option value="UT">Utah</option>
								<option value="VT">Vermont</option>
								<option value="VA">Virginia</option>
								<option value="WA">Washington</option>
								<option value="WV">West Virginia</option>
								<option value="WI">Wisconsin</option>
								<option value="WY">Wyoming</option>
						</select> <i></i>
						</label>
					</section>

					<section class="col col-4">
						<label class="input"> <input type="text" name="city"
							placeholder="City">
						</label>
					</section>

					<section class="col col-3">
						<label class="input"> <input type="text" name="zip"
							id="zip" placeholder="Zip Code">
						</label>
					</section>
				</div>

				<section>
					<label for="file" class="input"> <input type="text"
						name="address" placeholder="Address">
					</label>
				</section>

				<!-- <section>
					<label class="textarea"> <textarea rows="3" name="info"
							placeholder="Additional info"></textarea>
					</label>
				</section> -->
			</fieldset>

			<fieldset>
				
					<!-- <div class="inline-group">
						<label class="radio"><input type="radio"
							name="radio-inline" checked><i></i>Visa</label> <label
							class="radio"><input type="radio" name="radio-inline"><i></i>MasterCard</label>
						<label class="radio"><input type="radio"
							name="radio-inline"><i></i>PayPal</label>
					</div> -->
					<div class="row"><section class="col col-6"><h2 class="section-heading">Please input the credit card information</h2></section></div>
				

				<section>
					<label class="input"> <input type="text" name="holderName"
						placeholder="Name On Card">
					</label>
				</section>

				<div class="row">
					<section class="col col-10">
						<label class="input"> <input type="text" name="cardNumber"
							id="cardNumber" placeholder="Card Number">
						</label>
					</section>
					<section class="col col-2">
						<label class="input"> <input type="text" name="cvv"
							id="cvv" placeholder="CVV">
						</label>
					</section>
				</div>

				<div class="row">
					<label class="label col col-4">Expiration date</label>
					<section class="col col-5">
						<label class="select"> <select name="expireMonth">
								<option value="0" selected disabled>Month</option>
								<option value="1">January</option>
								<option value="1">February</option>
								<option value="3">March</option>
								<option value="4">April</option>
								<option value="5">May</option>
								<option value="6">June</option>
								<option value="7">July</option>
								<option value="8">August</option>
								<option value="9">September</option>
								<option value="10">October</option>
								<option value="11">November</option>
								<option value="12">December</option>
						</select> <i></i>
						</label>
					</section>
					<section class="col col-3">
						<label class="input"> <input type="text" name="expireYear"
							id="year" placeholder="Year">
						</label>
					</section>
				</div>
			</fieldset>
			<div class="space-30"></div>
			<div class="cart-total">
				<fieldset>

					<h2>Cart total</h2>
					<table class="table table-bordered">

						<tbody>
							<tr>
								<td>Subtotal</td>
								<td class="color">$${carttotal}</td>
							</tr>
							<tr>
								<td>Shipping</td>
								<td class="color">Free Shipping</td>
							</tr>
							<tr>
								<td>Total</td>
								<td class="total color">$${carttotal}</td>
							</tr>

						</tbody>
					</table>

				</fieldset>
			</div>
			<div class="space-30"></div>
			<footer class="text-right">
			<a href="${pageContext.request.contextPath}/cart" class="btn btn-light-dark btn-lg">Return to Cart</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				<button type="submit" class="btn btn-skin btn-lg">Place the Order</button>
			</footer>
		</form>

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
		src="${pageContext.request.contextPath}/static/sky-form/js/jquery.maskedinput.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/static/sky-form/js/jquery.validate.min.js"
		type="text/javascript"></script>

	<script type="text/javascript">
		$(function() {
			// Masking
			$('#cvv').mask('999', {
				placeholder : 'X'
			});
			$('#cardNumber').mask('9999 9999 9999 9999', {
				placeholder : 'X'
			});
			$('#year').mask('2099', {
				placeholder : 'X'
			});
			$('#zip').mask('99999', {
				placeholder : 'X'
			});
			$('#phone').mask('999-999-9999', {
				placeholder : 'X'
			});

			// Add validation method
			$.validator
					.addMethod("creditcard", function(value, element, param) {
						if (/[^0-9\-]+/.test(value)) {
							return false;
						}
					}, $.validator
							.format('Please enter a valid credit card number.'));

			// Validation
			$('#checkout-form').validate({
				// Rules for form validation
				rules : {
					receiverName : {
						required : true
					},
					email : {
						required : true,
						email : true
					},
					phone : {
						required : true
					},
					country : {
						required : true
					},
					city : {
						required : true
					},
					zip : {
						required : true,
						digits : true
					},
					address : {
						required : true
					},
					holderName : {
						required : true
					},
					cardNumber : {
						required : true
					},
					cvv : {
						required : true,
						digits : true
					},
					month : {
						required : true
					},
					year : {
						required : true,
						digits : true
					}
				},
				// Messages for form validation
				messages : {
					receiverName : {
						required : 'Please enter your full name'
					},
					email : {
						required : 'Please enter your email address',
						email : 'Please enter a VALID email address'
					},
					phone : {
						required : 'Please enter your phone number'
					},
					country : {
						required : 'Please select your country'
					},
					city : {
						required : 'Please enter your city'
					},
					zip : {
						required : 'Please enter the zip code',
						digits : 'Digits only please'
					},
					address : {
						required : 'Please enter your full address'
					},
					holderName : {
						required : 'Please enter name on your card'
					},
					cardNumber : {
						required : 'Please enter your card number'
					},
					cvv : {
						required : 'Enter CVV2',
						digits : 'Digits only'
					},
					month : {
						required : 'Select month'
					},
					year : {
						required : 'Enter year',
						digits : 'Digits only please'
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
