package com.cyan.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cyan.entity.CartItemProduct;
import com.cyan.entity.Customer;
import com.cyan.service.CartService;
import com.cyan.service.CustomerService;

@Controller
public class LoginController {

	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private CartService cartService;
	
	
	@RequestMapping("/loginPage")
	public String loginPage() {
		return "login";
	}
	
	
	@RequestMapping("/login")
	public void login(Customer customer,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		
		if(session.getAttribute("user") != null) {
			request.setAttribute("message", "You've already logged in" + customer.getUsername());
			request.getRequestDispatcher("/").forward(request, response);
		}
		
		
		if(customer.getUsername()==null || customer.getPassword()==null) {
			request.setAttribute("message", "Incorrect username or password");
			request.getRequestDispatcher("/loginPage").forward(request, response);
		}else {
			if(customerService.verify(customer)) {
				customer = customerService.getCustomerByUserName(customer.getUsername());
				session.setAttribute("user", customer);
				
				//Add cookie shopping cart items to db
				Cookie[] cookies = request.getCookies();
				if(cookies!=null) {
					for(Cookie cookie : cookies) {
						if(cookie.getName().equals("cart")) {
							if(!cookie.getValue().equals("")) {
								Map<Integer,Integer> productQuantity = parseCookieToMap(cookie);
								for(Integer productId : productQuantity.keySet()) {
									Integer quantity = productQuantity.get(productId);
									cartService.addProductToCart(customer.getUsername(), productId, quantity);
								}
								//clear the cookie
								cookie.setValue("");
								response.addCookie(cookie);
							}
						}
					}
				}
				
				List<CartItemProduct> cartItems = cartService.getCartItemProducts(customer.getUsername());
				if(cartItems.size()>0) {
					Double cartTotal = cartItems.stream().mapToDouble(CartItemProduct::getTotal).reduce((x,y) -> x+y).getAsDouble();
					session.setAttribute("cart", cartItems);
					session.setAttribute("cartsize", cartItems.size());
					session.setAttribute("carttotal", cartTotal);
				}
				request.setAttribute("message", "Welcome to Cyan! Dear " + customer.getUsername());
				request.getRequestDispatcher("/").forward(request, response);
			}else {
				request.setAttribute("message", "Incorrect username or password");
				request.getRequestDispatcher("/loginPage").forward(request, response);
			}
		}
		
	}
	
	//parse the cookie to get the map of productId and its quantity
	private Map<Integer,Integer> parseCookieToMap(Cookie cookie){
		Map<Integer,Integer> productQuantity = new HashMap<>();
		String[] products = cookie.getValue().split("\\?");
		for(String product : products) {
			Integer productId = Integer.parseInt(product.split("/")[0]);
			Integer quantity = Integer.parseInt(product.split("/")[1]);
			productQuantity.put(productId,quantity);
		}
		return productQuantity;
	}
	
	@RequestMapping("/logout")
	public void logout(HttpServletRequest request,HttpServletResponse response, HttpSession session) {
		session.removeAttribute("user");
		session.removeAttribute("cart");
		session.removeAttribute("cartsize");
		session.removeAttribute("carttotal");
		
		//clear the cookie
		Cookie[] cookies = request.getCookies();
		if(cookies!=null) {
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("cart")) {
					if(!cookie.getValue().equals("")) {
						cookie.setValue("");
						response.addCookie(cookie);
					}
				}
			}
		}
		
		try {
			request.getRequestDispatcher("/").forward(request, response);
		} catch (ServletException | IOException e) {		
			e.printStackTrace();
		}
	}
	
}
