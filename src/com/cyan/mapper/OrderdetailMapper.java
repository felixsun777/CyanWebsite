package com.cyan.mapper;

import com.cyan.entity.Orderdetail;
import com.cyan.entity.OrderdetailExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrderdetailMapper {
    /**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orderdetail
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	long countByExample(OrderdetailExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orderdetail
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int deleteByExample(OrderdetailExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orderdetail
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int deleteByPrimaryKey(Integer detailId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orderdetail
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int insert(Orderdetail record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orderdetail
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int insertSelective(Orderdetail record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orderdetail
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	List<Orderdetail> selectByExample(OrderdetailExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orderdetail
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	Orderdetail selectByPrimaryKey(Integer detailId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orderdetail
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByExampleSelective(@Param("record") Orderdetail record, @Param("example") OrderdetailExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orderdetail
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByExample(@Param("record") Orderdetail record, @Param("example") OrderdetailExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orderdetail
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByPrimaryKeySelective(Orderdetail record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table orderdetail
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByPrimaryKey(Orderdetail record);

	List<Orderdetail> selectByOrderId(Integer orderId);
}