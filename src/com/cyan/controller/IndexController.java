package com.cyan.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cyan.entity.Cart;
import com.cyan.entity.CartItemProduct;
import com.cyan.entity.Customer;
import com.cyan.entity.Department;
import com.cyan.entity.Product;
import com.cyan.service.CartService;
import com.cyan.service.DepartmentService;
import com.cyan.service.ProductService;
import com.sun.org.apache.bcel.internal.generic.NEW;

@Controller
public class IndexController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private DepartmentService departmentService;

	
	@RequestMapping("/")
	public String index(Map<String, Object> map, HttpServletRequest request, HttpSession session) {
		List<Product> newArrival = productService.getNewArrival();
		List<Product> mostPopular = productService.getMostPopular();
		List<Department> departments = departmentService.retrieveAllDepartments();
		List<String> brands = productService.getBrands().subList(0, 5);
		session.setAttribute("departments", departments);
		session.setAttribute("brands", brands);
		map.put("arrival", newArrival);
		map.put("popular", mostPopular);
		if(session.getAttribute("user") == null) {
			Cookie[] cookies = request.getCookies();
			if(cookies!=null) {
				List<Cookie> cookieList = Arrays.stream(cookies)
						.filter(c -> c.getName().equals("cart"))
						.filter(c -> !c.getValue().equals(""))
						.collect(Collectors.toList());
				if(cookieList.size() > 0) {
					Cookie cookie = cookieList.get(0);
					List<Integer> productIds = parseCookieToList(cookie);
					Map<Integer,Integer> productQuantity = parseCookieToMap(cookie);
					List<Product> productsInfo = productService.getProductsByIds(productIds);
					List<CartItemProduct> cartItems = createCartList(productsInfo,productQuantity);
					Double cartTotal = cartItems.stream().mapToDouble(CartItemProduct::getTotal).reduce((x,y) -> x+y).getAsDouble();
					session.setAttribute("cart", cartItems);
					session.setAttribute("cartsize", cartItems.size());
					session.setAttribute("carttotal", cartTotal);
				}
			}
					
//			if(cookies!=null) {
//				for(Cookie cookie : cookies) {
//					if(cookie.getName().equals("cart")) {
//						if(!cookie.getValue().equals("")) {
//							List<Integer> productIds = parseCookieToList(cookie);
//							Map<Integer,Integer> productQuantity = parseCookieToMap(cookie);
//							List<Product> productsInfo = productService.getProductsByIds(productIds);
//							List<CartItemProduct> cartItems = createCartList(productsInfo,productQuantity);
//							Double cartTotal = cartItems.stream().mapToDouble(CartItemProduct::getTotal).reduce((x,y) -> x+y).getAsDouble();
//							session.setAttribute("cart", cartItems);
//							session.setAttribute("cartsize", cartItems.size());
//							session.setAttribute("carttotal", cartTotal);
//						}
//					}
//				}
//			}
			
		}
		return "index";
	}
	
	//from the cookie get the cart products to display on the page
	private List<CartItemProduct> createCartList(List<Product> productsInfo, Map<Integer,Integer> productQuantity){
		List<CartItemProduct> cartItemProducts = new ArrayList<>();
		
		for (Product p : productsInfo) {
			CartItemProduct cip = new CartItemProduct();
			cip.setProductId(p.getProductId());
			cip.setImage(p.getImage());
			Double price = p.getPrice();
			Integer quantity = productQuantity.get(p.getProductId());
			cip.setPrice(price);
			cip.setProductName(p.getProductName());
			cip.setQuantity(quantity);
			cip.setTotal(price*quantity);
			cartItemProducts.add(cip);
		}
		return cartItemProducts;
	}
	
	//parse the cookie to get the list of productIds
	private List<Integer> parseCookieToList(Cookie cookie){
		List<Integer> productId = new ArrayList<>();
		String[] products = cookie.getValue().split("\\?");
		for(String product : products) {
			productId.add(Integer.parseInt(product.split("/")[0]));
		}
		return productId;
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
	
	
	@RequestMapping("/search")
	public String search(Product product,Map<String, Object> map, HttpSession session) {
		String name = "%" + product.getProductName().trim() + "%";
		List<Product> products = productService.searchProductsByName(name);
		List<Product> mostPopular = productService.getMostPopular();
		mostPopular = mostPopular.subList(0, 6);
		map.put("products", products);
		map.put("popular", mostPopular);
		return "product-list";
		
	}
}
