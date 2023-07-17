package com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.model.User;

@Repository
public class UserDao {
	
	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
	public void insertUser(User u) {
		this.hibernateTemplate.saveOrUpdate(u);
		
	}	
	public List<User> getAllUser() {
		return this.hibernateTemplate.loadAll(User.class);
	}
	
	
	
}
