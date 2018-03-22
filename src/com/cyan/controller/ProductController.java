package com.cyan.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cyan.entity.CartItemProduct;
import com.cyan.entity.Category;
import com.cyan.entity.Customer;
import com.cyan.entity.Department;
import com.cyan.entity.Orders;
import com.cyan.entity.PictureExample;
import com.cyan.entity.Orderdetail;
import com.cyan.entity.Product;
import com.cyan.entity.Review;
import com.cyan.service.CartService;
import com.cyan.service.DepartmentService;
import com.cyan.service.ProductService;
import com.cyan.service.ReviewService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private ReviewService reviewService;
	
	
	@RequestMapping("/productDetail/{productId}")
	public String productDetailPage(@PathVariable Integer productId, Map<String, Object> map, HttpServletRequest request, HttpSession session) {
		Product product = productService.getProductById(productId);
		List<Product> mostPopular = productService.getMostPopular();
		List<Product> similarProducts = productService.getSimilarProducts(product.getCategoryId());
		List<Review> reviews = reviewService.getReviewsByProduct(productId);
		long reviewCount = reviews.stream().count();
		List<String> pictures = productService.getPictures(productId);
		mostPopular = mostPopular.subList(0, 10);
		if(similarProducts.size()>6) {
			similarProducts = similarProducts.subList(0, 6);
		}
		map.put("product", product);
		map.put("popular", mostPopular);
		map.put("similar", similarProducts);
		map.put("reviews", reviews);
		map.put("reviewCount", reviewCount);
		map.put("pictures", pictures);
		//update the newly set cookie cart information to session and display on page
		if(session.getAttribute("user") == null) {
			Cookie[] cookies = request.getCookies();
			if(cookies!=null) {
				for(Cookie cookie : cookies) {
					if(cookie.getName().equals("cart")) {
						if(!cookie.getValue().equals("")) {
							List<Integer> productIds = parseCookie(cookie);
							Map<Integer,Integer> productQuantity = parseCookie2(cookie);
							List<Product> productsInfo = productService.getProductsByIds(productIds);
							List<CartItemProduct> cartItems = createCartList(productsInfo,productQuantity);
							Double cartTotal = cartItems.stream().mapToDouble(CartItemProduct::getTotal).reduce((x,y) -> x+y).getAsDouble();
							session.setAttribute("cart", cartItems);
							session.setAttribute("cartsize", cartItems.size());
							session.setAttribute("carttotal", cartTotal);
						}
					}
				}
			}
		}
		return "product-detail";
	}
	
	
	@RequestMapping("/productListByDepartment/{departmentId}")
	public String productListByDepartment(@PathVariable Integer departmentId, Map<String, Object> map, HttpServletRequest request, HttpSession session) {
		List<Product> products = productService.searchProductsByDepartment(departmentId);
		List<Product> mostPopular = productService.getMostPopular();
		mostPopular = mostPopular.subList(0, 10);
		map.put("products", products);
		map.put("popular", mostPopular);
		return "product-list";
	}
	
	
	@RequestMapping("/productListByBrand/{brand}")
	public String productListByBrand(@PathVariable String brand, Map<String, Object> map, HttpServletRequest request, HttpSession session) {
		List<Product> products = productService.searchProductsByBrand(brand);
		List<Product> mostPopular = productService.getMostPopular();
		mostPopular = mostPopular.subList(0, 10);
		map.put("products", products);
		map.put("popular", mostPopular);
		return "product-list";
	}
	
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
	
	private List<Integer> parseCookie(Cookie cookie){
		List<Integer> productId = new ArrayList<>();
		String[] products = cookie.getValue().split("\\?");
		for(String product : products) {
			productId.add(Integer.parseInt(product.split("/")[0]));
		}
		return productId;
	}
	
	private Map<Integer,Integer> parseCookie2(Cookie cookie){
		Map<Integer,Integer> productQuantity = new HashMap<>();
		String[] products = cookie.getValue().split("\\?");
		for(String product : products) {
			Integer productId = Integer.parseInt(product.split("/")[0]);
			Integer quantity = Integer.parseInt(product.split("/")[1]);
			productQuantity.put(productId,quantity);
		}
		return productQuantity;
	}
	
}
