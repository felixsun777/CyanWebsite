package com.cyan.controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tools.ant.taskdefs.optional.javah.Kaffeh;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cyan.entity.Orders;
import com.cyan.entity.Review;
import com.cyan.entity.CartItemProduct;
import com.cyan.entity.Creditcard;
import com.cyan.entity.Customer;
import com.cyan.entity.OrderDetailProduct;
import com.cyan.entity.Orderdetail;
import com.cyan.entity.Orders;
import com.cyan.service.CartService;
import com.cyan.service.CustomerService;
import com.cyan.service.EmailService;
import com.cyan.service.OrderService;
import com.cyan.service.ReviewService;

@Controller
public class OrderController {

	@Autowired 
	private OrderService orderService;
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private EmailService emailService;
	
	@RequestMapping("/order")
	public String order(HttpSession session,Map<String, String> map) {
		if(session.getAttribute("user")==null) {
			map.put("message", "Please login first.Thank you!");
			return "login";
		}
		return "order";
	}
	
	@RequestMapping("/order/list")
	public String orderList(HttpSession session,Map<String, Object> map) {
		if(session.getAttribute("user")==null) {
			map.put("message", "Please login first.Thank you!");
			return "login";
		}
		Integer userId = ((Customer)session.getAttribute("user")).getUserId();
		List<Object> value = orderService.getOrderHistory(userId);
		LinkedHashMap<Integer, Orders> ordersMap = (LinkedHashMap<Integer, Orders>) value.get(0);
		LinkedHashMap<Integer, List<OrderDetailProduct>> detailsMap = (LinkedHashMap<Integer, List<OrderDetailProduct>>) value.get(1);
		Map<Integer, Review> reviews = reviewService.getReviewsByUser(userId).stream().collect(Collectors.toMap(Review::getProductId , r -> r));
		map.put("reviews", reviews);
		map.put("ordersMap", ordersMap);
		map.put("detailsMap", detailsMap);
		return "orderList";
	}
	
	@RequestMapping("/order/placeOrder")
	public String placeOrder(HttpSession session,Map<String, String> map, Creditcard creditcard, Orders order) throws MessagingException {
		if(session.getAttribute("user")==null) {
			map.put("message", "Please login first.Thank you!");
			return "login";
		}
		
		Customer user = (Customer) session.getAttribute("user");
		
		List<CartItemProduct> cartItems = (List<CartItemProduct>)session.getAttribute("cart");
		Double cartTotal = (Double) session.getAttribute("carttotal");
		if(cartItems!=null && cartTotal!=null) {
			creditcard.setUserId(user.getUserId());
			order.setUserId(user.getUserId());
			order.setOrderDate(new Date());
			order.setOrderStatus((byte)1);
			order.setOrderSum(cartTotal);
			orderService.placeOrder(creditcard, order, cartItems,user);
			Customer customer = customerService.getCustomerByUserId(user.getUserId());
			String email = customer.getEmail();
			if(email != null) {
				emailService.SendEmail(email, "Order Placed", "Congratulations Dear Customer "
						+customer.getUsername()+"! Your order has been placed successfully!");
			}
			session.removeAttribute("cart");
			session.removeAttribute("carttotal");
			session.removeAttribute("cartsize");
			map.put("message", "Successfully Ordered.Thank you!");
			return "index";
		}else {
			map.put("exception", "You have no order item");
		}
		return "order";
		
	}
}
