package com.spring.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.spring.Model.UserFood;

public class UserFoodDAO {

	private SessionFactory sessionfactory;

	public SessionFactory getSessionfactory() {
		return sessionfactory;
	}

	public void setSessionfactory(SessionFactory sessionfactory) {
		this.sessionfactory = sessionfactory;
	}

	public void insertUserFood(int id, String fname) {
		Session ssn = sessionfactory.openSession();
		Transaction txn = ssn.beginTransaction();
		UserFood uf = new UserFood(id, fname);
		ssn.save(uf);
		txn.commit();

	}

}