package com.shop.hibernate;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.shop.beans.Goods;
import com.shop.beans.User;
import com.shop.util.HibernateSessionFactory;
import com.sun.xml.txw2.TXW;

public class GoodsHibernate {
	private static int id=0;
	private Session session;
	private Transaction transaction;
	
	public GoodsHibernate() {
		// TODO Auto-generated constructor stub
		session=HibernateSessionFactory.getSession();
		transaction=session.beginTransaction();
	}
	
	public void save(Goods goods){
		session.save(goods);
		id=goods.getId();
	    close();
	}
	
	public List<Goods> findGoods(String type){
		String hql="from Goods where type=?";
		Query query=session.createQuery(hql);
		query.setString(0, type);
		@SuppressWarnings("unchecked")
		List<Goods> goods=query.list();
		for (Goods goods2 : goods) {
			System.out.println(goods2.getName()+goods2.getBrand()+goods2.getPic()+goods2.getDescription()+goods2.getPic());
		}
		return goods;
	}
	
	public List<Goods> findGoodsByOid(int oid){
		String hql="from Goods where oid=?";
		Query query=session.createQuery(hql);
		query.setString(0, Integer.toString(oid));
		@SuppressWarnings("unchecked")
		List<Goods> goods=query.list();
		for (Goods goods2 : goods) {
			System.out.println(goods2.getName()+goods2.getBrand()+goods2.getPic()+goods2.getDescription()+goods2.getPic());
		}
		return goods;
	}
	
	public List<Goods> findAllGoods(){
		String hql="from Goods";
		Query query=session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Goods> goods=query.list();
		for (Goods goods2 : goods) {
			System.out.println(goods2.getName()+goods2.getBrand()+goods2.getPic()+goods2.getDescription()+goods2.getPic());
		}
		return goods;
	}
	
	public void close(){
		transaction.commit();
		session.close();
	}

	public Session getSession() {
		return session;
	}

	public void setSession(Session session) {
		this.session = session;
	}

	public Transaction getTransaction() {
		return transaction;
	}

	public void setTransaction(Transaction transaction) {
		this.transaction = transaction;
	}
	
	public Boolean updateCount(int id){
		System.out.println("updatecount"+id);
		String hqls="from Goods where id=?";
		Query query=session.createQuery(hqls);
		query.setString(0, Integer.toString(id));
		List<Goods> list=query.list();
		int count=list.get(0).getCount();
		System.out.println("当前数量"+count);
		if (count<=0) {
			return false;
		}else {
			Goods goods=session.get(Goods.class, id);
			goods.setCount(count-1);
			close();
			return true;
		}
		
//		String hql="update Goods set count=?";
//		Query query1=session.createQuery(hql);
//		query1.setString(0, Integer.toString(count-1));
//		query.executeUpdate();
		
		
	}
	
	public void delete(int id){
		Goods goods=session.get(Goods.class, id);
		session.delete(goods);
		transaction.commit();
	}
	
	
}
