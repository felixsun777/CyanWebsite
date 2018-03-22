package com.cyan.mapper;

import java.util.List;
import com.cyan.entity.OrderDetailProduct;

public interface OrderDetailProductMapper {

	public List<OrderDetailProduct> getOrderDetailProduct(Integer OrderId);
	
}
