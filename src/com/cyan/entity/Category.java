package com.cyan.entity;

public class Category {

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column category.category_id
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	private Integer categoryId;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column category.department_id
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	private Integer departmentId;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column category.category_name
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	private String categoryName;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column category.description
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	private String description;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column category.category_id
	 * @return  the value of category.category_id
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public Integer getCategoryId() {
		return categoryId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column category.category_id
	 * @param categoryId  the value for category.category_id
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column category.department_id
	 * @return  the value of category.department_id
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public Integer getDepartmentId() {
		return departmentId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column category.department_id
	 * @param departmentId  the value for category.department_id
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column category.category_name
	 * @return  the value of category.category_name
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public String getCategoryName() {
		return categoryName;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column category.category_name
	 * @param categoryName  the value for category.category_name
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column category.description
	 * @return  the value of category.description
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column category.description
	 * @param description  the value for category.description
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public void setDescription(String description) {
		this.description = description;
	}
}