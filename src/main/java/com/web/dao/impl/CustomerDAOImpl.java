package com.web.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.web.interfaces.AbstractDAO;
import com.web.interfaces.CustomerDAO;
import com.web.model.Customer;


@Repository("CustomerDAO")
public class CustomerDAOImpl extends AbstractDAO<Integer, Customer> implements CustomerDAO {

	public Customer findById(int id) {
		return getByKey(id);
	}
	public void saveCustomer(Customer customer) {
		persist(customer);	
	}
	public void updateCustomerName(String name) {
		// TODO Auto-generated method stub	
	}
	@SuppressWarnings("unchecked")
	public List<Customer> findAllCustomers() {
		Criteria criteria = createEntityCriteria();
		return (List<Customer>)criteria.list();
	}
	
	public Customer findCustomerByName(String name) {
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("name", name));
		return (Customer) criteria.uniqueResult();
	}
	@Override
	public void deleteCustomerByName(String name) {
		Query query = getSession().createSQLQuery("delete from customer where name = :name");
		query.setString("name", name);
		query.executeUpdate();
	}
	
}
