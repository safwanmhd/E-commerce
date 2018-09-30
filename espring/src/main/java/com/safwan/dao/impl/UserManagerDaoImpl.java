package com.safwan.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import com.safwan.dao.UserManagerDao;
import com.safwan.model.Users;

public class UserManagerDaoImpl implements UserManagerDao {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Users getUser(String email) {

		Session session = this.sessionFactory.openSession();
		Criteria criteria = session.createCriteria(Users.class).add(Restrictions.eq("email", email));
		return (Users) criteria.uniqueResult();

	}

	@Override
	public void registerUser(Users user) {
		
		Session session = this.sessionFactory.openSession();
		session.save(user);
		session.close();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Users> getAllUsers() {
		Session session = this.sessionFactory.openSession();
		return session.createQuery("from Users").list();
	}

}
