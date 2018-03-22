package com.cyan.serviceimpl;

import static org.hamcrest.CoreMatchers.nullValue;

import java.util.List;

import javax.smartcardio.Card;

import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.cyan.entity.Cart;
import com.cyan.entity.CartExample;
import com.cyan.entity.CartItemProduct;
import com.cyan.entity.Cartitem;
import com.cyan.entity.CartitemExample;
import com.cyan.entity.CustomerExample;
import com.cyan.entity.Product;
import com.cyan.entity.ProductExample;
import com.cyan.mapper.CartItemProductMapper;
import com.cyan.mapper.CartMapper;
import com.cyan.mapper.CartitemMapper;
import com.cyan.mapper.CustomerMapper;
import com.cyan.mapper.ProductMapper;
import com.cyan.service.CartService;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartMapper cartMapper;

	@Autowired
	private CartitemMapper cartitemMapper;

	@Autowired
	private CartExample cartExample;

	@Autowired
	private ProductMapper productMapper;

	@Autowired
	private Cartitem item;

	@Autowired
	private CustomerMapper customerMapper;

	@Autowired
	private CustomerExample customerExample;

	@Autowired
	private CartitemExample cartitemExample;

	@Autowired
	private CartItemProductMapper cartItemProductMapper;
	

	@Override
	@Transactional
	public void addProductToCart(String username, Integer productId, Integer quantity) {

		Integer cartId = null;
		Double total = 0.0;
		Double price = 0.0;
		Cart cart = null;

		// 1.get userId
		// select * from customer where username=?;
		CustomerExample.Criteria customCriteria = customerExample.createCriteria();
		customCriteria.andUsernameEqualTo(username);
		Integer userId = customerMapper.selectByExample(customerExample).get(0).getUserId();
		customerExample.clear();

		// 2.check if the user has shopping cart
		// select * from cart where user_id=?;
		CartExample.Criteria cartCriteria = cartExample.createCriteria();
		cartCriteria.andUserIdEqualTo(userId);
		List<Cart> carts = cartMapper.selectByExample(cartExample);

		cartExample.clear();
		if (carts.size() > 0) {
			cart = carts.get(0);
			cartId = cart.getCartId();
		} else {
			// if no shopping cart, add it to the user and return the cart_id
			// insert into cart set user_id=?;
			// get cart_id
			cart = new Cart();
			cart.setUserId(userId);
			cartMapper.insertAndGetPrimaryKey(cart);
			cartId = cart.getCartId();
		}

		// 3.get the product price, use the quantity and price to calculate the total
		// amount,
		// select price from product where productId=?
		// int total = price * quantity;
		Product product = productMapper.selectByPrimaryKey(productId);
		price = product.getPrice();
		total = price * quantity;

		// 4.check if the product already exist in the cartItem
		// select * from cartItem where cartId=? and productId=?
		CartitemExample.Criteria cartitemcCriteria = cartitemExample.createCriteria();
		cartitemcCriteria.andCartIdEqualTo(cartId).andProductIdEqualTo(productId);
		List<Cartitem> items = cartitemMapper.selectByExample(cartitemExample);
		cartitemExample.clear();

		if (items.size() > 0) {
			// if yes, just update the quantity
			Cartitem item = items.get(0);
			Integer quantityTable = quantity + item.getQuantity();
			Double totalTable = total + item.getTotal();
			item.setQuantity(quantityTable);
			item.setTotal(totalTable);
			cartitemMapper.updateByPrimaryKey(item);

		} else {
			// insert all the data into cartItem table
			// insert into cartItem set (cart_id=? , product_id=? , price=? , quantity=? ,
			// total=?);
			item.setCartId(cartId);
			item.setProductId(productId);
			item.setPrice(price);
			item.setQuantity(quantity);
			item.setTotal(total);
			cartitemMapper.insert(item);

		}

		// 5.update the cart total amount
		// update cart set (sum=sum+total) where cart_id=?;
		Double sum = 0.0;
		if (cart.getCartSum() != null)
			sum = cart.getCartSum();
		cart.setCartSum(sum + total);
		cartMapper.updateByPrimaryKey(cart);

	}

	@Transactional
	@Override
	public void updateCart(Integer userId, Integer productId, Integer quantity) {

		// 1.get the cart of the user and remember the total amount
		CartExample.Criteria criteria = cartExample.createCriteria();
		criteria.andUserIdEqualTo(userId);
		Cart cart = cartMapper.selectByExample(cartExample).get(0);
		cartExample.clear();
		Double oldCartSum = cart.getCartSum();

		// 2.get the cart item amount and remember it
		CartitemExample.Criteria criteria2 = cartitemExample.createCriteria();
		criteria2.andCartIdEqualTo(cart.getCartId());
		criteria2.andProductIdEqualTo(productId);
		Cartitem cartitem = cartitemMapper.selectByExample(cartitemExample).get(0);
		cartitemExample.clear();
		Double oldTotal = cartitem.getTotal();
		Double price = cartitem.getPrice();
		Integer oldQuantity = cartitem.getQuantity();

		// 3.update the cart item quantity and new total amount
		Double newTotal = null;
		if (quantity < oldQuantity) {
			newTotal = oldTotal - price * (oldQuantity - quantity);
		} else {
			newTotal = oldTotal + price * (quantity - oldQuantity);
		}
		cartitem.setQuantity(quantity);
		cartitem.setTotal(newTotal);
		cartitemMapper.updateByPrimaryKeySelective(cartitem);
		Double differ = newTotal - oldTotal;

		// 4.calculate the deduction and get the new cart item amount
		Double newCartSum = oldCartSum + differ;

		// 5.deduct the cart total amount and update it to the db
		cart.setCartSum(newCartSum);
		cartMapper.updateByPrimaryKeySelective(cart);

	}

	@Transactional
	@Override
	public void deleteCartItem(Integer userId, Integer productId) {

		// 1.get the cart of the user and remember the total amount
		CartExample.Criteria criteria = cartExample.createCriteria();
		criteria.andUserIdEqualTo(userId);
		Cart cart = cartMapper.selectByExample(cartExample).get(0);
		cartExample.clear();
		Double oldCartSum = cart.getCartSum();

		// 2.get the cart item amount and remember it
		CartitemExample.Criteria criteria2 = cartitemExample.createCriteria();
		criteria2.andCartIdEqualTo(cart.getCartId());
		criteria2.andProductIdEqualTo(productId);
		Cartitem cartitem = cartitemMapper.selectByExample(cartitemExample).get(0);
		cartitemExample.clear();
		Double oldTotal = cartitem.getTotal();
		

		// 3.delete the cart item
		cartitemMapper.deleteByPrimaryKey(cartitem.getItemId());
		

		// 4.calculate the deduction and get the new cart item amount
		Double newCartSum = oldCartSum - oldTotal;

		// 5.deduct the cart total amount and update it to the db
		cart.setCartSum(newCartSum);
		cartMapper.updateByPrimaryKeySelective(cart);

	}

	@Override
	public List<CartItemProduct> getCartItemProducts(String username) {

		// 1.get userId
		// select * from customer where username=?;
		CustomerExample.Criteria customCriteria = customerExample.createCriteria();
		customCriteria.andUsernameEqualTo(username);
		Integer userId = customerMapper.selectByExample(customerExample).get(0).getUserId();
		customerExample.clear();

		// 2.get cart products list
		return cartItemProductMapper.getCustomerCartProducts(userId);
	}

}
