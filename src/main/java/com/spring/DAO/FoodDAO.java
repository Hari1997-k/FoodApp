
package com.spring.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.spring.Model.Food;

public class FoodDAO {

	private SessionFactory sessionfactory;

	public SessionFactory getSessionfactory() {
		return sessionfactory;
	}

	public void setSessionfactory(SessionFactory sessionfactory) {
		this.sessionfactory = sessionfactory;
	}

	public void AddFood(Food food) {
		Session ssn = sessionfactory.openSession();
		Transaction txn = ssn.beginTransaction();

		ssn.beginTransaction();
		ssn.save(food);
		txn.commit();

	}

	public List<Food> View_FoodItems() {
		Session ssn = sessionfactory.openSession();
		Transaction txn = ssn.beginTransaction();

		Query q = ssn.createQuery("from Food");
		List<Food> flist = q.list();
		return flist;
	}

}
