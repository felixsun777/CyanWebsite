package com.cyan.service;

import java.util.LinkedHashMap;
import java.util.List;

import com.cyan.entity.CartItemProduct;
import com.cyan.entity.Creditcard;
import com.cyan.entity.Customer;
import com.cyan.entity.Orderdetail;
import com.cyan.entity.Orders;


public interface OrderService {

	public void placeOrder (Creditcard creditcard, Orders order, List<CartItemProduct> orderDetails, Customer user);
	public List<Object> getOrderHistory(Integer userId);
	
}
