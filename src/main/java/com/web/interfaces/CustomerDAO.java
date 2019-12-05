package com.web.interfaces;

import java.util.List;
import com.web.model.Customer;

public interface CustomerDAO {
	
	Customer findById(int id);
	
	void saveCustomer(Customer customer);
	
	void deleteCustomerByName(String name);
	
	List<Customer> findAllCustomers();
	
	Customer findCustomerByName(String name);

}
