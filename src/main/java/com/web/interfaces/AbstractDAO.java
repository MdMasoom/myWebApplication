package com.web.interfaces;

import java.io.Serializable;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
//import org.hibernate.usertype.ParameterizedType;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class AbstractDAO<PK extends Serializable, T> {
	
	private final Class<T> persistentClass;
	@SuppressWarnings("unchecked")
	public AbstractDAO(){
		this.persistentClass = (Class<T>) this.getClass().getGenericSuperclass();
	}
	@Autowired
	private SessionFactory sessionFactory;
	protected Session getSession() {
		return sessionFactory.getCurrentSession();
    }
    @SuppressWarnings("unchecked")
	public  T getByKey(PK key) {
        return (T) getSession().get(persistentClass, key);
    }
 
    public void persist(T entity) {
        getSession().persist(entity);
    }
 
    public void delete(T entity) {
        getSession().delete(entity);
    }
     
    protected Criteria createEntityCriteria(){
        return getSession().createCriteria(persistentClass);
    }
}
