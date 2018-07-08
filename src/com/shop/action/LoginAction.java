package com.shop.action;



import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.shop.beans.User;
import com.shop.hibernate.UserHibernate;

public class LoginAction extends ActionSupport{
	private static final long serialVersionUID = 2093677844704786918L;
	private User user;
	private UserHibernate userHibernate;
	private Boolean boolean1;
	
	public LoginAction() {
		// TODO Auto-generated constructor stub
		userHibernate=new UserHibernate();
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		boolean1=userHibernate.judge(user);
		if (boolean1==false) {
			return ERROR;
		}else {
			HttpSession session=ServletActionContext.getRequest().getSession();
			session.setAttribute("user", user);
			return super.execute();
		}
		
	}
}
