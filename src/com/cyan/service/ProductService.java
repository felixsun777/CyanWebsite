package com.cyan.service;

import java.util.List;

import com.cyan.entity.Orderdetail;
import com.cyan.entity.Product;
import com.cyan.entity.Review;


public interface ProductService {

	List<Product> retrieveAllProducts();
	Product getProductById(Integer productId);
	List<Product> searchProductsByName(String productName);
	List<Product> searchProductsByDepartment(Integer departmentId);
	List<Product> searchProductsByBrand(String brand);
	List<Product> getNewArrival();
	List<Product> getMostPopular();
	List<Product> getSimilarProducts(Integer categoryId);
	boolean insertProduct(Product product);
	boolean deleteProduct(Integer productId);
	boolean updateProduct(Product product);
	List<Review> retrieveProductReviews(Integer productId);
	List<Product> getProductsByIds(List<Integer> productIds);
	List<String> getPictures(Integer productId);
	List<String> getBrands();

}
