package com.gem.pojo;
/**
 *    @author    
 *    @Date 2019-05-10 19:42:38    
 *
 */

import java.util.Date;

public class Goods {
// ��Ʒ��
	private int gid;
// ��Ʒ��
	private String gname;
// �۸�
	private double price;
// ͼƬ
	private String img;
// �ϼ�ʱ��
	private Date gtimeDate;
// ���
	private String leibie;
	
	
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Date getGtimeDate() {
		return gtimeDate;
	}
	public void setGtimeDate(Date gtimeDate) {
		this.gtimeDate = gtimeDate;
	}
	public String getLeibie() {
		return leibie;
	}
	public void setLeibie(String leibie) {
		this.leibie = leibie;
	}
	public Goods(int gid, String gname, double price, String img, Date gtimeDate, String leibie) {
		super();
		this.gid = gid;
		this.gname = gname;
		this.price = price;
		this.img = img;
		this.gtimeDate = gtimeDate;
		this.leibie = leibie;
	}
	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}
	
//	ʵ����ı�׼������˽�л���getter setter���������췽��
	
	
}

