package com.shop.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.shop.beans.Owner;
import com.shop.beans.User;
import com.shop.hibernate.OwnerHibernate;


public class ORegisterAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private Owner owner;
	private OwnerHibernate ownerHibernate;
	
	public ORegisterAction() {
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
		System.out.println("execute");
		System.out.println(super.execute());
		Boolean boolean1=ownerHibernate.save(owner);
		if (boolean1==false) {
			return "error";
		}else {
			HttpSession session=ServletActionContext.getRequest().getSession();
		    session.setAttribute("oname", owner.getOname());
		    System.out.println("用户名"+owner.getOname());
			return super.execute();
		}
		
	}
	
	public String update()throws Exception {
	    Owner owner1=ownerHibernate.update(owner);
		System.out.println("update");
		
		HttpSession session=ServletActionContext.getRequest().getSession();
		 session.setAttribute("oname", owner1.getOname());
		 System.out.println("用户名"+owner1.getOname());
		 
		 session.setAttribute("owner", owner);
		
		return "update";
	}

	public String supdate()throws Exception {
		System.out.println("supdate"+owner.getId()+owner.getOname()+owner.getOpassword()+owner.getOtel()+owner.getOadd());
		ownerHibernate.setId(owner.getId());
	    
	    Owner owner1=ownerHibernate.update(owner);
	    
	     HttpSession session=ServletActionContext.getRequest().getSession();
		 session.setAttribute("oname", owner1.getOname());
		 session.setAttribute("id", owner1.getId());
		 System.out.println("用户名"+owner1.getOname());
		 
		 
		 session.setAttribute("owner", owner1);
	    
		System.out.println("supdate");
		return "supdate";
	}
	
	public  String  findById()throws Exception{
	    
	    this.owner=ownerHibernate.findById();
	    System.out.println("findbyid"+owner.getId()+owner.getOname()+owner.getOpassword());
		return "findById";
	}
	
	 public String ologinsuccess(){
		    HttpServletRequest request=ServletActionContext.getRequest();
		    String oname=request.getParameter("oname");
		    System.out.println(oname);
			this.owner=ownerHibernate.findByName(oname);
			
			HttpSession session=ServletActionContext.getRequest().getSession();
			session.setAttribute("owner", owner);
			session.setAttribute("id",owner.getId());
			
			return "ologinsuccess";
	}
	
	public  String  SfindById()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		String id=request.getParameter("id");
	    this.owner=ownerHibernate.findById(Integer.parseInt(id));
	    System.out.println("sfindbyid"+owner.getId()+owner.getOname()+owner.getOpassword()+owner.getOtel()+owner.getOadd());
		return "SfindById";
	}

}
