package com.cyan.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cyan.entity.Customer;
import com.cyan.entity.Department;

public interface CustomerService {

	List<Customer> retrieveAllCustomers();
	boolean insertCustomer(Customer customer);
	boolean deleteCustomer(Integer userId);
	boolean updateCustomer(Customer customer);
	boolean verify(Customer customer);
	boolean checkUsernameAvailability(Customer customer);
	Customer getCustomerByUserName(String Username);
	Customer getCustomerByUserId(Integer userId);
}
