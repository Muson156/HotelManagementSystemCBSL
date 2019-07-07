package com.gem.pojo;

public class Hotels {
	private int hid; //酒店编号
	private String hName; //酒店名称
	private String hAddress; //酒店地址
	private String principal; // 负责人
	private String hPhoneNumber;//电话好嘛
	private String img;//照片
	public Hotels() {
		super();
	}
	public Hotels(int hid, String hName, String hAddress, String principal, String hPhoneNumber, String img) {
		super();
		this.hid = hid;
		this.hName = hName;
		this.hAddress = hAddress;
		this.principal = principal;
		this.hPhoneNumber = hPhoneNumber;
		this.img = img;
	}
	
	/*
	 * 用于添加酒店
	 */	
	public Hotels( String hName, String hAddress, String principal, String hPhoneNumber, String img) {
		super();
		this.hName = hName;
		this.hAddress = hAddress;
		this.principal = principal;
		this.hPhoneNumber = hPhoneNumber;
		this.img = img;
	}
	
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	public String gethName() {
		return hName;
	}
	public void sethName(String hName) {
		this.hName = hName;
	}
	public String gethAddress() {
		return hAddress;
	}
	public void sethAddress(String hAddress) {
		this.hAddress = hAddress;
	}
	public String getPrincipal() {
		return principal;
	}
	public void setPrincipal(String principal) {
		this.principal = principal;
	}
	public String gethPhoneNumber() {
		return hPhoneNumber;
	}
	public void sethPhoneNumber(String hPhoneNumber) {
		this.hPhoneNumber = hPhoneNumber;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	
}
