package com.shop.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.shop.beans.Owner;
import com.shop.beans.User;
import com.shop.hibernate.OwnerHibernate;
import com.shop.hibernate.UserHibernate;

public class OLoginAction extends ActionSupport{
	private Owner owner;
	private OwnerHibernate ownerHibernate;
	private Boolean boolean1;
	
	public OLoginAction() {
		// TODO Auto-generated constructor stub
		ownerHibernate=new OwnerHibernate();
	}



	public Owner getOwner() {
		return owner;
	}

	public void setOwner(Owner owner) {
		this.owner = owner;
	}

	
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		boolean1=ownerHibernate.judge(owner);
		if (boolean1==false) {
			return ERROR;
		}else {
			HttpSession session=ServletActionContext.getRequest().getSession();
			session.setAttribute("owner", owner);
			session.setAttribute("id",owner.getId());
			System.out.println("111111111111");
			System.out.println(owner.getId());
			System.out.println("1111111111111");
			System.out.println(super.execute());
			return super.execute();
		}
		
	}
}
