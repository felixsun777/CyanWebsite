package com.cyan.mapper;

import com.cyan.entity.Department;
import com.cyan.entity.DepartmentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DepartmentMapper {

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table department
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	long countByExample(DepartmentExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table department
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int deleteByExample(DepartmentExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table department
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int deleteByPrimaryKey(Integer departmentId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table department
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int insert(Department record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table department
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int insertSelective(Department record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table department
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	List<Department> selectByExampleWithBLOBs(DepartmentExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table department
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	List<Department> selectByExample(DepartmentExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table department
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	Department selectByPrimaryKey(Integer departmentId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table department
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByExampleSelective(@Param("record") Department record, @Param("example") DepartmentExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table department
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByExampleWithBLOBs(@Param("record") Department record, @Param("example") DepartmentExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table department
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByExample(@Param("record") Department record, @Param("example") DepartmentExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table department
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByPrimaryKeySelective(Department record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table department
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByPrimaryKeyWithBLOBs(Department record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table department
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	int updateByPrimaryKey(Department record);
}