package com.cyan.mapper;

import com.cyan.entity.Orderdetail;
import com.cyan.entity.Review;
import com.cyan.entity.ReviewExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ReviewMapper {
    /**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	long countByExample(ReviewExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int deleteByExample(ReviewExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int deleteByPrimaryKey(Integer reviewId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int insert(Review record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int insertSelective(Review record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	List<Review> selectByExampleWithBLOBs(ReviewExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	List<Review> selectByExample(ReviewExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	Review selectByPrimaryKey(Integer reviewId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByExampleSelective(@Param("record") Review record, @Param("example") ReviewExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByExampleWithBLOBs(@Param("record") Review record, @Param("example") ReviewExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByExample(@Param("record") Review record, @Param("example") ReviewExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByPrimaryKeySelective(Review record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByPrimaryKeyWithBLOBs(Review record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table review
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByPrimaryKey(Review record);

	List<Review> selectByProductId(Integer productId);
	
}