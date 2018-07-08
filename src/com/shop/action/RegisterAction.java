package com.shop.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.omg.CORBA.Request;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.shop.beans.User;
import com.shop.hibernate.UserHibernate;



public class RegisterAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private User user;
	private UserHibernate userHibernate;
	private int id;
	public RegisterAction() {
		// TODO Auto-generated constructor stub
		userHibernate=new UserHibernate();
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Boolean fBoolean=userHibernate.save(user);
		System.out.println(fBoolean);
		if (fBoolean==false) {
			return "error";
		}else {
			System.out.println(super.execute());
			
		    
		    HttpSession session=ServletActionContext.getRequest().getSession();
		    session.setAttribute("username", user.getUsername());
		    System.out.println("用户名"+user.getUsername());
		    
			return super.execute();
		}
		
	}

	public String update()throws Exception {
		System.out.println("update"+user.getId()+"   "+user.getUsername());
	    User user1=userHibernate.update(user);
		System.out.println("update");
		
		 HttpSession session=ServletActionContext.getRequest().getSession();
		 session.setAttribute("username", user1.getUsername());
		 System.out.println("用户名"+user1.getUsername());
		 
		 session.setAttribute("user", user1);
		
		return "update";
	}
	
	public String supdate()throws Exception {
		System.out.println("supdate"+user.getId()+"   "+user.getUsername());
		userHibernate.setId(user.getId());
	    User user1=userHibernate.update(user);
		System.out.println("supdate");
		
		HttpSession session=ServletActionContext.getRequest().getSession();
		 session.setAttribute("username", user1.getUsername());
		 System.out.println("用户名"+user1.getUsername());
		 
		 session.setAttribute("user", user1);
		 
		return "supdate";
	}

	public  String  findById(){
		 HttpSession session=ServletActionContext.getRequest().getSession();
		 String name=(String)session.getAttribute("username");
	     this.user=userHibernate.findByName(name);
	     System.out.println("sdsa"+user.getId());
	     System.out.println(user.getId()+user.getPassword()+user.getTel()+user.getUsername());
		 return "findById";
	}

	public String loginsuccess() throws Exception{
	    HttpServletRequest request=ServletActionContext.getRequest();
	    String username=request.getParameter("username");
	    System.out.println(username);
	    
	    HttpSession session=request.getSession();
	    session.setAttribute("username", username);;
	    
		this.user=userHibernate.findByName(username);
		return "loginsuccess";
	}
	
	public  String  SfindById()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		String id=request.getParameter("id");
	    this.user=userHibernate.findById(Integer.parseInt(id));
	    System.out.println("actionfindbyid"+user.getId()+user.getUsername());
		return "SfindById";
	}
	
	
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}


}
