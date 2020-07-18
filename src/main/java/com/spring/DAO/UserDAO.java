
package com.spring.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.spring.Model.User;

public class UserDAO {

	private SessionFactory sessionfactory;

	public SessionFactory getSessionfactory() {
		return sessionfactory;
	}

	public void setSessionfactory(SessionFactory sessionfactory) {
		this.sessionfactory = sessionfactory;
	}

	public void CreateUser(User u) {
		Session ssn = sessionfactory.openSession();
		Transaction txn = ssn.beginTransaction();
		ssn.save(u);
		txn.commit();

	}

	public void Save_User_Food(String selected_Food_Item, int id) {
		Session ssn = sessionfactory.openSession();
		Transaction txn = ssn.beginTransaction();
		Query q = ssn.createQuery("update User set foodItem =:selected_Food_Item where uid =:id");
		q.setString("selected_Food_Item", selected_Food_Item);
		q.setInteger("id", id);
		q.executeUpdate();
		txn.commit();

	}

	public void Edit_User_Food(String Entered_New_FoodItem, int id) {
		Session ssn = sessionfactory.openSession();
		Transaction txn = ssn.beginTransaction();
		Query q = ssn.createQuery("Update User set foodItem=:Entered_New_FoodItem where uid=:id");
		q.setString("Entered_New_FoodItem", Entered_New_FoodItem);
		q.setInteger("id", id);
		q.executeUpdate();
		txn.commit();

	}

	public void Delete_User_Food(String Old_Food_Item, int id) {
		Session ssn = sessionfactory.openSession();
		Transaction txn = ssn.beginTransaction();
		Query q = ssn.createQuery("update User set foodItem=:Old_Food_Item where uid=:id");
		q.setString("Old_Food_Item", null);
		q.setInteger("id", id);
		q.executeUpdate();
		txn.commit();

	}

	public List<User> View_User_Food(int id) {
		Session ssn = sessionfactory.openSession();
		Query q = ssn.createQuery("from User where uid=:id");
		q.setInteger("id", id);
		q.uniqueResult();
		List<User> lst = q.list();
		return lst;

	}

	public List<User> LoginUser(String userName, String Password) {
		Session ssn = sessionfactory.openSession();
		Query q = ssn.createQuery("from User where uname=:userName and password=:Password");
		q.setString("userName", userName);
		q.setString("Password", Password);
		List<User> ulist = q.list();
		return ulist;

	}

	public List<User> UserList() {
		Session ssn = sessionfactory.openSession();
		Query q = ssn.createQuery("from User");
		List<User> ulist = q.list();
		return ulist;
	}

}
