package com.shop.beans;

public class Owner {
	private int id;
	private String oname;
	private String opassword;
	private String oadd;
	private String otel;
	
	public Owner() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOname() {
		return oname;
	}

	public void setOname(String oname) {
		this.oname = oname;
	}

	public String getOpassword() {
		return opassword;
	}

	public void setOpassword(String opassword) {
		this.opassword = opassword;
	}

	public String getOadd() {
		return oadd;
	}

	public void setOadd(String oadd) {
		this.oadd = oadd;
	}

	public String getOtel() {
		return otel;
	}

	public void setOtel(String otel) {
		this.otel = otel;
	}

	public Owner(int id, String oname, String opassword, String oadd,
			String otel) {
		super();
		this.id = id;
		this.oname = oname;
		this.opassword = opassword;
		this.oadd = oadd;
		this.otel = otel;
	}
	
	

}
