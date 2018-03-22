package com.cyan.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cyan.entity.CartItemProduct;
import com.cyan.entity.Product;


public interface CartService {
	
	public void addProductToCart(String username, Integer productId, Integer quantity);
	public List<CartItemProduct> getCartItemProducts(String username);
	public void updateCart(Integer userId, Integer productId, Integer quantity);
	void deleteCartItem(Integer userId, Integer productId);
}
