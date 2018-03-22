package com.cyan.serviceimpl;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cyan.entity.CartExample;
import com.cyan.entity.CartItemProduct;
import com.cyan.entity.CartitemExample;
import com.cyan.entity.Creditcard;
import com.cyan.entity.CreditcardExample;
import com.cyan.entity.Customer;
import com.cyan.entity.OrderDetailProduct;
import com.cyan.entity.Orderdetail;
import com.cyan.entity.OrderdetailExample;
import com.cyan.entity.Orders;
import com.cyan.entity.OrdersExample;
import com.cyan.entity.Payment;
import com.cyan.entity.Product;
import com.cyan.mapper.CartMapper;
import com.cyan.mapper.CartitemMapper;
import com.cyan.mapper.CreditcardMapper;
import com.cyan.mapper.OrderDetailProductMapper;
import com.cyan.mapper.OrderdetailMapper;
import com.cyan.mapper.OrdersMapper;
import com.cyan.mapper.PaymentMapper;
import com.cyan.mapper.ProductMapper;
import com.cyan.service.OrderService;
import com.cyan.service.ProductService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrdersMapper ordersMapper;

	@Autowired
	private OrderdetailMapper orderdetailMapper;
	
	@Autowired
	private OrderdetailExample orderdetailExample;

	@Autowired
	private OrdersExample ordersExample;

	@Autowired
	private CreditcardMapper creditcardMapper;

	@Autowired
	private CreditcardExample creditcardExample;

	@Autowired
	private PaymentMapper paymentMapper;
	
	@Autowired
	private CartMapper cartMapper;
	
	@Autowired
	private CartitemMapper cartitemMapper;
	
	@Autowired
	private CartExample cartExample;
	
	@Autowired
	private CartitemExample cartitemExample;
	
	@Autowired
	private OrderDetailProductMapper orderDetailProductMapper;
	
	@Autowired
	private ProductMapper productMapper;

	@Transactional(propagation=Propagation.REQUIRED)
	public void placeOrder(Creditcard creditcard, Orders order, List<CartItemProduct> orderDetails, Customer user) {

		// 1.check credit cart
		// select * from creditcard where card_number=?
		CreditcardExample.Criteria criteria = creditcardExample.createCriteria();
		criteria.andCardNumberEqualTo(creditcard.getCardNumber());
		List<Creditcard> creditcards = creditcardMapper.selectByExample(creditcardExample);
		creditcardExample.clear();
		if (creditcards.size() > 0) {
			if (!creditcards.get(0).getUserId().equals(creditcard.getUserId())) {
				throw new RuntimeException("Credit Card already exist under other account!");
			}
			creditcard.setCardId(creditcards.get(0).getCardId());
		} else {
			creditcardMapper.insertAndGetPrimaryKey(creditcard);
		}
		
		// 2.deduct the product stock
		for(CartItemProduct detail : orderDetails) {
			Product product = productMapper.selectByPrimaryKey(detail.getProductId());
			Integer newStock = product.getStock() - detail.getQuantity();
			if(newStock < 0) throw new RuntimeException("Product understock! Please change the quantity");
			product.setStock(newStock);
			productMapper.updateByPrimaryKeySelective(product);
		}
		
	
		// 3.insert new order
		ordersMapper.insertAndGetPrimaryKey(order);

		// 4.insert order detail
		for (CartItemProduct detail : orderDetails) {
			Orderdetail record = new Orderdetail();
			record.setOrderId(order.getOrderId());
			record.setPrice(detail.getPrice());
			record.setProductId(detail.getProductId());
			record.setQuantity(detail.getQuantity());
			record.setTotal(detail.getTotal());
			orderdetailMapper.insert(record);
		}

		// 5.payment
		Payment payment = new Payment();
		payment.setCardId(creditcard.getCardId());
		payment.setOrderId(order.getOrderId());
		payment.setPaymentDate(new Date());
		paymentMapper.insert(payment);
		
		// 6.clear shopping cart
		//get cartId of the user
		CartExample.Criteria criteria2 = cartExample.createCriteria();
		criteria2.andUserIdEqualTo(user.getUserId());
		Integer cartId = cartMapper.selectByExample(cartExample).get(0).getCartId();
		cartExample.clear();
		
		//delete cartItem of the cartId
		CartitemExample.Criteria criteria3 = cartitemExample.createCriteria();
		criteria3.andCartIdEqualTo(cartId);
		cartitemMapper.deleteByExample(cartitemExample);
		cartitemExample.clear();
		
		//delete cart of the cartId
		cartMapper.deleteByPrimaryKey(cartId);

	}

	@Override
	public List<Object> getOrderHistory(Integer userId) {
		
		//1.get orders of the user
		OrdersExample.Criteria criteria = ordersExample.createCriteria();
		criteria.andUserIdEqualTo(userId);
		ordersExample.setOrderByClause("order_date DESC");
		List<Orders> orders = ordersMapper.selectByExample(ordersExample);
		ordersExample.clear();
		
		
		
		//2.loop the orders and get details from every order and make maps to hold them
		//two maps,first for orders, second for details from orders
		LinkedHashMap<Integer, Orders> ordersMap = new LinkedHashMap<>();
		LinkedHashMap<Integer, List<OrderDetailProduct>> detailsMap = new LinkedHashMap<>();
		for(Orders order : orders) {
			Integer orderId = order.getOrderId();
			ordersMap.put(orderId, order);		//put orders into the orders map
			
			//get the details list of the specific order
			List<OrderDetailProduct> details = orderDetailProductMapper.getOrderDetailProduct(orderId);
			detailsMap.put(orderId, details);	//put details into the details map
			
		}
		ArrayList<Object> res = new ArrayList<>();
		res.add(ordersMap);
		res.add(detailsMap);
		return res;
	}

}
