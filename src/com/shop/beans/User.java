package com.shop.beans;

public class User {
	
	private int id;
	private String username;
	private String password;
	private String truthname;
	private String tel;
	
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int id, String username, String password, String truthname,
			String tel) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.truthname = truthname;
		this.tel = tel;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTruthname() {
		return truthname;
	}
	public void setTruthname(String truthname) {
		this.truthname = truthname;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}

	
	
}
