package com.cyan.mapper;

import com.cyan.entity.Cart;
import com.cyan.entity.Orders;
import com.cyan.entity.OrdersExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrdersMapper {

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orders
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	long countByExample(OrdersExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orders
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int deleteByExample(OrdersExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orders
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int deleteByPrimaryKey(Integer orderId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orders
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int insert(Orders record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orders
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int insertSelective(Orders record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orders
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	List<Orders> selectByExample(OrdersExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orders
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	Orders selectByPrimaryKey(Integer orderId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orders
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByExampleSelective(@Param("record") Orders record, @Param("example") OrdersExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orders
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByExample(@Param("record") Orders record, @Param("example") OrdersExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orders
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByPrimaryKeySelective(Orders record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orders
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByPrimaryKey(Orders record);

	/** Created by Sun */
	int insertAndGetPrimaryKey(Orders record);
}