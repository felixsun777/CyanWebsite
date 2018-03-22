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
        <!--custom css file-->
        <link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet">

	 <script type="text/javascript">
		function confirmation_delete(id, button) {
			confirm = document.getElementById("delete_confirm_" + id);
			button.style.display = "none";
			confirm.style.display = "inline";
		}
		function confirmation_update(id, button) {
			update = document.getElementById("update_confirm_" + id);
			button.style.display = "none";
			update.style.display = "inline";
		}
		function submitUpdate(formId){
			var form = document.getElementById(formId+"_form");
			form.action = "${pageContext.request.contextPath}/cart/updateCart/";
			form.submit();
		}
	</script>
    </head>
    <body>

        <!--header start-->
        <jsp:include page="head.jsp"></jsp:include>
        <!--header end-->

        <!--breadcrumb start-->
        <div class="breadcrumb-wrapper">
            <div class="container">
                <h1>Shopping Cart</h1>
            </div>
        </div>
        <!--end breadcrumb-->

        <div class="space-60"></div>
        <div class="container">
            <div class="table-responsive">
                <table class="table table-condensed cart-table">
                    <thead>
                        <tr>
                            <th></th>
                            <th>Product</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th align="center">Operation</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach var="c" items="${cart}">
                        <tr>
                            <td class="product-image">
                                <img src="${pageContext.request.contextPath}/${c.image}" alt="" width="80">
                            </td>
                            <form id="${c.productId}_form" method="POST">
                            <td class='product-name'><a href='${pageContext.request.contextPath}/productDetail/${c.productId}'>${c.productName}</a></td>
                            <td class="product-price">$${c.price}</td>
                            <td class="product-quantity">
                                <input type="number" value="${c.quantity}" min="1" class="fl qty-text" name="quantity">
                                <input name="productId" value="${c.productId}" hidden=true>
                            </td>
                            <td class="product-total">
                                $${c.total}
                            </td>
                            <td class='product-delete' align="center" style="width:80px">
                            <!-- <a href='#' data-toggle='tooltip' data-placement='top' title='Remove this item'><i class="fa fa-times"></i></a> -->
                            		<button id="update_${c.productId}" style="width:90px"
										type="button" class="btn btn-info" onclick="confirmation_update(${c.productId},this);">Update
								</button>
								
								<button type="button" class="btn btn-success" id="update_confirm_${c.productId}"
										style="display: none; width: 90px"
										onclick="submitUpdate(${c.productId});">Confirm</button>
								
								<button id="delete_${c.productId}" style="width:90px"
										type="button" class="btn btn-warning" onclick="confirmation_delete(${c.productId},this);">Delete
								</button>
								
								
                            		<button type="button" class="btn btn-danger" id="delete_confirm_${c.productId}"
										style="display: none; width: 90px"
										onclick="location='${pageContext.request.contextPath}/cart/deleteCart/${c.productId}'">Confirm</button>
                            </td>
                            </form>
                        </tr>
					</c:forEach>
                    </tbody>
                </table><!--cart table-->             
            </div>
            <div class="space-20"></div>
            <div class="coupon-row">
                <div class="row">
                    <div class="col-sm-4">

                    </div>   
<%--                     <div class="col-sm-3 col-sm-offset-5 text-right">
                        <a href="${pageContext.request.contextPath}/cart/updateCart" class="btn btn-light-dark">Update Cart</a>
                    </div> --%>
                </div>
            </div><!--cart row-->
            <div class="space-30"></div>
            <div class="cart-total">
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-8">
                        <h2>Cart total</h2>
                        <table class="table table-condensed">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Subtotal</td>
                                    <td>$${carttotal}</td>
                                </tr>
                                 <tr>
                                    <td>Shipping</td>
                                    <td>Free Shipping</td>
                                </tr>
                                 <tr>
                                    <td>Total</td>
                                    <td class="total">$${carttotal}</td>
                                </tr>
                                <tr>
                                    <td colspan="2"> <a href="${pageContext.request.contextPath}/order" class="btn btn-lg btn-skin">Proceed to checkout</a></td>
                                </tr>
                            </tbody>
                        </table>
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
    </body>
</html>
