package com.cyan.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cyan.entity.CartItemProduct;
import com.cyan.entity.Customer;
import com.cyan.entity.Product;
import com.cyan.service.CartService;
import com.sun.org.glassfish.gmbal.ParameterNames;

@Controller
public class CartController {

	@Autowired
	private CartService cartService;
	
	@RequestMapping("/cart")
	public String cartPage() {
		return "cart";
	}
	
	@RequestMapping("/cart/updateCart/")
	public String updateCart(CartItemProduct cartItemProduct, HttpSession session) {
		
		Customer customer = (Customer) session.getAttribute("user");
		
		//update the change to db
		cartService.updateCart(customer.getUserId(), cartItemProduct.getProductId(), cartItemProduct.getQuantity());
		
		
		//get CartItemProducts from db
		List<CartItemProduct> cartItems = cartService.getCartItemProducts(customer.getUsername());
		Double cartTotal = cartItems.stream().mapToDouble(CartItemProduct::getTotal).reduce((x,y) -> x+y).getAsDouble();
		
		//set CartItemProducts to session
		session.setAttribute("cart", cartItems);
		session.setAttribute("cartsize", cartItems.size());
		session.setAttribute("carttotal", cartTotal);
		return "cart";
	}

	@RequestMapping("/cart/deleteCart/{productId}")
	public String deleteCart(@PathVariable Integer productId, HttpSession session) {
		
		Customer customer = (Customer) session.getAttribute("user");
		
		//update the change to db
		cartService.deleteCartItem(customer.getUserId(), productId);
		
		//get CartItemProducts from db
		List<CartItemProduct> cartItems = cartService.getCartItemProducts(customer.getUsername());
		
		Double cartTotal = cartItems.stream().mapToDouble(CartItemProduct::getTotal).reduce(0,(x,y) -> x+y);
		
		//set CartItemProducts to session
		session.setAttribute("cart", cartItems);
		session.setAttribute("cartsize", cartItems.size());
		session.setAttribute("carttotal", cartTotal);
		return "cart";
	}
	
	@RequestMapping("/addCart")
	public void addToCart(Integer productId, Integer quantity, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws ServletException, IOException {
		
		Customer customer = (Customer) session.getAttribute("user");
		Cookie cookie = null;
		if(customer==null) {
			Cookie[] cookies = request.getCookies();
			if(cookies!=null) {
				for(Cookie c : cookies) {
					if(c.getName().equals("cart")) {
						cookie = c;
					}
				}
			}
			if(cookie==null) {
				cookie = new Cookie("cart", productId+"/"+quantity+"?");
			}else {
				String current = cookie.getValue();
				if(current.contains(productId+"/")) {
					int begin1 = current.indexOf(productId+"/");	
					int begin2 = current.indexOf("/",begin1);		
					int end = current.indexOf("?",begin2);		
					Integer q = Integer.parseInt(current.substring(begin2+1, end));
					q++;
					current = new StringBuilder(current).replace(begin2+1, end, q+"").toString();
					cookie.setValue(current);
				}else {
					cookie.setValue(cookie.getValue()+productId+"/"+quantity+"?");
				}
			}
			cookie.setMaxAge(1*30*24*3600);
			cookie.setPath("/CyanWeb");
			
			response.addCookie(cookie);
		}else {
			cartService.addProductToCart(customer.getUsername(), productId, quantity);
			List<CartItemProduct> cartItems = cartService.getCartItemProducts(customer.getUsername());
			Double cartTotal = cartItems.stream().mapToDouble(CartItemProduct::getTotal).reduce((x,y) -> x+y).getAsDouble();
			session.setAttribute("cart", cartItems);
			session.setAttribute("cartsize", cartItems.size());
			session.setAttribute("carttotal", cartTotal);
		}

		request.setAttribute("message", "Added the product to the cart!");
		request.getRequestDispatcher("/productDetail/" + productId).forward(request, response);
	}
}
