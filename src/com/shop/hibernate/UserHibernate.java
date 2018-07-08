package com.shop.hibernate;



import java.io.PrintWriter;
import java.util.List;

import javax.mail.Flags.Flag;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.shop.beans.User;
import com.shop.util.HibernateSessionFactory;

public class UserHibernate {
	private static int id=0;
	private Session session;
	private Transaction transaction;
	private boolean flag;
	
	public UserHibernate() {
		session=HibernateSessionFactory.getSession();
		transaction=session.beginTransaction();
	}
	
	public boolean save(User user1){
		System.out.println(user1.getId()+"user"+user1.getUsername());
		String hql="select username from User";
		Query q = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<String > list=q.list();
		

		for (String string : list) {
			if (user1.getUsername().equals(string)) {
			    System.out.println("用户名重复");
			    id=0;
			    flag=false;
			    break;
			}else {
				session.save(user1);
				id=user1.getId();
				System.out.println("session"+id);
				flag=true;
			}
			
		}
		close();
		return flag;
	}
	
	 public User findById(){
		
			User user1=session.get(User.class,id);
			System.out.println("findbyid"+id);

			
			return user1;
		
	}
	
	
	public User update(User user){
			
			User user1=session.get(User.class, id);
			user1.setUsername(user.getUsername());
			user1.setPassword(user.getPassword());
			user1.setTruthname(user.getTruthname());
			user1.setTel(user.getTel());
			close();
			return user1;

	}
	
	public static int getId() {
		return id;
	}

	public void setId(int id) {
		UserHibernate.id = id;
	}

	public boolean judge(User user){
		String hql="select password from User where Username=?";
		Query query=session.createQuery(hql);
		query.setString(0, user.getUsername());
		List<String> list=query.list();
		for (String string : list) {
			if (user.getPassword().equals(string)) {
				flag=true;
				break;
			}else {
				flag=false;
			}
		}
		return flag;
	}
	
	public void close(){
		transaction.commit();
		
	}

	public User findByName(String name){
		String hql="from User where Username=?";
		Query query=session.createQuery(hql);
		query.setString(0, name);
		@SuppressWarnings("unchecked")
		List<User> users=query.list();
		User user1=users.get(0);
		System.out.println("findbyname"+name);
		System.out.println(user1.getId()+"user"+user1.getUsername());
		return user1;
	
}

	public User findById(int id2) {
		// TODO Auto-generated method stub
		String hql="from User where Uid=?";
		Query query=session.createQuery(hql);
		query.setString(0, Integer.toString(id2));
		@SuppressWarnings("unchecked")
		List<User> users=query.list();
		User user1=users.get(0);
		System.out.println("findbyid"+id2);
		System.out.println(user1.getId()+"user"+user1.getUsername());
		return user1;
	}
	
}
