package com.web.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.interfaces.CustomerDAO;
import com.web.interfaces.CustomerService;
import com.web.model.Customer;

@Service("CustomerService")
@Transactional
public class CustomerServiceImpl implements CustomerService {
 
    @Autowired
    private CustomerDAO dao;
     
    public Customer findById(int id) {
        return dao.findById(id);
    }
 
    public void saveCustomer(Customer customer) {
        dao.saveCustomer(customer);
    }
 
    /*
     * Since the method is running with Transaction, No need to call hibernate update explicitly.
     * Just fetch the entity from db and update it with proper values within transaction.
     * It will be updated in db once transaction ends. 
     */
    public void updateCustomer(Customer customer) {
        Customer entity = dao.findById(customer.getId());
        if(entity!=null){
            entity.setName(customer.getName());
            entity.setEmail(customer.getEmail());
            entity.setPhone(customer.getPhone());
            entity.setPassword(customer.getPassword());
            entity.setConfirm(customer.getConfirm());
        }
    }
 
    public void deleteCustomerByName(String name) {
        dao.deleteCustomerByName(name);
    }
     
    public List<Customer> findAllCustomers() {
        return dao.findAllCustomers();
    }
 
    public Customer findCustomerByName(String name) {
        return dao.findCustomerByName(name);
    }
 
    public boolean isCustomerNameUnique(Integer id, String name) {
        Customer cust = findCustomerByName(name);
		return ( cust == null || ((id != null) && (cust.getId() == id)));
    }
}