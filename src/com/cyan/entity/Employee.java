package com.cyan.entity;

public class Employee {

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column employee.user_id
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	private Integer userId;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column employee.username
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	private String username;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column employee.password
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	private String password;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column employee.real_name
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	private String realName;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column employee.user_id
	 * @return  the value of employee.user_id
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public Integer getUserId() {
		return userId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column employee.user_id
	 * @param userId  the value for employee.user_id
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column employee.username
	 * @return  the value of employee.username
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column employee.username
	 * @param username  the value for employee.username
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column employee.password
	 * @return  the value of employee.password
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column employee.password
	 * @param password  the value for employee.password
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column employee.real_name
	 * @return  the value of employee.real_name
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public String getRealName() {
		return realName;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column employee.real_name
	 * @param realName  the value for employee.real_name
	 * @mbg.generated  Sun Feb 25 20:23:27 EST 2018
	 */
	public void setRealName(String realName) {
		this.realName = realName;
	}
}