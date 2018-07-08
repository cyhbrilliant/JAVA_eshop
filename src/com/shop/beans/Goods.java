package com.shop.beans;

public class Goods {
	private int id;
	private String name;
	private String brand;
	private double price;
	private String pic;
	private String description;
	private int oid;
	private int count;
	private String type;
	
	
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public Goods() {
		// TODO Auto-generated constructor stub
	}
	public Goods(int id, String name, String brand, double price, String pic,
			String description, int oid, String type) {
		super();
		this.id = id;
		this.name = name;
		this.brand = brand;
		this.price = price;
		this.pic = pic;
		this.description = description;
		this.oid = oid;
		this.type = type;
	}
	
	

}
