package com.cyan.entity;


/*
 * This class is used to form the products information of customers' order history
 * */
public class OrderDetailProduct extends Product{

	private Integer detailId;

	private Integer orderId;

	private Integer productId;

	private Double price;

	private Integer quantity;

	private Double total;


	public Integer getDetailId() {
		return detailId;
	}


	public void setDetailId(Integer detailId) {
		this.detailId = detailId;
	}


	public Integer getOrderId() {
		return orderId;
	}


	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}


	public Integer getProductId() {
		return productId;
	}


	public void setProductId(Integer productId) {
		this.productId = productId;
	}


	public Double getPrice() {
		return price;
	}


	public void setPrice(Double price) {
		this.price = price;
	}


	public Integer getQuantity() {
		return quantity;
	}


	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}


	public Double getTotal() {
		return total;
	}


	public void setTotal(Double total) {
		this.total = total;
	}
	
}
