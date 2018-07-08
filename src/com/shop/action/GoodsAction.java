package com.shop.action;

import com.opensymphony.xwork2.ActionSupport;
import com.shop.beans.Goods;
import com.shop.hibernate.GoodsHibernate;

public class GoodsAction extends ActionSupport{
	private Goods goods;
	private GoodsHibernate goodsHibernate;
	public GoodsAction() {
		// TODO Auto-generated constructor stub
		goodsHibernate=new GoodsHibernate();
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("execute");
		System.out.println(super.execute());
		System.out.println(goods.getBrand());
		goods.setPic(goods.getName());
		goodsHibernate.save(goods);
		return super.execute();
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

}
