package com.shop.hibernate;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.shop.beans.Owner;
import com.shop.beans.User;
import com.shop.util.HibernateSessionFactory;

public class OwnerHibernate {
	private static int id=0;
	private Session session;
	private Transaction transaction;
	private Boolean flag;
	
    public OwnerHibernate() {
		// TODO Auto-generated constructor stub
		session=HibernateSessionFactory.getSession();
		transaction=session.beginTransaction();
	}
	
	public Boolean save(Owner owner1){
		String hql="select oname from Owner";
		Query q = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<String > list=q.list();
		
		for (String string : list) {
			if (owner1.getOname().equals(string)) {
			    System.out.println("用户名重复");
			    id=0;
			    flag=false;
			}else {
				session.save(owner1);
				flag=true;
			}
			
		}
		
		id=owner1.getId();
		System.out.println(id);
		close();
		
		return flag;
	}
	
	public Owner findById(){
		Owner owner1=session.get(Owner.class,id);
		System.out.println("findbyid"+id);
		close();
		return owner1;
	}
	
	public Owner findById(int id2) {
		// TODO Auto-generated method stub
		String hql="from Owner where Oid=?";
		Query query=session.createQuery(hql);
		query.setString(0, Integer.toString(id2));
		@SuppressWarnings("unchecked")
		List<Owner> owners=query.list();
		Owner owner1=owners.get(0);
		System.out.println("findbyid"+id2);
		close();
		return owner1;
	}
	
	public Owner update(Owner owner){
		Owner owner1=session.get(Owner.class, id);
		owner1.setOadd(owner.getOadd());
		owner1.setOname(owner.getOname());
		owner1.setOpassword(owner.getOpassword());
		owner1.setOtel(owner.getOtel());
		close();
		return owner;
	}
	
	public boolean judge(Owner owner){
		String hql="select opassword from Owner where Oname=?";
		Query query=session.createQuery(hql);
		query.setString(0, owner.getOname());
		List<String> list=query.list();
		for (String string : list) {
			System.out.println("查到的password"+string);
			System.out.println(owner.getOpassword());
			if (owner.getOpassword().equals(string)) {
				flag=true;
				break;
			}else {
				flag=false;
			}
		}
		return flag;
	}
	
	public Owner findByName(String name){
		String hql="from Owner where Oname=?";
		Query query=session.createQuery(hql);
		query.setString(0, name);
		@SuppressWarnings("unchecked")
		List<Owner> owners=query.list();
		Owner owner1=owners.get(0);
		System.out.println("findbyname"+name);
		close();
		return owner1;
	
}
	
	
	public static int getId() {
		return id;
	}

	public void setId(int id) {
		OwnerHibernate.id = id;
	}

	public void close(){
		transaction.commit();
		session.close();
	}

}
