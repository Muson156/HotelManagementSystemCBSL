package com.gem.pojo;

public class User {
	private int uid;//id
	private String uName;//姓名
	private String username;//用户名
	private String password;//密码
	private String email;//邮箱
	private String uPhoneNumber;//手机号
	
	public User() {
		super();
	}

	public User(int uid, String uName, String username, String password, String email, String uPhoneNumber) {
		super();
		this.uid = uid;
		this.uName = uName;
		this.username = username;
		this.password = password;
		this.email = email;
		this.uPhoneNumber = uPhoneNumber;
	}

	/* 注册用 */
	public User(String uName, String username, String password, String email, String uPhoneNumber) {
		super();
		this.uName = uName;
		this.username = username;
		this.password = password;
		this.email = email;
		this.uPhoneNumber = uPhoneNumber;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getuPhoneNumber() {
		return uPhoneNumber;
	}

	public void setuPhoneNumber(String uPhoneNumber) {
		this.uPhoneNumber = uPhoneNumber;
	}
	
	
	
}
