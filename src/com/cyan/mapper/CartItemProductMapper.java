package com.cyan.mapper;

import java.util.List;

import com.cyan.entity.CartItemProduct;

public interface CartItemProductMapper {
	List<CartItemProduct> getCustomerCartProducts(Integer userId);
}
